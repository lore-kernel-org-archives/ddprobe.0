Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F63721FF3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753128595; cv=none; b=WDqCTMRa/C251uwxEfDy3ivVLVLlERRvL9g40XkaoXkMzX+6py6hJUkwWZDKQ+nvOtayLin7xNnrO9iLh66FF//qvTZbuoUAQBsjLIDxoX1hDVu/C6vEZ+norRBIb8qkyAN1LEZJqOWuBJngjEV/jPVZEAs+FQ2fBpuigxYt/iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753128595; c=relaxed/simple;
	bh=iWS+OirX5rjWWYR00fM61STTQ7IYJzuYnG3IZseG4Vk=;
	h=To:Subject:From:Message-Id:Date; b=PHGMM4NzZ9g6Uim/uFTQ/xHgfHGttSF+yFndQYXFs1d/4V1jgLY7zGPF88U36cUTBT8vUP31y1yOUs+iQVHznDZXn6V1Nvl10ZxMFitFvN7yJoXRMfcrU40geyLZLZaPgRUbFeuZIRzmNxS/3PUX8kzTCnyEmQn9Df4l2LpPNeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQBWqcko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQBWqcko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A790BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753128593;
	bh=iWS+OirX5rjWWYR00fM61STTQ7IYJzuYnG3IZseG4Vk=;
	h=To:Subject:From:Date:From;
	b=MQBWqckowUu5Mpdcz6ljj+u4gjZwLXzauJXjUPa1N3kvclFT1g8dh+dqONspKxLtr
	 FHHOH2EoGTYYDeapPek9bG7469EGX3t5jEPi7UBXg0GuNcANt1RgQXBadscqqNRR0c
	 n1oFQBzgGF6Q7BuSuolDQJpDAg8Zk6OgxJgQM+wPOPyGHgBjqgnQs2pl6UPpd8WbQe
	 txg/ngghIfm3bzawAO7pt7lTguXBoiawBV8+Q2l3kNMupbBATlV2nGrKFQFHge7bcF
	 gCiMIbJiNZplIZv3S2FhMfe9pIxKVTlBp/3iZUg6WNsQO+4fKs1czSpMJfScuHGBZg
	 bQqObpGIW4DNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95144C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312859358.11419.2155818251323367018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1d6937f67dcccecbe217628373932b30c909a63d1bd11bae6596cf8a85040f
Date: Mon, 21 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753128593
