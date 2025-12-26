Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA92AD20
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766759634; cv=none; b=n7bE0bkrKaXGX48qpa8dbIE8TQR47hJFBTWU/0qdx7bBAVnWWYleNB4BkKbd9/cBIjYLfITShY/GVzTKSFcAIoBrb9WRia/KZZGr7DW5Gl2Zz/yWMqIEkgKspvGtYIsGVoukdvgQfGpGew38OO5nB+pn2wq6MUDI0lP7HDAm1eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766759634; c=relaxed/simple;
	bh=OEFQ3elbGW9TiW8L4OEoiU7zyTa3jQPx6GxB++3iSBc=;
	h=To:Subject:From:Message-Id:Date; b=c00hGYCuq8J8ljW2O6u/KTTIQxu+iNG6a+kbWgW6S3xcifMunA4ukzGQAaYa/ri24Gu121hkKji+itv2Z48SIVrixkqQTV3j3JiHYi1864VYVJwmALa0M3LgDLo8sKmPwPnrtyEMxlZBpDxtIUxatkqWvpDxXoM9haRNX/E3XVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhFzZ0Uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhFzZ0Uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE306C116C6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766759633;
	bh=OEFQ3elbGW9TiW8L4OEoiU7zyTa3jQPx6GxB++3iSBc=;
	h=To:Subject:From:Date:From;
	b=JhFzZ0Uc83BkH/h6laZbyC8gZy54Ls+pkqr0eowUHzUu4yvTFoKDNfUP+jOO/M6o6
	 uiK47YUwH3B/3WthtjIlzxlS5s9FUJjLG+vZvGgaOsF30r+l5SBh7ubgilR65iq22x
	 8WzUjiDrPt1mNLbkGdyJpVdpR9px57o/4t9ddgH7sU9EbFq+ZrsvNp99+r9ieB2oha
	 M5uazgEzIjbISXXPVTD6TNjPa1F6/s3hnTCAggokzWPO+r62o101OKWjrK7ogrslHP
	 +kZ3hfvS4JFl1KkYtUAOyO/fG2uA0G5vdZ90rB2DCTvTUkdYAhCKvM6o9dxzltKscz
	 ryfEMQUmmmM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5BDE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675963359.17508.2946524072713004167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005a8429cb70f50d341bf1bd612debcd753b4300cb39b97e53cb83b8eaa39fdb
Date: Fri, 26 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766759633
