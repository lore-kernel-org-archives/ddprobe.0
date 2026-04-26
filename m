Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588F1EEE6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777163254; cv=none; b=aAMEi2oDBJF1/f5hBr/ta15O+MZPUTNRfGo4piaVOpV9j2fY9iafiNbPCSmknBBYEyuVLRQe2i/+z7nQIOUafKs+qsRyFKr0KCf49WPjPcxeV3bPrEvLVWJXT0jThISRyHsLNli3StKcKcQFSIMTbXsbNi8XupgfdGrJQwFaCR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777163254; c=relaxed/simple;
	bh=DAXH9MDybIbZGFFgLinhEirkwgnpH73fcsxqVlI6sYM=;
	h=To:Subject:From:Message-Id:Date; b=KCqAMZjQlc2jpYdBBUftHhTtOcN6wSWdnFCL5QRQxhHP8dUOqus9jfW60EI6kuT5IMbw0So3V+ivsIw2VEIbk5NHFp7P8Mv87JReB4DEX48N8pX1Xtpe/MqzHNyAq/+NPgRourPRGCnml5vVk5pKIDO6rdooEeR7RJFrocGsuas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFSH2381; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFSH2381"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F0EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777163253;
	bh=DAXH9MDybIbZGFFgLinhEirkwgnpH73fcsxqVlI6sYM=;
	h=To:Subject:From:Date:From;
	b=NFSH2381AGIoxuClbBQgOR+QmP686Enz0H7LxTxS7l2tNSW8yeKoY9kAhl2I4+WYT
	 m4Y5p5VYPONFsKyefuij35UKm7aOpANZg4HclcslLmVCYf8ZJTD+92sYHK+9j/cfqw
	 IroDxkAKnnmk2Kn7XKQ3hV+2ObofjfhBO/E3bjLIrsuFdrA25vBYZ2jTZSkpik1Zzm
	 UDk4SGcKKHgfSVNDSEk4KvjfAdu6xO4Pdza6xllKvGiX5Ou3InMp9SlAV6fEn5jEyb
	 TllM1UCLGbHt0xktK3Lp9mBaaTiGkD0jsmje1+ugoP/TjuIt7nMwj6/sAJIft2hYr+
	 a/veqJ0J2NkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7E1FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716325368.24251.5462565431128858726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ae015761f0119d0b4bd338136b01c90683bb93d301bee3cf0fd5e4b2560914
Date: Sun, 26 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777163253
