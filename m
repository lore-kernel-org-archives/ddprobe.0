Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8014A08
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705642697; cv=none; b=n5IFig0JehQrVYiXxuBIXr91HRgLheSwyB0QPKcU9wLKBxQD+qJqnjdkMg1qtzvEcCyO1N0slqd90DBzftOC08/5s22c8MzNa1/eWT/8dEDgE2Y7AvHWuyCbMFTfn26fvCLeITEWNK9pM859/BPj0U5pEwJatXSo1iKwsRK3k00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705642697; c=relaxed/simple;
	bh=SAktgfIPzmaOxnZUsY1iCdgjJJVQAW4IIE2KTJTJ6bs=;
	h=To:Subject:From:Message-Id:Date; b=s4FkwPfa2pHB01pBuFdg4lzvBqCGZT7PAljBp7y1XYqSQBdvSZ5tDxLbBijGjAlxd2K9hgVvY3V2DqcVX6GSTd9n1JH7iNnOHV2Xlp+BAiOB0rBY1SjbC5CiubwMvlbwCJ8ez1D0G/IJFUC8qYUMM/+ewdryWbenGcuC/oIJx78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYqgUaif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYqgUaif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D2CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705642696;
	bh=SAktgfIPzmaOxnZUsY1iCdgjJJVQAW4IIE2KTJTJ6bs=;
	h=To:Subject:From:Date:From;
	b=cYqgUaifRPrfkFctO39OOd2oFhpJogyg8twwEXIk1nSN7+qeTxOFMlyydmCglP/Bg
	 Z0Pr/724Qjr9wVnNE0HWOKc07yMiLJ/rovbS3AlqR+Eki3z19gwJbkvd00kx9wsqze
	 BVUm04ikW2Nu9JQtppjcr4DBqCE0ZGitvCEmyXUs/FvNnPNPptc2wHwK3VRzmsCBp1
	 ykGFBw5jx7PGdunnoVPax2R1x/o/W+U4Vn+ibNm1a9L6Rhds7an6S/mJF9SBfR3CHz
	 tW+IWm4N3Kf/dChAUZrYrQqoGTr3az2m+1vsAZ1lju4qAmXmJ2KgxbGwAwpsqLc//x
	 EEiutgZTeTPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBA5C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564269636.10313.12477676599281037105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12670d0db889d8e64981a5a07d828f9bb590956c7113a700609f90b08a46bd21
Date: Fri, 19 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705642696
