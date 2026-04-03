Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6D9346FBC
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775183134; cv=none; b=XHLcYovPNnN3Kfxx1VVjd+tqkXtAdvzwkauRNyIsB7HpWa23SAkwDU1a81IleLt5qoBEFZGKB6qPK4BtzsPfoNogykFOF0rvQwl0e2+DI1LReZYwFfN6FshiZ/5Bkfojy8e6fZPm6LaryHSNeo5ktLcPgxpECveeO/KVrPSN7Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775183134; c=relaxed/simple;
	bh=/95IdSTdyS3YpcYyEbbUvFmanRkByjLPHU8Bw2/PCQs=;
	h=To:Subject:From:Message-Id:Date; b=uxp0nbeMmiDCpE2HYrlSAA1XKGG7h9XQMrnCJLS1eDiEYMJ8BboDfydEET0f4+ctFlV1lAJBtdqZ71BpL27HbY6hEV90QR+APM6lwYdUH82pfTETtR38Jl5FeMtP6K3oGXFdIiA+/sWxp++iFmL4YuodUZqaBMrxdwoiWx09wMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKNCxYhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKNCxYhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55BDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775183133;
	bh=/95IdSTdyS3YpcYyEbbUvFmanRkByjLPHU8Bw2/PCQs=;
	h=To:Subject:From:Date:From;
	b=cKNCxYhAYEqR1qx+2BEkItNWEHIzMTOSNLVwShRyGQXmqLRNYv8AKCBQ6O/B9BwYQ
	 VgSnKVYjxqlmoxdnA541z0jA8QQ4zacdhOtiSIuWWYi/Tc0ECD3chkmexv0d2UZia9
	 w8cgUVuGpr6ofyYgzZiOw20cRn5tU0UlyEmtBfHScfaIImSkgAeTXFghGXeMmpFPV6
	 qsodOz4RP6xoXoO7755Kk2wiw4LR9Q0GbbSlD77RxV9gPPuNDL4ncsOEEszkdHc1Tv
	 V+gE4l1yudu/6VGN2TrDemsmt5WriVEiuH4EU3+vfF3dMkH+UzTMtqloudH7q325EX
	 UbTwbaGvuV7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA13D73087
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518313369.16421.12098276690882454613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3162810276d2a935fb01055bbb24ce85254548d69b7f4f4df4e5770fd5dbf634
Date: Fri, 03 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775183133
