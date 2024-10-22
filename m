Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2535719F110
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729605354; cv=none; b=q2czh14B74RwH2P9lcRcwUKEgOHWt7ItcgFpNB6BQRio4fpBHLrIb6xUBbj3Xovot7EgGRAEDazU6FrBoDi/V6Iassb1JS9rV/M1ILvJpxVpn0evRC0LOwk2PgwV4lBiTUd9H+sMOAOxlklaoYbZln4vLkaPNMFR8qipE2EGRK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729605354; c=relaxed/simple;
	bh=e7iFdBPJIju4dxuNPh/AywhMhVh/2a+jo10N0Jo9OJE=;
	h=To:Subject:From:Message-Id:Date; b=OvUB3/yEBMwRiHU9yYkHua4T1PzNufAKEOIeMytGynMKHQwZfSojNSeJp0NYQGCl9r0uOBCP8rQwAC15Ot83/KxIyEsvhvM7fVk0HXKQEVIZn+cMiXuvO6Zp1Z/bKIipafyx6nAHsgRofHlaDAByZ9w4MZQux0AsTKNNm4PrSz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiq4bikw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiq4bikw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A2C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729605353;
	bh=e7iFdBPJIju4dxuNPh/AywhMhVh/2a+jo10N0Jo9OJE=;
	h=To:Subject:From:Date:From;
	b=kiq4bikw+VDwprWt93CiT1YI3Ajs8qYXNWvasgxyLnZtQRStf7CwvsUK5XH98W7N1
	 aUPuuKVyTBN1Iy6Jm1npgr2ay6YUo8nkyH5b7NZxK8tZ6I9043to7teUqnqqYzFgTL
	 JukZ1lAKFHnNHFY0dsYKRXBCBm+xKUwty0fH1vuQ3RfomtfOCREpwIAk2zV1Lc1wtj
	 1m4T94XuRMvHECGvLbxxWMtTPtBxC3J0JSHNQolk+v8mdRHJR/SGRDLMMJbLrU3Nmz
	 NxgtAN6p7mpGFfC9tX42bHhIT4uxz8NQoZvWJ36pfzNABKMxdrha9mrrwjkuwnxPRO
	 Vau2ZjIp7Tk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA3BD2C559
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172960535363.15035.5603873245274670544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8d7506b47ea061395a21977836b2bfa4d9d45e0d711db970fc5e0bf540b6c1
Date: Tue, 22 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729605353
