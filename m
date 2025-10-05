Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E356DF49
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759640394; cv=none; b=UH8qnnhiKOkfHIIgJuwxBL43sfTcauwJb2rm5nmJln8TCbPbvG9Cnz5FPSYauKoLD5GS+qy2lXKPfIuvx7Nq5IN7dl/7m1LnGhLTDvMIbT+S74iflvxpiWyd+NLroKURIWsSYGDFORbjGPYuVNDJJDFT8ZHjjZxSqxnbY02WtKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759640394; c=relaxed/simple;
	bh=pA3vzLfOWBcAuwKkMPu1kY4ozDCigGzt8TmR2XvBRF4=;
	h=To:Subject:From:Message-Id:Date; b=jOlecQW3Gc16EgEZtOipuxs0tkEGIGxCMZ1knPx5WWmS/ZuTCkbtoKm9bOtjV5LaBE/spfxKOWKBJxKmdcXhkSaOn2/OSk1eCexcfBht/pBOZd83japiaqGp3EyNnRUAYsnjtNJaH99/uM+274PJ7KkmDrxcvdR39WiDqT4Vg7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+9jpuKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+9jpuKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759640393;
	bh=pA3vzLfOWBcAuwKkMPu1kY4ozDCigGzt8TmR2XvBRF4=;
	h=To:Subject:From:Date:From;
	b=A+9jpuKWKV+7WYsDDYJks44IrKRjquuH1zSjXiaqa5MqYJwF4FX85SYXZB4WOuxfn
	 52PQlxjAUhB/FA8g1q2of360/k88jG43parcWXdbTqw6URXEENNQZbByezIRZdw2v1
	 /bU7mtT9OC6LfQGQp/b1yZJMHYPOktR1OrEi5EJ2jvQWCvKc8S3Q2RaBG7nq4VSImz
	 8sRpD7bVK3I73cb+b2XSOlngQfp73GHJDgK+ASvGOAAxJaTwpoi+icDsA9lz1CHRex
	 q1iEYEHqzmy9xQ07IQ579p40H6JTw6VJDEOI6R3ZEb/rRlnP/KPFjvw/1/651esB/b
	 pQsWMC0eg5cFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408ECAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964039357.19063.9831567415485156590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf156424d47a489a53a995927423e7100f5a4be711deed78990e2788b9dab36
Date: Sun, 05 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759640393
