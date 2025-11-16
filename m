Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDED1DEFE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763310714; cv=none; b=OESQxmmDlQTVWCsvhXCUJNKSwJlPr6djxwMKc1uTOsl9qMI8MaPkFXbMkEHcG7XfMFYp4h/ocOD+dV4pCdyyDnRTx47ZZsZYG2N+Wo3u6bOg4cU5UQ6l8NCUEauwXI64hmGlBZJ1fhn2ILzfnKNPZjqkJPxA4EBKK2V0HfzewSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763310714; c=relaxed/simple;
	bh=Zckp1Y3BL9adQoaMi8CZW0DgimQ9VMrWSY2lEc0Dk+s=;
	h=To:Subject:From:Message-Id:Date; b=cKBed+NQwd8MqTsmsz5TMq5F0BaYKMWn+dYpQ0jyiEgjOJE1vZD4qYSmox4zwpNcmzafvsZhSOgf2xPLyNR/SFnJ/m5LYwuYHrD5A20Z6S8TYWQIYrOhIA+dLwa93OMm+5cxWzT+SedHzYPZMtKRFRbwEv9G5y4Q9y44Zw8gF+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abD78HrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abD78HrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34F0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763310713;
	bh=Zckp1Y3BL9adQoaMi8CZW0DgimQ9VMrWSY2lEc0Dk+s=;
	h=To:Subject:From:Date:From;
	b=abD78HrSPl7b+rwu07opFAz5czI3fy3swsXwmQTUSg0Wp+693o7wwvcMopJ6IAiXW
	 EQLs36QLImb2BdTabD4bSo35UQrVtfW4l0XPlhweh3LVP0fPri0SIk48Xkbg++MhVh
	 0MoT0NqlkFqS7ZT6oj2zcNFmUex5OxWte7vW8qJh4MndhInodx2ogYKQs++zPxJkT4
	 JksYCtViSkOPPw/eGXRR7bdx9tpTGMJo68WKXvUklTfPPn//w4VWz6F1Eiq0l2yTuG
	 D5tMiDqyeFLCC1vtyror9Yd3ntCoR71BAwGz6R5RQD/9R2y6CJz7bp29zBoZpTEFgS
	 UgCCP52zYQQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD298CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331071359.30404.9545123182758918761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e141189e05f8228c2a4810e609726336eb1c8b65f2659bae1cd6e8e3387d09
Date: Sun, 16 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763310713
