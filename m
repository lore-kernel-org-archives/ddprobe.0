Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F2F36B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705887497; cv=none; b=IAtBYhcgWSd93krZb/pu4+pmjiElYeQS+NrkxmnsF2UnJ6vmVrMdsYooF2VgowOMdc42F91eMemQNKsCVR1211aV5T+y2HgrRCJfPnxLwUHSbOX4j4YZVJwO2EwyRLX8M7EjU2FArY7BDM+xYPikoJAz0ydniFECBaxZLu8EnD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705887497; c=relaxed/simple;
	bh=THnuUEv1HD83brt01l/VNy9IjwtWrlkWn1rmhEyCg1o=;
	h=To:Subject:From:Message-Id:Date; b=ovA7kSGSJRyJszGpo5ZKBIZU/9SIbNBwFwpu2RxbJVMq+EEt2yEDUwkTRqnQtWaSz38jVNPBCdECfHLScD59/v075oacM6+FQk2NxI/MJRZL5x8B3wTqDXjGhHwsUV1D1qrvbE2hVgMrQpPp+1gkJ7dAG8NLa/X13cONvOjQOlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daLU1iWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daLU1iWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73731C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705887496;
	bh=THnuUEv1HD83brt01l/VNy9IjwtWrlkWn1rmhEyCg1o=;
	h=To:Subject:From:Date:From;
	b=daLU1iWR2o219cD8gPMIrWQLIX9o5USpKjiJrVR93fXss6/8mffJ+syN2SPOgNlMt
	 9toPJ72TP+OClthVnXsWr8bwwOHuH9Oz3Pt2r0z4Etreu3Z1p7C3ry/zVyEx/q5up4
	 F5jZ+zkpC1xpAVyCtb/U4O2eWDa9Ff3k7SAKcGz96xbv5YPw3qP2J0D+YbjMleRb4e
	 a30P4mVAH57ztgEhhE0QcHm+L0ArSDjH97o6j1IwK3gQZdir1viU2WfiSTYR5wo8ID
	 Fc5IZvgnKk2VmJdHCtxydqvPNI8rod3Vk34HekJDkgEkRDogca6YXqFJnMsO90ipSb
	 o/wmZvCW4AeZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB70C47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588749636.3538.12923838180041523691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f6134b9c003457a94616c3093062d46188c464aca339f6bbeeec6cc981601d
Date: Mon, 22 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705887496
