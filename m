Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F71581EB
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725851154; cv=none; b=BvBNufM0cTbk2RXaF1ys73Wx6Glpegqk+Ol4qAKa7gzSgPVr8oiF+ykMevM0XtRDTQaJYdrGZyZgLMTF5Lxs0+aW0uZLXW+xHvIBOFtHU8HSQNUCAWrlpU68Nt36FVd8yAliTldiefnnnku+MoJ3NYvDat7aaPtOvHg1csDOi0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725851154; c=relaxed/simple;
	bh=SFFda6eGtCqoFitoJTV1iJrR5sTqAmSsk9eRBKplmfA=;
	h=To:Subject:From:Message-Id:Date; b=rmgwS9bi4y3jkUNOYm4m7+ROfIif/mBMs335UiqUg4KYNcLhyXI+jqNSlkDDgFQCLyyEDTBIZoczOURnajh52O5WaOUyNuxQi23TLqDGBpX6/TfBxwfmdKYA/EqDXlPBezsfIA9lWeKJsylLMp0gKcANHqKSIGy8RWD1YuBg/4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMT19ZYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMT19ZYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4225C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725851153;
	bh=SFFda6eGtCqoFitoJTV1iJrR5sTqAmSsk9eRBKplmfA=;
	h=To:Subject:From:Date:From;
	b=KMT19ZYlRm48XhvDaWr6NqA9fh0UCSUZByyuY9SbL9EsADT9AVHu82tORzrm9FERK
	 TAExLlw6hn6tVDHwOQoaST1pxII0enHPEQqiEuHL9gfw1GLGzAdj5ANvLiJwqzkA3R
	 OiyU/1mvI5FH+BLS3S95MT77FeHi9F6kqawvPFdp0yrV0EKI6rbqeecx0rcjqN/5pD
	 JDzGTVE3PvF+Qb44zbM/n2NFcbWWvIqHFDXR64mqJrRv4/GT0DeMMugcxOiOdixUWT
	 Mx6Rslra74+vmh0gTZFZ4fS/1Bl3MijkjZnatRWt3dCKgG60kNEzkUuxNc701JSUVY
	 k4S+151fagHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06FACD4F4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172585115362.24108.12685716189042666498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d0dab249459e28bbfe6e41f1650833296108065751a0cea6f3b16d194343aa
Date: Mon, 09 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725851153
