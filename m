Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF381BC2F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717740443; cv=none; b=ak4HY7nzcFUJQPHj50wSN9hABF+6C3caV7TJ7519khrnTQrh5E63hbZ7f0WMuC7IxNrDgVeO0Pp0ssH5CVjvcnRpAAqTDTZKdd8KMIxlGFWgFkvWPVLuyD80buzrmLgiSj1D9EaD8c3vhr4n3PUDaUw+TaRb5s4xaktACbca4Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717740443; c=relaxed/simple;
	bh=5IO1FZ/c4YuRD2xoDJzsdoCEOgJBu16/lmpRQLLfNHs=;
	h=To:Subject:From:Message-Id:Date; b=ui0/FrqZVmqG7F174yOPQti8phW8Xkngc639u9iKJ0m5/XTHFLJTco+tmIcWsBneQhB5gVK8+6zZ/fu5XNzAVUnMXaoeX60ihps41InDvtOLwUrQNk8VUDzj7DbkGypGpNzNtvd8D2zfYpAf2JpotL/PJqvSUZLkoVDnrgKVOZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYTtCfOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYTtCfOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E78C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717740442;
	bh=5IO1FZ/c4YuRD2xoDJzsdoCEOgJBu16/lmpRQLLfNHs=;
	h=To:Subject:From:Date:From;
	b=TYTtCfOdB4wGGUfP8co1gEdMM3JpLPFhXmTTD5l9YWewjvlvHoK9enW5pyiZsjISF
	 qaneaQzGyJrIw4bvX5aKj/bCBiT6QHKbqUlLTrZQki1DUpuiS3XlbB7dC95rIU/AWV
	 3FBFVl1zXZimaVGC/d1w1Pn4TboIajZNp2zBqwxdtZWNqvy+ocWesVg8uUdH2LpUHn
	 mLUS5nKX6Q6Ray4Acp2unrI526BENC6AiwXm4XMT8vShn3Uw9AVNvv1cYzMUXF8oYM
	 Y/66XhYfekoZTjbSS1y+nriFuCfboJNrHF3jnv2NaFrsKSTu4MseWmBFbWmxhJ8Spa
	 BFxNgGe77QIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E38C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774044277.30505.14421553655400199796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b43248c51c0363974a672dd3c62ba867c9762dda636ff695c3cf9328a6b978
Date: Fri, 07 Jun 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717740442
