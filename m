Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0944530BF68
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777074454; cv=none; b=NrTBBHyN5gu+wJFnxaOWjP808Mon+WSVvdkyBlLBIZAl33HWcQ158YlVNBNp3/L/Na9kMuTwrv5FxoFXHDLI5qpB55IOoEe07w6mG+oiHQX4D6jCiLwJbRQoIW+vuOxbKssoiRw0+BbMoa4jKzvc6gJ1/itWrRFWyrSk0nc9zw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777074454; c=relaxed/simple;
	bh=TW/tHEblUtaI6RiZUVTeEWHzPmPm4AzAfS3ijdn17WE=;
	h=To:Subject:From:Message-Id:Date; b=cBCUDUTYRp3YJu3mwbQtQq3UZhr2xZphDtspJTBWObTA39z1JrlFYj2/4Maw/mZo3oPFUqFodRrByudhhZ6G3JBMvnG0dFDHDjkVxb5KApSqR3tNLnfifmMnPjAxfshPI3qiivsfyTEbKcxfnfrvz6mvUDApHYScIDZFTr4QSek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzKBNKgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzKBNKgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDAEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777074453;
	bh=TW/tHEblUtaI6RiZUVTeEWHzPmPm4AzAfS3ijdn17WE=;
	h=To:Subject:From:Date:From;
	b=MzKBNKgfZN1iVRcVVb86RbBmDW8KCCY/+d09VRM/VIoyMa3D27lZEfrow3ywSRC0H
	 Rs8sTeD3HN9/S8DTgjf5qo1UR52PnZ02VNR+085WYu8WvYXPt6OIU6GSIOGIwoTZYU
	 IDsPbJ79xHQ4CdyLfeDpypC0/B5sy/NlclgrliWx76SffEzI9fgafcfRjkstxz2xZl
	 u1TZt1+Whd3Xshhdc4SYtAoJFxk6+2la6CDOdzYrRceevwT2fRWpeci7TIoCDRQD2h
	 ++YCXBI3zjpi0kcSzDJ+Y31XT9j4zF9pAkfBBosX8XXS5/EOninm0G9rlrCv0sEfrp
	 TPWigj8AI0imA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA9EFF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707445368.27682.2879947353573178898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef9518ed3a330c68ef74553d7cf4c1ed072bfc4cdb166d0b345b6cb41376571
Date: Fri, 24 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777074453
