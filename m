Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB9D2FE071
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779753154; cv=none; b=kRWUwuRmsuwlSsCpa9zIC5Un2jlFaRZanO2yeGvNvXYJrbz+Z9wObwNhkR/q217bqCmAlP5BQLRj3kqyv3eFutenqJe0infVhsvWOgQHZGTNi5i3VPl85POU1wuHy+nH3kppLsf+qrufQ+pY16aMqoQ1fyKGB+Je60rGfogp9aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779753154; c=relaxed/simple;
	bh=iTDXf2TNcWEqorhrRyDbNQdTXU+gRY0QT3BvRYGFN14=;
	h=To:Subject:From:Message-Id:Date; b=tKAS0Ri16jbLjXJTr9O1JcFkJS7IEuHchOpYaRkNSb3gtRPyEoGHHfrbpqbgwZIHrMAL8eH+YC8BhroW6gd7JXCFYTuSdg72SxCjYvWmD3UVT6DOXFnfxP99Y3yVBe/3LUdJFPhBiSoM7RNms0t2FruJaPOp61e3LUmgEomlQ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJf9cowL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJf9cowL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A32C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779753153;
	bh=iTDXf2TNcWEqorhrRyDbNQdTXU+gRY0QT3BvRYGFN14=;
	h=To:Subject:From:Date:From;
	b=SJf9cowLBR5Sv1X+LuqCHr6/Dtk2Omo3TKhau9LfZlPrQmvzFeas1t07UJd8XEGrG
	 WDc2CAejvlEn/7rM3Fdol8Noq7m/aR2DtGhU4unIHaQot2b0DOwreVl6dnLgHC/Dzd
	 FKZBlqnLvcbU3KNU0YRFUQIQacTw+b6SYvpVxtrlKjbr+QvI0k8/TBuEute2JPefM5
	 01SbutpgBUnIic6nx08M/dW+Mnwh1V3XnLeN+jXYCo4VWh2jOAVHsfRRZQjn+esS2p
	 28eSp+Mip/JaL4Xh5EdoWG3RwtKxpIasDZbxktILie/P9Gid/fmFCn93FQHj9mAi1D
	 7pltQ4o8jmDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A7CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975315369.23076.4794827633414043613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a025461b8e6be512efd0d24e39d57c2edba2188b8e6d814c61ea2d6fddfb8b
Date: Mon, 25 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779753153
