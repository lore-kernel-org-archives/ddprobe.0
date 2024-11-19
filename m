Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4A01CCB35
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732030554; cv=none; b=PBcBtg4FtXNMFHkF3Yh7/yVuq2v0rFN5aWgl2AFa7THaQjkJY0vbdwlNuUYU2flZ+s3eUnuFrEi5Y7X6MlLf4w3EkEWev51WR1Jo6apqTGTTtM/Olb/l+wquqrjrm9G33cG6rH6DnWHTYDFTCdnzuDIgS/n56+OfPYp1qeSRxdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732030554; c=relaxed/simple;
	bh=xlGbFEtNPXUg0MvWzn/qTohcS/xdDQeov0FMNxBmZUU=;
	h=To:Subject:From:Message-Id:Date; b=t3SmcfsaeQ2BNlofMF+/dMXfTeiUAS2SmFjnEHkReUh+mzWI4NJL09e//Xt4Nuvt5N7wO8il2MZ641KTjBTLWp3/zxTzPSSGp3U0PyFrIHlPw3mIa1xih+E2kDn76UT86dRFZ6waPfFUx19rYk/OislU9RJ7rZgphnM8Uop84II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogoBhTf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogoBhTf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1784C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732030553;
	bh=xlGbFEtNPXUg0MvWzn/qTohcS/xdDQeov0FMNxBmZUU=;
	h=To:Subject:From:Date:From;
	b=ogoBhTf3YqdtV0Xwgp2ETzZTdhCdszXsfsvcLKjiWgKg8Iad8mQhEQ7Ar/ia/YpDN
	 6uPUzSoe7Fs0WBk+HuL3/PhW/36ROE+y/3tIIj9dcF4aR/NWQup1L7np+XJAfJnC5F
	 oSnbuukE8WkV/xbULmlIRAgNX0aX9QFEJAt4ufyifY2Yp7052z9ZEG9nlO2dgp6a7T
	 BYkBZ4HaXWh9zjSLsMU2VrBCf7/RySOFkyfET1ZwRT4SxkPH8SDvR2uYmxUQV66AWW
	 +/caomhuEM1V3R1f4kq+4j4mPzIcHwg7lm8faSbdIXjFe6KCIb9uBVOxh9SlUl8n8O
	 M8PWQ8ZmU3+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC2D44173
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203055359.3869.4341908299427432004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58294e94a081b113d1dca1a20cc903eaf50c9006a8735755b3c588181312a7ce
Date: Tue, 19 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732030553
