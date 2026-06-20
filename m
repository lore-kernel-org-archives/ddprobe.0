Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E00236BCCC
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781939194; cv=none; b=lSLbGcDpVJoiIt2ItjfHQas7B+48MdkDvzUxNt2sSxp4GeyQ/qr44IBwtsZAMPpzc98aHjQpU8/cO0APrLbwBxhxJ0jYccL90KKFESC26MQoFuH6SB4T6tAIWSr0tKVNKBy9dqhdX8AB2/9tVP826z+wJPgJC8MiJixTIbajdZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781939194; c=relaxed/simple;
	bh=wU3ZJDSiqmzWhBQTEXM/enRfytNiWdBBziITp5VVHBo=;
	h=To:Subject:From:Message-Id:Date; b=Z2eaPOSlLkTdMohxZTeAHS8wSXiSDteADaVFn4lHtiz0TUxo44CeNlNTge5wLYAwKBLEpxmqBWtwH2roWKU+RA8mQMIG1P6dkD1HbJr2tHGf7AawusfKqi0j0mP1bsWBdUEW7Y2Bovv19ZrirHXkGn5XH+inpCFXj+N44nrhezI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0To0md0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0To0md0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2082C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781939194;
	bh=wU3ZJDSiqmzWhBQTEXM/enRfytNiWdBBziITp5VVHBo=;
	h=To:Subject:From:Date:From;
	b=E0To0md017Dfsj28PFs8aSNSMgsaoJnN/SXyW6Z8uRjB2lsR+7S8dLRoTCG8NFQ4V
	 h7kieExUfqrNKAPOgQeBNeVcomyBSEyTSqdq5WqLH1iP4zjimdN3dlbKLmTOy3o3BM
	 3JXBzezKK1ACeA2GyF1JkR1FlJFrkbpHf3LXz/uJpApwLPCiHIKLi9TWfs0clhfin7
	 0+7i6R+diLhZKF8Maij/NAJj11WvFiaylhiiUP2Sh38SKwvpJPiB5fXnc8gacQbBtd
	 yi6mJZZ0H6pu2QzysuXPtlux1oMiggcCVfBbTauXQ41+5RkC/cagMG9pxVcUWn8PzZ
	 JamQQxg0a9WNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78FDCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193919380.9588.12820383732744683850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1254bda7c0992ac449a934005bc38ef6fbf066cd5fabba89d9e53b9beaca1b2
Date: Sat, 20 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781939193
