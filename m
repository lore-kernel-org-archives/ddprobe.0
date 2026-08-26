Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218CA328B75
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787761834; cv=none; b=i0L04j7Uz2O5OguDBffMvwv2J4DovEfrk+GmEiCjFbJCvxRgdh4uSRp4ZQIkect5UfsA+LmsHoLYyFMj3D3bGHsUErwuBu9rotZB602AsqjdX20aMJFtYGigN5q4GQvRS3hq6pfdvHRwwL8cSwS0YefU+pITg4geMmSQBx+NIXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787761834; c=relaxed/simple;
	bh=2iUe1MCp2AMKmRGQGrYaL8uO/GkEFzTIOiXHS0SCwPk=;
	h=To:Subject:From:Message-Id:Date; b=NypjH1/BjykGsAH6tvnZH53nG+fQq+jI8aYQiSstH8mjcGDljnZHoaxMDtlQkBZXlblU14Jd+kET1eBjj3IWMSeYQf6q8c7b/cubwuVbYqkJdo7SlH19KWVcBPVo1nZNcT8nWK5FeEKBUD7i1j7m2gnP6NCSmWqtVC4d88PkJwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL6rRjea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL6rRjea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1F5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787761833;
	bh=2iUe1MCp2AMKmRGQGrYaL8uO/GkEFzTIOiXHS0SCwPk=;
	h=To:Subject:From:Date:From;
	b=gL6rRjeaasDpsBW1aK7a4cPuWczekIOn1y4ozhRd6XHR0Sa0up6zHuVVI3wQxIzgF
	 R+VgJgVAk0oDxHR1kXg472wAx/2SlwGq9AyyoPVsxqogsR/71sc7DZI8W160Nd/PjE
	 3BhSKgW749mCqYVH0lsvnoJDFgd93+7aD08D307hcGpklfaiS2R+D3V2O+S1FAPKMP
	 3RWgxqKXiYrbfQc7L80EhB90AnsOc5y0ynoZFwvrUj8sWhS2PfVx+Ufk0K/8scHa6v
	 8A1ys4TOiF0xL0y1nKiFzabu9ElwUXJ8BvMwp65IYCOmuZE4zNEWJ23LUjr6F4Il1Y
	 E9zAYkB+m+VbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD0C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776183369.23708.5355881933504182894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e28bc9af60e00a157c8468a79d0d5a906841ea1defd952376bf4f673e78edf
Date: Wed, 26 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787761833
