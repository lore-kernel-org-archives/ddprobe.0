Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6204A3E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738413954; cv=none; b=EvLVj39AXubcqdJftACh9UV7eHho/K8j6aQPzmlfCjM1kur1Md5N2m9KEhW0MYsuupsJCtCgIppLfo4rtfT2U336L/TXL5s6uKLWn0TovZBX+YHuHd1ZYe/SyQSd7R8NgBdAkOHjJioDLSNdg257b4WdEyBFxsnP7rBiDAR4oZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738413954; c=relaxed/simple;
	bh=un+2vebA52QRJLT5LKHcioZ1UbbzabDN5QUpheBTs5Y=;
	h=To:Subject:From:Message-Id:Date; b=ny1SXocm5HEujNh4iOWmwaoZIoBc4S+JUPSDoomKWT75FazTnQcWNhR3oxgZZ7EhuFFG2qdHox0yF70BcjialB9H89YmqRyiG7XwZJRPYKcARBLAsHecs4+ITDdYNQBMl2opF15FpnCWLHVY/qmOwVFHMK0bWP0iI+KAgIf6wis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzLecYml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzLecYml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE77C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738413953;
	bh=un+2vebA52QRJLT5LKHcioZ1UbbzabDN5QUpheBTs5Y=;
	h=To:Subject:From:Date:From;
	b=NzLecYmlNi42/CDT7ahpBOQVs6UJGy7iuOJ717V6T/ycklKCA+yGxOiXmRhBYSlEk
	 63QknYoUpkfMCdZIWrZAlL0q9KBjSYNPUDQmw3LjBWhPCTex5DFNo9i8z7LQGliIMb
	 82xc5IFGttFCQGQBDvWkXALIfKH6yHWDLUVoha+qfrTQc/t7Lr8ZvjkaYx6CVocnut
	 HL4swQlZ0JwjCjdYk9Jh1vj6HgGC7q3w7eOWPrHYfg4pi8rpbZ7b5TXCnZQvclkH2l
	 zvgu4ZLlODk9GK6dZS9BscLsvEJm8HpSJ/CAmrTpaXzMAZ5I0n/2q9Ag4n7YsPNNr3
	 kQHqbk96Ui8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2858C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841395359.26307.18080206977944961695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15661c8f51d7164c638589745eb0b04fdfea53c7306fad82265659efcf5a16a
Date: Sat, 01 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738413953
