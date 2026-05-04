Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2623F3C65FD
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777907254; cv=none; b=rhOsunEoR+msEKTT3h+KUGSPCOfg0dkXPMbaDErZ5yVqK/vff9dD1z7kS5qN7prMKECWZMjS1ZEPotQm2WnZZZNG2fXeEboGo6MesiczvykAQ35oGd+0Tqbw/rx4Q24KmbZzAvEqZdjKFxLBtIq85zDFsQb3444JpubGy5tx5CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777907254; c=relaxed/simple;
	bh=Lg6HWdR++cSoO3HyDtTZ4TxQEmCYGsnhqxxj90a1hB8=;
	h=To:Subject:From:Message-Id:Date; b=WYdubOTN1I/jvrQYPDRpZGV1jdnermHvIT/FHdhBkP/rqVeGwtI1fh1n8KLkLf1hJLWnmxPBvqvGMTJeZoDU+5+FKNZjdsABjlTrkVy7ipVsN6gb3Qo18dNFyh9J7ddodn2BXRIkuJ79y67IOWa/Hm54SOf9wWAIkrIFTCNKIoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhc64iwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhc64iwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF35DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777907253;
	bh=Lg6HWdR++cSoO3HyDtTZ4TxQEmCYGsnhqxxj90a1hB8=;
	h=To:Subject:From:Date:From;
	b=rhc64iwWO7cyJPRWJd2ddTT1O6d14OhIPqfhmGzaErw7zfEpE9aO/q1dKrbpL4Vgq
	 rzgVTp+cjLR+Ke2g5re16xanbhbWIv5rk05JZO8TCAzz1LQW45JvdZ+8MaLOOePNYL
	 9Ggn5c0jgdUQ2zila+2YyPxvcT9jVNwW8MAYtFb3px8+CoU7gec70piAfuC2ici3Qe
	 1+KQKHECe3llEfMwswhyz2s8ZmUJQXTJXmAfyT38ryi6dnk5nQszkKjp6R96WsQi01
	 M89rH0KzAqCR3qztluVfqg6IhpUM3Hj9LhknRSrU3oafD7bOSXX0lTeP1cMg8acpBi
	 hcVbazNL5qITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE8CD3430
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790725368.26964.6175035334593284848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55033e7a4916734e0793e950f75764c64df6c043af100ad19b9989710283703
Date: Mon, 04 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777907253
