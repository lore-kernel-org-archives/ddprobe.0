Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D93818020
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708191497; cv=none; b=l51ScgCOQI2b9LhDcYz9Na+ei3av8u9fIG6d/ZtYgSfWS60Ft9PcvmwA2dB+lnli6Nprmy8g0cJYc24bjMs0nLxvZu95x+w33X5u0/jnmzPto4nqdsOsoOVr3Ii8RZHHYenXuZ3+nG0pMXN5mMe+cHZMqYnUp9DvFq+bX3itc08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708191497; c=relaxed/simple;
	bh=HWrvHLBADp0ocEwxckc3o2b4s+a2I2S0mboWp4Wh+cE=;
	h=To:Subject:From:Message-Id:Date; b=aFVfNkfiW0MQ4CWIg/htKmW2l0QJvJowBmxDLddg4McNWAgSaLer4Q3EM7ciUnyqAiLxu+SahMzD4OLDHu0hBIQ3PPXzp8UJFZj1AyrMlEEIq8zdtymUhX8Mco+2AvtEgMF/G5SI/Gh3EnqjUAzFo7CuUp4A/VUe4YZ+Xx/uwCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZKEdrp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZKEdrp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B6DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708191496;
	bh=HWrvHLBADp0ocEwxckc3o2b4s+a2I2S0mboWp4Wh+cE=;
	h=To:Subject:From:Date:From;
	b=IZKEdrp9Imjgu9IgGU5d9NHXu8HM2aG8xM7lUxIYifUcP2lhHFF9Q+gXG0BvBggxj
	 g370ndmqfT7QfB3F39NYvB2OwLmqtFST39KoEBXwU3Np3igBnqOs4L0UJjsKWseRNN
	 IKiVXediQEqdAIvEUzVfOn0QxT47pX/rbuOU4FuzLfipy23L7/vZh3/FksKUj/mWSg
	 6/Tr+xj9zuO5tjSPE7QTZCNmjvxtvD/Mie4hmTarSrOmE3KMWqIVP0NN96pUybeCRx
	 6Wkx8somIzxVQrFTw4V1xXqIPDvEow6A0mTTjTStCcrFB5v5trYtifLKsIPQ0d+iCH
	 qSQOXFt0BjD5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C4E3C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170819149641.26957.572406721948848795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c5edaf6c19b6448f650eef7966720a3eb6b5999d378e91a72497be9731d89f
Date: Sat, 17 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708191496
