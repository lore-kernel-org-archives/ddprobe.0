Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFAE30569A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780601074; cv=none; b=Ej8KmJml1K5n1BZwTP8kPfdhWebfX0dOSBtAfvazCTZb+rttRrBZpcx2XROGgeZXiLa9+xfiwAsfiahK3EMZ1PClJbb+Orkpxn3EAKP05tK/hwm9F2ikjAy8TbormiZjgqLqP1P/4qtS3DuwHPzOkuRXY5Yr6Fjzxwr0rqug0ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780601074; c=relaxed/simple;
	bh=vg7HHWGXhYoQtKaSt8ble+T0vSrVUM2r4eby+1Eoo60=;
	h=To:Subject:From:Message-Id:Date; b=A9gThdZ0eBdTIf/8dgTGlUq7b9F/ye4DMqYlQhvwsfUKFd8g1eag+2bCZMZaBp/hXkakXx4+6p+kl+SYJ9t1Xduy2PmKDHesFpE5RxCPBH/D7FuaAcD2ZfS8BWxbuyX/rhoGRlo4FzsRhkGI2Qkwd1QHLMxajg3wfjehun15g4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLlfVKUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLlfVKUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA39C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780601073;
	bh=vg7HHWGXhYoQtKaSt8ble+T0vSrVUM2r4eby+1Eoo60=;
	h=To:Subject:From:Date:From;
	b=jLlfVKUKyrJXCJffPZ0mwT2jBQ6aisj39tQMyb30Np8MHaZrahs8OKLD7dTZd1Lzk
	 JJWDaTOWVqqJ/8Et66f7wV9wuXx4DuFM/j27ZFqG3Aqm02XQLjgfWZP55HlxMeq5vp
	 CfYzRwEEM5mz3USnA0o2oQ2wI/Uxs9iPieDe9J54b0q4sjIwQgAOhqijG3u+VF4KiI
	 2z6frYc3gY6RErzqpGK/MJR6ZK8XsYJH46NRb5jWCvNuasfARAtwOnrzt5mlntmNdS
	 no7yc2JNTlYDCfwaHBNFkGfY6C9266cYG2NMeaVVXOLqFHS46b18eMe3LoxR2RVW4R
	 yliYc5lsahitw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0051CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060107370.3911.17720331739780037890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f5eafc704679abb7d612204787f8a912f81180b30c0a5e45d3344582681a27
Date: Thu, 04 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780601073
