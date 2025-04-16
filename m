Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397C91A08A0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744799394; cv=none; b=IH63NQimmypqSkPgzbAq5kTIcGrCe/Js/H1haFzMcgBqoCO7jNVFsd9w/GeDDHNLaOSMsBFy6UAIJzpzFiQcT5Zd6hV8yNZoWThcQn6GsZK6hVgBUW/A+UFwfRleVMZiohrbafknln1bhKU69H0CaOdhUV+NzRpzO3g+J12TJFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744799394; c=relaxed/simple;
	bh=FaJYUEyzR5x78d3nBlxA++AsjwI4lY68a+xHdw4y5Cc=;
	h=To:Subject:From:Message-Id:Date; b=cpcuOGAlL2l1zTYrob1M8fux6LcuINjjMKjSFbA+a5k8RTOV06I2dTJo9VrqNawapn7WsfRc43+o5e2wIouw7nAxyDRIo+YuCvoIiMC052M6Xs3PYCSt+5NbGTO95PYO/i+AaZqCq9czsxndx/iidaaMJoIxmml3363Lo/JPGyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSE5QdAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSE5QdAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0A2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744799393;
	bh=FaJYUEyzR5x78d3nBlxA++AsjwI4lY68a+xHdw4y5Cc=;
	h=To:Subject:From:Date:From;
	b=iSE5QdAC22ElMdnyc/14HbK+hEKbrDRMffvzP+Pv2V7+IbYOeh+upvSD7BaSPdvcE
	 7bLzyWrkPwCutB1H2zsXs/v1MMK14G1k6LVXHlmtCJOtyfMZCpkZ4175dS92VPCXC6
	 xVXPdl05XAupEaGYs2u8kqEd77GjrekufVx5UuyN7CZat0HxUVV1tqWl6+KYoj2nV6
	 6cFrsFgGxG/4cRFDrzlWzz6qEOjjJ2LoCgus/dmxsIOkwVmo/9QwOl+kI4inrwKvI6
	 StNEm1gC0LqpsUvtDL5ECzyToi37mmqQchgzQYRxK8nWIaStftcFDqsL8zlsKfHPYM
	 NfMIdepud7/uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91694C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479939358.14422.12911878659406832844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffdd1ac34c8872634108640bb747f7e5ea20f41f867aa8474c20d8a65e86fea
Date: Wed, 16 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744799393
