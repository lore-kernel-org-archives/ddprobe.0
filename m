Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9378C0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739937534; cv=none; b=k9RooNVRiqu/EB7cQRMxCtqodM/HmUwbbqEYSiaMK6ss1o7LRTMx43gZUHo27KaYSnUkl1KgCBpMb3UtGOnWxQp+YPUx1zIwUhLJB7+vjULIrkvZDnVqQ/eU6c/lbR+fE1/oq1WfUQBFMTtilwskoooY7zPXETd/UmJx+u9qLf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739937534; c=relaxed/simple;
	bh=xCObSAAo9taER3Ku5K7nxGvzfK/3dekR0Ct2uGIXti0=;
	h=To:Subject:From:Message-Id:Date; b=P5qo/Xc2w7MhkSmiCINrPhWn7Uc13uLMA7vMW4esGB0HzLpaIEZORuBJgCmdvXVBgXbum1x5pNFxSG+5i7+hehx0UdfzxcHZpxaR/4e4tDW+Lli4406JrGVGsXf0JJxbr3ivLfwN868dMWoe3JhN5NMG+l98hCNJ5Ch0GVSB+AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8/6ljju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8/6ljju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E61C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739937533;
	bh=xCObSAAo9taER3Ku5K7nxGvzfK/3dekR0Ct2uGIXti0=;
	h=To:Subject:From:Date:From;
	b=k8/6ljju8DO9TCoQEBs7xUIsBOeSYVj1FGOG2QIOAzbrMwWZSFzmVWR2skZXuec+0
	 ne9DWG1H8DWxH1nly0l+9zoJEyf72XuP1Liqd1j/UFYrBNdH3hi8IDq6geHKn7sVJu
	 l2txeyubphk16fSjo0IZkCYkQ4oLMerN/YKLWMrKMB+cDZNKmkkbm7T+hK8HRER7QR
	 g3Q3RFTrrVW2uw5H3JlnOCid9psR1Cj2g+FhqqchpFCARhjC6v4f6EVMRcN7sooPTw
	 +2gdlfmOZ5BTREfMR+UJXY3DSUBDstjphXTAHGRVpyP8ZhNBAwNq9gII2Pn8injoeF
	 Q7OyNFFDK1fHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A18C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993753362.1182.2683471095292987764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e7a516d5bb12d04ec64229d8f4f5b2dd55119ab1ea6999c8fb2fc7ca34d7bb
Date: Wed, 19 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739937533
