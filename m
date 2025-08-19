Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20651305049
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755610794; cv=none; b=Mi0HdlGXNmIfu4Qg0qtw037OARCU9EbAMQg1/f1F9aO0NZKBZqbhKcbPvI+Fda3vTmaM5x1Rij3ThTz3iIrRzRCqviSsLulE591dFNfZbYTgJPcK6B7j97AA+c7Nsu3qx9/fD867Xs5bl20QwtC3k8PELN7v+6rjLxECwycDH40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755610794; c=relaxed/simple;
	bh=oUcB9YoIoIgpTDf7LFC6mbNgKhusOS5VLXcHR3p8bww=;
	h=To:Subject:From:Message-Id:Date; b=mtxMXt6ZmF0n+4QBK6Bc+btsDn6y3mlALnoa8hT1Apc9rR+ChapVgsPy+eh6zghZLw5zTQpzMn9lx70TkyTRLOIiqH/V/Ks2EYNZ4rYCza+BRREYf95UHensBuv2vg9gKSI84AzrKSyJe0c93RoeJiEHfvXTCgqOb2PCETuDAes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUDMFsgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUDMFsgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E970C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755610793;
	bh=oUcB9YoIoIgpTDf7LFC6mbNgKhusOS5VLXcHR3p8bww=;
	h=To:Subject:From:Date:From;
	b=KUDMFsgSPUoJpIn9KUF+MVIa+q98xEezbfzxqcyI3yn1fP/0KshS6Az/56DVDLD+m
	 vtGXNWDeMKpsR1VsPbHtJWvAdhKbzs2SO3T/KIlaml82te1sN8ba00YDiIMHp5/tS6
	 fbIpVdXj2s8tsOaMX5eJBJi9rlzNYdW/p4FogAMj8jLAZVBckMNbkyHMYKvVOh/ScR
	 ORNq11LjDQ5yWYqE1jdngc+u2qLTe3lcnipLlZEXUrKmQYfyG+Pf4Byk2ZVVoWQieX
	 rtMOk8D7SRTOCsN1mrxZd0E8d2b9UcrQ66IKHSYKe3rpcGdd38ojxbD98+y8/rKkSt
	 x8IKOZ6TLpvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51FCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561079357.9498.18185935709892518014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e9cc120d0a20a3ab6767a3cd626191c4f4f58911dfd7945a077a02163d9a95
Date: Tue, 19 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755610793
