Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D7D3451BA
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755543594; cv=none; b=jOQ9t+uhdz6rxGNYoMo8a9BCT1tS9mqEa/rs51QqSXxvdWr3Bs7JH9ZWgGPvRdFLZwHGirakGkpQKMIwBG7qSFWmX944Oz5LSNTWQPk14rEgXggiL0+iK+V6LtMm/Aomg2VkbYtNCS8B7j5RrB5dpB+bixZwvyD90bswOYnbtu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755543594; c=relaxed/simple;
	bh=STBOFrHJW/a/C5i8ywQsJ0qxEXZ3oHJkx8Za/RxJd58=;
	h=To:Subject:From:Message-Id:Date; b=i+DGDtwQFVEolipEl5SqHZItyGFUQp3Y82R10vXiEK95miVk3c5MfMyvCaw4jUsa2BSAnffOdlku2ulGChGjZCOB8tkVC4QqGaUkT0mUiUG7JefrBQDcalbyKm7oBaUHthX09NBwDSzDK/XbAXzsATdDBwGc3qdGEkG+nIf+U9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BANbfLm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BANbfLm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4C9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755543593;
	bh=STBOFrHJW/a/C5i8ywQsJ0qxEXZ3oHJkx8Za/RxJd58=;
	h=To:Subject:From:Date:From;
	b=BANbfLm9688Ge3ribi/elT043QpILDoJLqc9oe3h0BtVPsYLhbNPnM1SRVXK1xgIq
	 tTqT9SyQn9SFlO5WcJfAefY9r83XhD7WXZCNESecHu8mViN3Z/NQa+jtcdeTU8BHAT
	 x26PCxqmFC1K1UbfdB/svO8dpuS0+qm54+TESUR/0fEQDeY12UiYevHxSmzqW354YV
	 t6s60pK4G9DN9reT79ZbAdjy3UzwRD0i1n527YfX+fD06+1Jnn1z7LL+V3Dn2NtxWd
	 7/bpl2vffj+RPwl+BS8iKsL6jVeuJKI0P1wmIKqOhFblc6w+X5FWs5TkfFZw/L15lc
	 sevzWm9AD3PTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E4CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554359358.13943.15905656007989693280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3ba2a4b1982fb9648f4ae22ba0bce44e9656243fbfcc610319f43d9c474454
Date: Mon, 18 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755543593
