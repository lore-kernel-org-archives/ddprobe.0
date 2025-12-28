Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FC96D1A7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766916234; cv=none; b=NxXtMo1/lq9y8UvrsFcah/S1ClHSHFJw4GTN0yQk7CmX+FVDTcPCg7m2g80cqMwSBdvlqVIVV9IrE06lJyN28FXb590IKpLmTeeev6l5bqOABMx7iGzZObjlMZDB+RlRWQMAczvneAoUQe+eCNIUbstNw4SI+nEaInDp6wxvEi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766916234; c=relaxed/simple;
	bh=ZLDtfUEu9vftT09NwsMPy8dOIfB27uipCA5w6EjiysM=;
	h=To:Subject:From:Message-Id:Date; b=ORLpNWCHHGL+vC2wLfD0HXTBJVtrzHJez0Kqh0v08W4WGafaVFGKF2DgDkVmLjpN7kuNNT3K5/uqhogV1C9f920udzO4Q9l0t3mNr0/BJnWT8RF+REbLnppTcwtq0WOZErqZW0LIbA/1RQxvmKopiBc5lBib58YzbUoxZ3X+xg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfZ048ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfZ048ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2E0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766916233;
	bh=ZLDtfUEu9vftT09NwsMPy8dOIfB27uipCA5w6EjiysM=;
	h=To:Subject:From:Date:From;
	b=dfZ048lnjrCshA1+90WUf+I1rC4Qnq/NLIgTquYgN2FcmxuWzs6vAT1VyFljiCtFY
	 xsvXd1HvowtWo2U3cFGk/DPMIvIg9k/+o+Y5459gVFxHcgZZ0iiJPlhw0F8AxFbtG0
	 Egj15WUyOKItA4yoXNy8I/3nqPv9p+H365EWiIgspartynluotPl82jX3vskXcUex9
	 QdpiS4IJwtDEU1qpr3Z76djsNHgJCegjyapM98bqemDUdH0CMUnHB9kr495u/rzysw
	 8jkFroT2L5F5CqksORwM86jdB7zCCTa8rR5TRZQnlmd7JAtCZrhr81JrAUkGAcTPhW
	 qiN0vmPYM243g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B87E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691623358.11732.11842466710709695111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a341a7a1becb51abdf8a2e332976cb2493224a31c0461ffc801badfba8a276f
Date: Sun, 28 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766916233
