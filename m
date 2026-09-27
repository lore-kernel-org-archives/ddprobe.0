Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA311DDFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790475034; cv=none; b=uQSB5LaPp38nlXcz++O9dF9jPVzigMGQIAPInxMzdb2XQSjFVsJfijFog48AjWmVnXzMPlNTFoAi6y3EMrFpZl7iNS/cxhERD4FiAUxmTF+cWd/mIWrmq62gEc7NIBaXP+BdkZtgN7nuKrQMbDZr90siZhk1hgEQmDPvhs3kKP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790475034; c=relaxed/simple;
	bh=aj43TWZuGK0hyxxAFlf62MvuXLwaqvkIumiVwsk2HTs=;
	h=To:Subject:From:Message-Id:Date; b=kkaOyXJ9xMt/DJduy1rasE5Bait091Tl0NnvCxnvQnaLH9jHv/eMl/4av/aR9xZIH+0/dLNjFsZ+IYLuw1xYbPbpvmQCD3sB+bueM6xLhVYmijguxScqTHMggy+5xCi7eB4hJqlTNaCfjL7K+gJwMR8gAU2Q8eTI0saTrpRC0fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlFE75L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlFE75L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD82FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790475033;
	bh=aj43TWZuGK0hyxxAFlf62MvuXLwaqvkIumiVwsk2HTs=;
	h=To:Subject:From:Date:From;
	b=SlFE75L00ctdNACdt+YEQBn1QeqUyDd4rG82RdAqAiSWdARpircE/NdQ44aqfo02D
	 aerGSLMguWlEyEUxGdGez/5JONDPTsZJavhGCbNx2p1Y64LpCYDvgqJZNKf+GXSqpD
	 QpfBA0iQgf1xisqi4p6D8bAAcPaTcmSM/ih8ewoKQ0PYGzduvKvSQteLvM3sNGwNTH
	 nVadWh8fKbzA5DAD5exHWvnlp5ce6JB3qXZl1OOiXDjn3Zv8zylGUo3IjVCKsjrspx
	 uSAjAKHkgnvs6Cah/9FAF9pi0wmh+iW91IE3FWhfTR2zfVuHHUbCf4q4Spo16GRrRZ
	 O9QPF4PIawCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE436C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047503370.23185.8558528046535587571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae69dac8ea32689b6d8a81c63ba7a5d0ee4d9cd3357ca41ddb117f48e3247245
Date: Sun, 27 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790475033
