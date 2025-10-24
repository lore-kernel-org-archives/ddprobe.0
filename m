Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138511D6AA
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761305394; cv=none; b=INqO9r0cyLTpCPIFwHNSl7BUXJfXM7rAD2JwBeldHGICl6VcwZ5FakMVEe0zVXWtZW2KOOmimm34W9l5QETEWedyS1gwLABuMrNiF+9p7CThhvn7hFVfOEkGeze2Yvt9Ca2NPXHKg1oo84moR4zosJ9HaZrYwNye+6NiqfICvAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761305394; c=relaxed/simple;
	bh=KSrQ6vAQDVoJkCOyc2ZO6yqR2Z86Kx7JtdVsEit+/YY=;
	h=To:Subject:From:Message-Id:Date; b=lhi0KEoj7yth996F78GA2/wYJfW2dlv4X3s/UQjW+RSGKhInElQyH+q6EXocXX1c3t2WFFL8ajs83FPVofWCSSebuEkWHOiHyeuqtPosyPKEl18OGQgmixyRUKSukPDrNTK3TPz1OMktZb2CEfSi9Pj/7Wv+xpuwubFfMCVBqGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dslB4La6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dslB4La6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3716C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761305393;
	bh=KSrQ6vAQDVoJkCOyc2ZO6yqR2Z86Kx7JtdVsEit+/YY=;
	h=To:Subject:From:Date:From;
	b=dslB4La6Ic5wrtryw7IBHdeh56fVfHoq/R57wDRfxybJypeoYk19bWkYq00YL0h6c
	 17ywgdbzBlxJO47tqIXKW/tEx92J2N8JXo1RIZLQK5tQb/TmJ0IlnD4mWls6kvFbic
	 /KJvnnv50pmhe7j0xDnWP1NKirsa+RiWdZ0U+jV1qZKjn/pibbthA9cILadL4mHxrO
	 VOXN0LkTug/C6wcAQYtpCZZUR7kQ1yxee1USMWPebVh3rAhUtibBXjnmExy4ozoJVB
	 vCh1Ccj62h1mlVqgP2UUcjw1iCG0PpK1Ui+DzpOMcPa4zazBEol2KWSZtpWseksRKF
	 HQZ9L32vdiWHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90750CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130539358.10576.10105722888731809022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f596dd6b01b8d39279232ebc30783fe9f16df2faf833ece3ea58042236ec074c
Date: Fri, 24 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761305393
