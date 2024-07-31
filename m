Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B715219FF
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722453954; cv=none; b=i0zSuQsr8Odo8+IpJi7W6oMJBBLnCJr1hBDeSU+vUSia0V/P6tLnpiBvLeVX95gLNE0utlO5UsuMpkj3mgbx+06ev6VWYGyhFmvl7HUFiaX39k5ct90eiiLlUBHuvoQxRPR4Uwsk6Ir2P3ZQXN3shezBwdgVQsRnfrmDiIfL0UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722453954; c=relaxed/simple;
	bh=LViErIzY22dG7ZO+a0cWeIo8E0vjDGvlGUDWRaKIGr0=;
	h=To:Subject:From:Message-Id:Date; b=JGRgYUqwziK9sZwPRGJ8pPhND63Mb10xLiztQ9eJaRtUnHr/ypBAtoM3vGxMc50yXR/ZdrRMWyKNnzCxfkfyxbCnosLzkVFqqWY8Q37fLrOeMj0oNAhfb8qdax/iRtSPCglmHB7yPE0ot0lvbEj0/9IerhhYQt+2/uPikuxxlg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCVUkHBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCVUkHBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722453953;
	bh=LViErIzY22dG7ZO+a0cWeIo8E0vjDGvlGUDWRaKIGr0=;
	h=To:Subject:From:Date:From;
	b=rCVUkHBuOt/pdAjvppIUDel+k4kS77+OxeaCKeTVFlGU/PPLHQAiZWXeK/CPqTFpP
	 QHhh83GV8GVL4UWsiGPxF17/xaRTHHRrTb3/8RVLWOqfvsfnTargbec25doyaDDyyA
	 FsWkWozS0NeG5dys0fneshmlEf1I0kGvd1DhHwDtRO5d5IsLIqz2n+fSlHuiKn6U9b
	 pSpOLlhAuyimL7j/ErWh01VWYJDGe6m05YyzGLuND1OOn52PDpDlIfx+BrPrYJm6qI
	 MaPsg7xOx0ef/dCivWd+4xuFsALueChLzvvS9v9aU4pb88Jay0elfWqeHfnwroqDd+
	 Or1WeCHcuV2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94167C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245395359.4330.4087603785108560486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5c52b250c9b9e23cd0d4ed8779f851f73df006175af2573fe7578e6c551f98
Date: Wed, 31 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722453953
