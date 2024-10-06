Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBA013E898
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728219354; cv=none; b=gmF+6NOwcgeUdWIawP5rHuT/evmt/JuNVD2Gd77C1bJw/9WVnPtB8xFtIYjJD9k5JWsGVOBHsvkPq+IhF+m+ttD9A++Hv7O+iQmZw6S2dkBqDIfUGqRkM5L0cu3/Ot7OjRamVXB9z126cyPMMxzyCp4ItIs4uuZJJsnDbgXfL3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728219354; c=relaxed/simple;
	bh=g/1A987NBQ1bGiB1UmUscS4O3Gq8jsFOGV0svINPDQ8=;
	h=To:Subject:From:Message-Id:Date; b=I57dM6EYZBa3O2peweRSaYsol5l40mWVAXs7b92BepyFlasyM/AV/KbWIPRDv5RGSVwwku7PJ8mUANyTfnJF9ZWcNaWKrRdnbKy8YzfN3uBv6mzHQSLBAqQ1HoAqbiLkS60rCoNFKkQDTfon0Nc9ohdhGEKW5LI9On3cVCvUCmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHtxNoA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHtxNoA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DFEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728219353;
	bh=g/1A987NBQ1bGiB1UmUscS4O3Gq8jsFOGV0svINPDQ8=;
	h=To:Subject:From:Date:From;
	b=cHtxNoA1//J0fglbNz6NWTfHbefRJh+xWbeaUeJYoqXK5BIDHB/x/1HvxeQ6N6z8D
	 qIQ5fxQFYkZ0Yuj+mBOQ7AS2NlzHix8gJefgUkgxVfer9juHpJq+AqlaIQrwtRlq71
	 GFPKFGslTNzz0d5DolJoWItmFg0H0eCem9drY+292m56XZtroG8AvJTj9fQRwE2rTj
	 nweIps/7ftVDR7hoA0LmJeibbavu+LsGgFiizAHJZoZx3K01jCX0V60MyMq0cSyecO
	 MDiZLDG75JBzRMR5I8OAtfZlvTSngSThdpazO53BFj4EKXMtOnT4gR6yqIP4MS+6Xt
	 MGJdBG0EYPJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38D9CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821935363.9031.4397776378556159878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca68fc66e81662b1e3aeeb9334d389fc8105e775ce85631040d53a8d9113c871
Date: Sun, 06 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728219353
