Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2526078F2B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737041154; cv=none; b=Kzqw/e61ssNj3Tg9SXPGuAZ9Ys6Zz9AzEa4ABzUX8xwWrli64Ay2fYp7IPxdYkpFReomsyg5ch+sjkkRqDeY9CnBR08u+Rhlid8Jf/Yfce7cRBvBLW4lQrQXvIWeWrUdE6EiS0p2mImQP6qF7SuvRzJaX3Zaklk0Bm+ANgykjzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737041154; c=relaxed/simple;
	bh=A/7VOv0u8lCMCi8FGdwBfyb3vgPpGdPRGeQXYh9aUmY=;
	h=To:Subject:From:Message-Id:Date; b=HeWehunxCJMiCxjxtZxZmVeuTgvBNY74Byh0/Q9Av3EXGa2Bo1WdFxfNgI9dJ84t9OS2xo0y2UX8HSxm8yaQOYTpzci8R6pfp5a+y1AiBykhKn5I5H4B22XCQMehsdBBKWo2FMZbMLwKrqZorSteYek4ZsGWc8BykQhWLwqxvbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxEpZqGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxEpZqGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB262C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737041153;
	bh=A/7VOv0u8lCMCi8FGdwBfyb3vgPpGdPRGeQXYh9aUmY=;
	h=To:Subject:From:Date:From;
	b=fxEpZqGl/wY3Vq5h4fDIHSLmAb0lRT6039WoL/TISfaasSf3hDQaJwbfyrcSXqppJ
	 m/W28XGYTw5jElWrFQupXFsbnf86jbLK37c3rZd2DT2g5vsBJBx3dKpcgD4Re3/64K
	 yB/5hwESjqD9ZoeHKr4bh7KqqxRrQw/XX0MpRTulSXfjW8yhTO3xYLuEwX4V4goEDy
	 h89dL0lvqicuhpeKcLAxcysjQjrV8A2u+lYkk549UrVUnKZorxCei/r1omhyRETotN
	 c2YWrajoSEUJ3CjtgHZdYK8H36x07WLzXJPNV2XAv1hdasew2auCXGwIZ7mf0IqAjW
	 HPP3tOLoRVR1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313BC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704115359.6264.6769851136476359503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bdca7d1d979450a9cc32b644f4c48f9e6260ede7cfa4ff271375683378b51f
Date: Thu, 16 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737041153
