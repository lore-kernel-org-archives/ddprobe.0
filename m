Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA71397683
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773358494; cv=none; b=Lg7Wo2ESzNG1ifsn89azsPjKXvkn83FfbU350hBUE7ef0IOrqZHdlr47zrRwoMzvkEElyDL44XuNa6rBqMT9+If7n5eArJjv3bD/7pCgftnxshWN9GD5Jr8BO/OUEB24GEDCXR6P3g5GPFAdhVqQXtHoU31a7C0Z8SSjy2qZtzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773358494; c=relaxed/simple;
	bh=m9McOR3N6giIbOoToIgb5gWaAOUbcweOPn6rRf2D+mY=;
	h=To:Subject:From:Message-Id:Date; b=khqQrFouvPOH9Hg2O95TGzVmD3qmq5Zm6npIrzQsFPSkNlarnIfAE0U8BkJNbUANv5ByEjZ+FmXP0E0SUxs+n4qUMtiSU+5revjdFG90SRVSZpg8j9NHGUG2644xiLsf2afTWaPSWqWB9hrC2PZLkOzbozX5YvL9n67U6wGrEEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=athyMcps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="athyMcps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE023C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773358493;
	bh=m9McOR3N6giIbOoToIgb5gWaAOUbcweOPn6rRf2D+mY=;
	h=To:Subject:From:Date:From;
	b=athyMcpsuPetUHsEnn+CKXBuq28W0SQ93gT30gJyAhvJilo3XpovOlc4izlMmxV++
	 toCMHLjob8++Pym4BMrAwcaO1dsnazSn9aj8G7333wqU/hNZdR7tHyXQXpj4xORGWA
	 AAdag104fIKlAtJBCmxWw0brpLMSUAeHojGRPPj9QQ4XZ6qAi4NG4c2mV2tUK76S2L
	 jl3851wblqZIa6L16P0NDr0hNtaXv7KRNlZquKr3r2ecHPt7NFyIuNSP1WyUAyjmCR
	 3Tt+ojLNSAciyi5xAag9zQ39c91Yf4GtDtVoJUWByXCZQNdzsf3ktVKDpoKfkZE9/m
	 n+LDi749SElqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93429106ACD1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335849358.7030.8659318430929165235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9780a252a0aeb9435787ed6f462b02be0da153890959d1f1a6ba242d40a55afa
Date: Thu, 12 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773358493
