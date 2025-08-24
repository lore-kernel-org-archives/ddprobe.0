Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251F712C544
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756057794; cv=none; b=c9usG4Rh9xlqmGJlXzbyaYbHRwE9aNzPxsy3RgMjZe4mlnmsxAA1i2AxFm/ZWTJvCpmAhBr/OONWp9jpGVTRYrSJ1DTyAwsYiQw11a/SurokPVN3vD+/p/8y4TLusrerWmbiF8rGxEChW8Hzne4XunPlCPUYZmP7ADxfcnwZKnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756057794; c=relaxed/simple;
	bh=fc0zNugpuHZEkIr0hu0dnQbCmyg3Ftlu66vT5eQfD+o=;
	h=To:Subject:From:Message-Id:Date; b=WeybyKRShyEpCPUGzTk/IlJuEGlZY6tW5U43kA4meOgXKtKFzfVFwRyYldW26fVJEXEYP9QI60dDkkd0k4vB8RLuQmxeLCMCFwkdp/Rx5rj3SgJhDaB+x9Yk11/Wo11B7L+e9zurOLokB18m6ZjAH5ZeiSBRAtztLdV+OYwjzOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSAF9Um8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSAF9Um8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756057793;
	bh=fc0zNugpuHZEkIr0hu0dnQbCmyg3Ftlu66vT5eQfD+o=;
	h=To:Subject:From:Date:From;
	b=YSAF9Um80qvuDUukQ+YOMOikBjDgU46AjMAUFd8KscvoNCp8+tXtm0Q8V3CFY1n2N
	 fccVekoP7q0j3YtHWGShl7buYz7BIfrijwMleunZ/mxRIzkFXFrGe2HK6MenF2K2iI
	 lP6ZBAkKUb2aHK15/SesfPLMBecg4tZrOhP2qsxVIyujA+WCklRVIkqPIqwvKzB9p0
	 VDe/lAOaC6wayRu65SbztuSlBvAInR/TN1yW4+19qIBZxwbdClveubD+cIyJ3c6kLM
	 C2NtIDXBGAlUts6kwmOvaI7/hnTa4iupGACgvKYbwO293iFmwS1AA1TpiQt8fMEzyM
	 LMDJ5398sXs5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D67CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605779357.21685.548968287747374139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b928885107063405294a42fe859802bda1f766eb4f5d51ed3c714cc354375dd
Date: Sun, 24 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756057793
