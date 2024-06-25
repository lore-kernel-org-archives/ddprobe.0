Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD0474BF5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719351803; cv=none; b=oiBkWS5vLIFxCAThkRkOdwxzo1hiKx0kgh4/UWGiOo8wxV2fWJAI7T4FvdJXgWTcFoFofI6bE+65Kb3s8w2uYL/x77ft3vNXbwPUswHwLx3F7kHs/P5zEeR8aEP5OWbwN3qfSVE0WtknkdDL2Q7qbPTAWYjAKXCL7nn+ZH/o0ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719351803; c=relaxed/simple;
	bh=kHQxOzCxAvAIB6WNZ8Zy39x/JghjNe2p+xUBlApyEc0=;
	h=To:Subject:From:Message-Id:Date; b=inBSHp0BY96gNvm7p6TDNnCeOJifc64v7ur7KAcfrsFWFNd3ZRTqvMz1FA/fwsioYQuPrg/T7zpLRNtUmvZbGT/7yh0njXZZP0Up+FVR/0mmQT8Jq3E7u0s27ztuohLU+/eic5Li7H5s6FQzpzTzbPV+HM3woFcGcDH3Z4/KXBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkQFqBnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkQFqBnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB234C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719351802;
	bh=kHQxOzCxAvAIB6WNZ8Zy39x/JghjNe2p+xUBlApyEc0=;
	h=To:Subject:From:Date:From;
	b=OkQFqBnvYf3WTAI7nY4eWVeuTxJeVHMbrFUggP0YvXWb5zqUTOPPzHPWVKi0ZOxLe
	 SFyhn4Zf1kR9XbOOPWLksT5IySCIU/EUaRIGF2CCLE/vPHJvM0dBE9Z6RastY73ykf
	 w8CEVM/BFecGKP1lhB84pFPGkFexTIIQTgzTiGxyCnlK7ddzu73nZ2zWAOS/7TZ8JY
	 YSdl6Mn1zRMpr2JXz4g8NvZ99Yr3dTyatd/umz8d3bOCovPFu9B5P6FxMQ3AhOdmOd
	 DnPLUiMQ0l1Ftrq3x7FQtE9YLH07kkZE8WZWWVh2mbn7oKn6aI81usl8Nwt9CtgVrl
	 b/CxcUpReZRgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE82C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935180277.19667.7415223814555071384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a46f010cd213b781815d2a933919d351349a623610f8b288c2108fd0299417
Date: Tue, 25 Jun 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719351802
