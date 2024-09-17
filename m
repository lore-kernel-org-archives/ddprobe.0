Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1663224
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726546554; cv=none; b=j2BdQANMU04zmdKbqWjrtriNeKt9TDvr0m0N+Xj7Hgj38yPHLc6t+FI87KT73/RuLqmrm+ulCFuhcDB7TLgJb04Tupgot6Rvj/ekU7AlraDLSiq9gWuYB7Ah5yaz+g+FbKOLyCaAMGeM5P856TJwrtHWGuavGnhBaakXJeG19E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726546554; c=relaxed/simple;
	bh=IsDT7iXOb2GNnwr6YikuGSU5gRqfPIW5dB//X0Egkpo=;
	h=To:Subject:From:Message-Id:Date; b=PvQQx7Su/EZlNyeQfBduLFJMvVoNWXIXee45c8dQV3XUwdk22WsngXWcOjeEXGYVLpHUEGoFFfX5ldbAspr6gTOc5JgFrwfYXtTPeJTq9ad5lnCzs3ts1vru3RDpl2sMYNcgbe7lgTCA5roOisyPAt765qXoUEJ7/oRYXWcW7jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNYJXRaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNYJXRaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5022C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726546553;
	bh=IsDT7iXOb2GNnwr6YikuGSU5gRqfPIW5dB//X0Egkpo=;
	h=To:Subject:From:Date:From;
	b=vNYJXRaQI3O3MLZHD19urfxt2gD/NY13PNStDBOd2aZj2SuPGE/2xdJsg1N9BDLO1
	 In3dOlx8J6vnWgPh3TbmCpCViE+rDaR/qwmAota3T0VtF3PEl/8D3A0yVlcNN4bes5
	 krnUM/q+vG2cUX+C6xSZCGADtefv5zU1ryPWKGWDp9Mhvp2HL3X9Ke8E0Duo7r2IIN
	 lrw59TcFisNsT8NvkDegzZRxUz5JR9btjXkzFA1lvDqZW3Uv15abKxAEo6PdrA8Exl
	 88dU/YTa6BJjxcVoCQ9a2D7BzUCn4SvMYGzklsi0kV9qZpD68b9jw07pERKYtrexEZ
	 vA0l54RYWfPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E789C3ABD0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654655359.3581.719514435021006746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4309b415a13b67c8edd659d3a0dc1da1d9e8ab18864ce3f2e2f56035f7eb15
Date: Tue, 17 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726546553
