Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF21320B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737710154; cv=none; b=GE0n+0TIy2TB34vrSkQGVqXFqIn8Yue6I7zQneKBWWKcd8rSR1we1BUS0CN2IF0GFpHTwsuR+lamQVn6MQbCUrZxiC84ltCSI0OF016EpC++tDxuVeVmhgLCWU/RE8nXL/Qd5kDNBRVPObtAhruYmvbkfknJmW7yuo81yo2h4+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737710154; c=relaxed/simple;
	bh=DIzUpx/1YgFivlntufu4skYfJuxU7InW/HSN7+/38ps=;
	h=To:Subject:From:Message-Id:Date; b=gzdSWfGet3WlLXRgFGfQJQDt3VeL99mBwX/cdeMxaBVjjheXuYMIJQkuUBoSelg6Ofzn2eeShHO3rX+Xdg0etEx4sYwYraHJHMDgp/eB/tn9sWGanXMhgk86x71AxQvelQRJ9J0nFoReyDrGmZO633F3Iuu2t4TrIZjfWHk2p+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYf+WzTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYf+WzTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBADC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737710153;
	bh=DIzUpx/1YgFivlntufu4skYfJuxU7InW/HSN7+/38ps=;
	h=To:Subject:From:Date:From;
	b=hYf+WzTTAqwJucs1Ez1sICvh7znij2OkTjWkVrN55/VcN6IJRULVwB7SDvC+WEkSy
	 kktdmJqG0JveePkPxGgoATts80rz4KTHLcvdBLCPXKcSPKNgfjgdhuUkjmZZiZBrDa
	 g640tL5tydsJ/dc7BY2UB/XeHJvWXOGYuOLoPmrfRfNzuuip1SyQBtdRfb05WXvUCG
	 MFu0ULOTM99aUoWkUd8cOiZFb3PXedbePntbjQcFS7BqJXwRqLODKzg0G/YUio2oW6
	 3Y5zT3MxRHjp7aHH2UlBBKYQlbXG54ax4N5cw2eXJNRaY279qPLRcJRW/9xqCFv0PQ
	 sFcXvNzjaLkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92491C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771015359.756.15930382448219313503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ebfda03fc96757fc18312fa0c31c5e0775e935a40f5968643619956b4afc71
Date: Fri, 24 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737710153
