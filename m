Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4885B61FCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719372203; cv=none; b=iSBNYND7jDrBydKc+xkYRLk3YC9BFnSqk+KfVs8uxUW335/o37sQuOd9hSfU4aE+6XmqgoarlVmdgEq7aWheZuVi9rDyn0DxSX7wMXoCWq3LScGIR9gG4XaQjquoi3NGSFzZr9LA9/r3nFdtx0Fvr46mIEmRdqV9xFj5aiuK51A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719372203; c=relaxed/simple;
	bh=iRaS5HOGbdia5yda9SXY2TuXVJf0NjK/KOEzMOEsie4=;
	h=To:Subject:From:Message-Id:Date; b=XALOwicGkHM7Fk5XEK76koxCWRQ7DqWs5U3micY2T5jo/33wAwLX8zZ3nnUu12mGIcch0HuIXs6S9k+POCtkct/17rhJaf+1Spdm/8WzFwUbkqfqCXUW2+XEO0ko/3HiMgTur/PuXmv4Y6L1hnjTfulqF2glA5g25ZNDSI01rYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2x6hPjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2x6hPjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15CFC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719372202;
	bh=iRaS5HOGbdia5yda9SXY2TuXVJf0NjK/KOEzMOEsie4=;
	h=To:Subject:From:Date:From;
	b=P2x6hPjJVX0gJuFrJGszNMhpb4KjtPDhS03ZKRxLGBncehzvxX5pWfzY9knhkFeTN
	 7GKsxqZuLYh26AfzBjGTOslrfZyr+4zjgKdyzFu7Dx2fV3YXAi+pkmBpupB2Swi4WW
	 g8Bxqk3iCsWFsRmPbeKOSbAe9Jd1JETVxbEHjmxKKuMOI6sx9daB7xXJFfgtTYUYrh
	 lsgZ+lrVgx4UnqRgWUa9d3+Jjs97hmV7Xj3mrRQ7WCY1K1Sot5EKXw3rOoYkCs59Uh
	 FmwvjIN+ObyFttq0aZZP+6/WAniPBsC3F/VN2D2b9LS+Atrmgd4ELEK5WZi7AfFmod
	 eO5P5C0E7QJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5D7C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937220277.8121.9940206640330033631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58e4b8abfdce0f0e2adbd9b9ff02175fde890dea79f272826d77cfe00057c58
Date: Wed, 26 Jun 2024 03:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719372202
