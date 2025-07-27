Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293431CAA7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753640394; cv=none; b=mMBOQbkVJgULR0nVerd/fgInKZYY/oGYwNSeqDYuwOMX20o/nja2p3lqNIgTdouA2jAouPUnmiMExOP4QTxmqoyyduOXWPBF3DPtVXTPGBAZE5yxO64qDB0Tj2JC5vtwbnnX0PDTjViHgESAa1nTyLKSaQ58hZtWR9P6xW2kLqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753640394; c=relaxed/simple;
	bh=PqgHYImsX08upe9JaNksxvzWY4YzNv2dGVgO4cqX/Xo=;
	h=To:Subject:From:Message-Id:Date; b=Bop0lX9v/6Fq+U2jgZOjr5OaqTzysm4Au+8UgOhhil6YUubNOqW0Z47gRQIr/6i2mOA/e2zi4pk67pQJ7XRXZgKsjepCuI2Y27OoLbKUDDffyUQEPpCfDr/iQe7WgH+XR0ZUhtTZVcL2QXSDfmSeXdiSN2TIZ445b9yHS20pMlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtzgIdyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtzgIdyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3405C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753640393;
	bh=PqgHYImsX08upe9JaNksxvzWY4YzNv2dGVgO4cqX/Xo=;
	h=To:Subject:From:Date:From;
	b=gtzgIdybjn9WPlHr3DzoGaL76sNSU18vY5z8X+tRBIaIdRtZCBjIMwZh8WWtMHh0Q
	 QIz2iheCLD10X8fybSCZbQdoNZ4hXodaI2brfsSyuRXSGHKKt5Uap9bJvyVsutT9We
	 6cDrZnxSbgeS2fej7qGiZG3k8j8zfzqgLCk1ttX4UmNmp5H/rmqRoHWLkpIMPIysi1
	 +o7VybS7r/v8Rin3sH25qJyw0yj1fvQYZoxhTtlko2W0KAymvWWkFSoza0dprdwLpF
	 L+zrVg6M92DGeN0CiFQjQnLJc90ZMQGdbhlckhWi2cytMsUCyoNse6IyMKZ5AS6ctc
	 aBDhF+mwun5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC2C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364039357.17151.2544727643495747528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b18b4abb017aff5633b35b38ff0d229dc8737d8e42ad027bcea88221de80bf
Date: Sun, 27 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753640393
