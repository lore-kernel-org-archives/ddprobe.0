Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FC133E4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743898796; cv=none; b=UJE6qCfqdXu7xsBc69CIb4K7lpWDVQjtCvxtyPZled/sqcydgduq9khRPz78VHQIO2ZBcPJdEQIB+oHpGqtyzK4unDXlGtOThkwsYZrQhH7OTiSiumlUzb59CG5Ylacib859uZ3xWJpB44I+AxjczJKfZ/0ab4uM3At0yNclJi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743898796; c=relaxed/simple;
	bh=Fk3b2AOgH1S793pVLOzNHEIQ0T3CDTTCiYE++PThn0A=;
	h=To:Subject:From:Message-Id:Date; b=SNWGYkc4wzluakcttH5GI7nhGRKulxtFjqCiIBjeX7frTUAZiXuLyizOcdkc2oPGOYu8L74wcspm58R+2ndnVsXkj8SnhRUc+oCjIcpF8gSqyVdHnB49tPylAGp58/IAnSo56+D8rAqFUAcUDyqlEt/Dm/T+Ukl72XyVc+UNFmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNNkaQXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNNkaQXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F1C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743898793;
	bh=Fk3b2AOgH1S793pVLOzNHEIQ0T3CDTTCiYE++PThn0A=;
	h=To:Subject:From:Date:From;
	b=FNNkaQXqH0y2so3ad6BtZWxbFNwZUxFc+wiGlYY2XM1GjUVViKLjb5qH2TfQoUOQp
	 9l9mJC5tlCfM32ozCsNYCSyPfvtvb/4NsX5gUfChD++xbPb4/SbtmFSbmMH3AZjIFX
	 71lWVcgkP8ELMpjHpUTVrwesuP6chq8EfyZ801t2UOCsMop2f0dcq34wCPqgKj3DQR
	 1kHELbRAp1eXtAKfuKqp+GmV4GcrFEutDPdj5zIYEvFfQ1+OxNvpF/1HfltnwL13sm
	 XL4JbZRYlKi8hYFzJKzW/1K3py06UDkdQ4MeXkcQAAej0xM0pdv0+dJ63NLRl5JPT+
	 VEqd3ALB/rBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9920EC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389879359.18134.10594174656978381501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730c8f20a7392fa21c7c7b6f272bb0aee141084da8e4f7f2b84ae6324c649677
Date: Sun, 06 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743898793
