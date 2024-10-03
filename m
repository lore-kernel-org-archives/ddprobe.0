Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550F88F66
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727928354; cv=none; b=e1YfazPPDFMftm6XlaWBaxr8Tz05Z947gSv0v/7PAHgFwwEsASuvWDOhI2JVcFPEg9hFeOWFiKejEoMiJHzllybKR/0uq/clUhnqKXtsNwGoxgMDKvGoP7tsWc4fNZ9x58uVhPJbxAnkNCUMMZZQUFHQFoUL6jJyK4Mnf+i/gcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727928354; c=relaxed/simple;
	bh=BUyM/AjLbnQsnC6KMUn4uKMz3N0qHBahDzYQnTv7PqM=;
	h=To:Subject:From:Message-Id:Date; b=jqfZaQFU3GcMqpdX63hxE++DxPE1QmBEY246O40Ca8ONyEikdMp+a/aipjNksURTTghQ5Z1ZMYaGNagAiMYixE4zICZPBLukFzwm14PMLhP+EaqLMOpaxBggNtLBcsJGTaIMlt5IO5uEQ86XUZ/htDQkMtmxd3llysSuUdDawps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUWwKfTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUWwKfTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6AFC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727928353;
	bh=BUyM/AjLbnQsnC6KMUn4uKMz3N0qHBahDzYQnTv7PqM=;
	h=To:Subject:From:Date:From;
	b=SUWwKfTTXaTKTPDu15dUkYsjl5TTmga+qEpnTEkKURT4BoY4mjyUr1iQc+sXozkgT
	 GBaJ++p4mANomESvgu0M79xH9GNSKijN32BH1BOoLxhc1hpJBZ1UxQeJphs46D4HXn
	 Yy2xLlfdPJ765KCdUa5ekdzdkMuF4ZXhLL9kGiSvflHZi1kmWjyDVM4gIRlGNChN7j
	 +KRXKjSvnafci0/6VfNwrc+ztq0i/MDW4iJBDTYdjE4NVeEYjLfBwxMiJWLDNwpka+
	 d8NG5Rd8reWmcy6SEByDWovf5QBVijKj3y/NsL5loMmLJtiXWpqe7+6nS1HWzRTTl4
	 yu3dR1tBwa6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5877CF855B
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792835373.31983.679051493016497432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e119f52b761b2950bde0bbfdef75fb53e6000e6d6d2b20a33827d57ef7c0fb3
Date: Thu, 03 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727928353
