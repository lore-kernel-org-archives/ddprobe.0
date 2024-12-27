Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5013C807
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735336554; cv=none; b=n8GH6+vvzCnhZ1PheTI4SuSNG1TilGA3WFm4WmTxQrhC4HfhYW2GXWF0qfg158ra8p7h/WZkUsvIahUFI9S0l/ggLqx/D22P+drsP6vKG20pLRf00wPO48vltT70lyPOaQHPsA4vooXwXfc+fJZRkIrLxjVY+BCVkYc7eqGI3Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735336554; c=relaxed/simple;
	bh=RQQKBtvEwcwusW72eOho8G2TKnrW30h9/j36/Wnw3xM=;
	h=To:Subject:From:Message-Id:Date; b=icneGfCvdGhtiPK/DK9WsuofApYU2V7SX7H4/aqspJvgxGzo4MeHwrQZxPmPXfOTjmtEcNWgaAXSywqiEzUsqRxYhm5Qk4gjVSgg0RpMkEvhDzhltxmVtueGkqlmax6h3GOYMgQpTDURRIWy+DTXgIBY5n3OwygioBy8w+ZgO80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJvQqXNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJvQqXNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A604CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735336553;
	bh=RQQKBtvEwcwusW72eOho8G2TKnrW30h9/j36/Wnw3xM=;
	h=To:Subject:From:Date:From;
	b=GJvQqXNV8n2b1P2S6Lbcde8InHt0FUHt4rZbvZFadza8lq8FpFfzeRpjM56X3KVs8
	 KlpYL4xqjQczcxRTtjqdc87SQ+wmpO2ULiKjVa7/dEaDR0YXwAip2WxJCUFBNsF5s9
	 WMJ6Ng3an+M9JuLdigK6rZokKHh5cWZFk7aa14jMozjxeZBhD1sclNyKKz8nVFtjG3
	 yQLWrzLTayZCkAFeIO3kF3L6D4t8wa95BKNNd+gOUiC8ifP+61l3396cRs8Fyrua14
	 VVngKns4RyEAL82u94g7TPgtvvzJlFRtxBCux4dxWoIbu8pDh8up5MORLU1gzaWGUz
	 imuVReHbeWOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95375E7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533655358.3246.1006780261986745185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e1e32c002b947c8e2ade3215d46e89bbbf46df023059f62800fe20989b60eb
Date: Fri, 27 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735336553
