Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA599443
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753387193; cv=none; b=EAvH1+pS+ZF4uLnscw+QQ24qkDN6JrmqyBtw5Hrs9RnjSPtN0z6G9XPCJl1OMT2h13McV0lu61TVXLs3k37viAZCiXfed+CdHxjGCw9IAihMxxRCV9SC2AvO/YoQ7uL0sSNftbU9d5hDhm0EKIm7iVmmgtsS577HOyqp1Az9Emw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753387193; c=relaxed/simple;
	bh=Xql1EatnUR3TRGQVePtH3C1+4ng/PACwvy9hghZmV34=;
	h=To:Subject:From:Message-Id:Date; b=rugEpsAQ0zxFft/nNrCDWjznFFLd1RsDpI3dDPeQnk7Ge6g+RM8SRQgbr56Y4I37y1UqDPcPnHSdoVZmwn/OMpxEvMLtULpTNfg42bpAU9hrf8jtcWOKIzpGbpq9FjmJP1jr0mtQ6zzj+mcTUK2wTGRyixFp1EgWAj4PPJvMTv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmBx0G4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmBx0G4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3799C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753387193;
	bh=Xql1EatnUR3TRGQVePtH3C1+4ng/PACwvy9hghZmV34=;
	h=To:Subject:From:Date:From;
	b=YmBx0G4cILGkfuVHpVyWYtnJfWx6w5/HIKi/9p0TJ34ArjblPh8RnP0i4OAgmHb7Y
	 5C/dtb9uxTivaULHYKndxz2OtqaezEVxrWkL0va1SGi5CVwVZnUVjw25wOqYLD54rj
	 6wWM9ehS39CSWkHr8lu9KM4OFyObbls3IYT+5fma45e1O78yiGWMCE2/LazX5nvKRI
	 2i2S2JkqMnQtEnJsrTOaBHMHkUAdFJErz5rNsGQ2WUJUXDwXR3F0PluSkJfhyCIKM4
	 kPSd8VYnsqTfOnH57sgaA8n/3b3wURPBQbmLigRluGx7KCpCUBarlCbVj9UPcvcE07
	 GsHJCzb/ZstsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92729C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338719358.12070.13717310475736578648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28906d3f4c21b70b8d7cb47b936de24ca98bc8988eb5296f7f6bf3e602f988d
Date: Thu, 24 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753387193
