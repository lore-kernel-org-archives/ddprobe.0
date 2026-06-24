Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6487139D3FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782292594; cv=none; b=RAiVzS8TKua65D20qd1TxA+Se7PiiaGD9ZzUrLdtxO1xoQEA84lQlMexLGuErdvaCyweAbdB0HLKVn4h165/M6ecAloudw58+w9cfghEtbZl3uA0PeHd9Y8Aawp+cN7A3EA7Nxdnk0+C0PbnOb5+vZqRRi1wlvdWqaxjSVicX4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782292594; c=relaxed/simple;
	bh=WjzODZF6r04DEbkC1uaXVFbGyxaVjhZQ0aDHqOsFx4s=;
	h=To:Subject:From:Message-Id:Date; b=TUQ9YIYV0M9T9THChF67kmN2MespQF1yOeobSMTUH+qbTodYzjJyrfpsH+/+D6VWFFooea3QbKS059CkONGaYNR6fSmUxUgADX4YhbP/4ASrJ02zE0WjKVtnYWCx9tWgEIIbmHodf9VMxf60h1we19u10tpOkKGXoQN9omvA+Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr68b0kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr68b0kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CA2C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782292593;
	bh=WjzODZF6r04DEbkC1uaXVFbGyxaVjhZQ0aDHqOsFx4s=;
	h=To:Subject:From:Date:From;
	b=Zr68b0kh5m0WP57/MAETyGiocCiekrE0vbAr560yMlSwtCYOIpNaBF2oexk9wuaHQ
	 Ho1ceFfvJM4HVqrX1FOfYQ5R1A9bRlZFbsBgWPU14suPzL1WHkTFw48RIT6zw88EoS
	 QWijbdnTLmCqp0IbZCVXhRaeBtGuxwqx0h+IFR+yMQjzzF0iONL2LLPmInsVUzxpNm
	 6YsSeNwmnN3tWAcHurjs2QUUg8xqUVnazkSHkO44F6ClRDmZAoLeBa3QfdCmJBIwvh
	 G6kMbt8mn03rgdg/5a9YgAP8wbxyQetj1ksNGtpxwRmT+OiQP0v63M8qozcdDGakgZ
	 MADaAuRMVjR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B4CDB47C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229259370.7117.6748773255751966090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35dde3da1722defab8679df90eccf9e10f7b496634f7934a980041c6a7775fb4
Date: Wed, 24 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782292593
