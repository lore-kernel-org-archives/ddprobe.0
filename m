Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AB52F5B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753290594; cv=none; b=RLey8MT3m3znDVEeD5D8ZB8o3Dqyq41+NI1gUpcTAfj9ij3zBPcYEU6NCza8+XTuoIyi8IoLIkbG5vdPJWXsQGiZenoC5CmZUzsE+CFQ9JtHAc7cNFCe2SzpbAGn6Micpk+eseY0kYx4sodU0V6fH6jPOjNhgSk12VBUyjF+HXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753290594; c=relaxed/simple;
	bh=oj4cETXp15JIfXOpJV95fqx8VNj2kw385smFXvwcSXA=;
	h=To:Subject:From:Message-Id:Date; b=AVwc9zdGCyo+5R+aBLSOzdXqM65jMd8R4g4/fGQ+POqnJyFiYVI16HwZmkmvdHNEob+Am/NeE5XCattxrg19bZ6R0bU4tNDPRAj62EgiTybUtLZrBi2KUtBoV6xsk9xMAaIlZG/Tg/PERacqESixRIkXO2jA74E3Tb5ELCi2a88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCCniksW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCCniksW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753290593;
	bh=oj4cETXp15JIfXOpJV95fqx8VNj2kw385smFXvwcSXA=;
	h=To:Subject:From:Date:From;
	b=UCCniksWHXNQrFvJ7ogjub4SJcXtd9n4aI0p3Z2rP4X2wzRC9/pBKT8i2gAjmtaqh
	 wrRkZ+p2+tPhUEoFJEBzEe35tc8ft5TVZIxEe4IKsIvzchEVPPWXKQicfc3OwVG7c+
	 rwkBTp7i9gJaqrtTdWRlzbgXegCBe0iqh/ByaDlAnxcKNVxgtoGDwhA9/vj+3D+UZS
	 Y+/baLrf3LNdQ/a5HykUtpakzhtKn1hCyIXEfftXb9LR0pTHMbeMenUcPgZ78b3ox/
	 hzdDu7BTmhQ/Lre//OGYVZUnEpfmlC1nQ81bGWJFTrBFNNVJg3QpzUOOl0q4dscdEI
	 HMplHh0rRk5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F6C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329059357.22481.880764639181668717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3d7f44116adfb13c16db8103eeb91d1767bdb3a39b27c86709bb8726837333
Date: Wed, 23 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753290593
