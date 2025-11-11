Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0894A34D39B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762835394; cv=none; b=eVLIbWM33NGLPnAjrbcFFCGwqp7T91vF/E87jvV4O87m2wsbQerfWVzGwWJEjVvcTLS5/YLH347i5t5VUm2Muzwpv+4KcS35T3D73bx6pzOwOEaTyFFmMQTw9L045rmLNE8wcrbwKldtUGYMBPdyofBiLsp7mJgsWY+c0pl7cgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762835394; c=relaxed/simple;
	bh=O1Q+uUbYg9VpSOoSAK7tTIhjEFlz2fU1sGkN1cUis3s=;
	h=To:Subject:From:Message-Id:Date; b=PiJVaCAAdahmLEobejrEepScvsN9OlbJTA0n2hOBVXTdRU8tGhBzv0n2Z5yFK9SJlvkhH5I/TBrKHZLE1klH5bH5CDzdutVd1qlGT2KQxY2EKGnB9D5eRizzWeMrYa6kIitB3BD5NpMPTYCtD2cTGA2C6qs+ciYzznfoU+2oSeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xxja79FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xxja79FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E9C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762835393;
	bh=O1Q+uUbYg9VpSOoSAK7tTIhjEFlz2fU1sGkN1cUis3s=;
	h=To:Subject:From:Date:From;
	b=Xxja79FYKs7WaUXX7xpnA5UFXs3HfEwLOAaMqfq8YMIn+rgDQgZZrzk/mQhxHUhnG
	 XbbBJy/32T3jPYdd0GumXpDsdP9uNYnXg67kQUutSWM/+lRQulHYa/sIJL+o4SPePH
	 SUNcd19cg0/wGRYIiT34YSO7pXlNfgoOIHndv4ynz+BFbb4Nt7ALFxcgvguuRaSCKo
	 gw79olSo7ltuDwFSo6BLBGTJkgGVglioD+mZU+Zl6pgfrEq/IwVSYaWV5jHX9Kh3yl
	 fVw/PAShLtQKt28SOl4HczrRY6v2zxl1MUkgJY7MEWF2zyjJamgZlmvKVB4dQ+H81f
	 4Yv5635nl0Ebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1DCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283539359.19674.16936281526288289122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55af012f266c8f0ba446ae9faf7e3413bfd2d9e07d7f760486ba9bf190c2184c
Date: Tue, 11 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762835393
