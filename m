Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37838194A60
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758803994; cv=none; b=tbswQlAW0gxPSv6+okiGo1Nu6a1LJmvmya6/twjKi3QXhPGAFiGm32RdxwjNU0n6iTBjtlPSU9hh7CVOoxnJKyyNSpdfNd6kr6qgdw4BuFO2aOQP2kc8bdAuYHYQxvmdqOAwuC6vpYFdbG4ppaIDnKeBzJHP7M8b4FH0eAcjVlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758803994; c=relaxed/simple;
	bh=QhdeeynTxUazzDIt7NAj+pJMMn3t3lKAyRDS9XbjoqE=;
	h=To:Subject:From:Message-Id:Date; b=f2E9rnlZTuHJMEZI73rY8pp0Szqz01hUi8G2rtmPktatH/EgSE/8y6eCAQySfr0u/97mySxbSR1vja6auaaz1ErNAqv3qHdL0Du6P5YBcVAXnBbcvqvREglD3DllDPZwQLvy56IO7oBOjrmzSOr6Tavp5MObtgUf3er93NvZl/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ3piBBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ3piBBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1459C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758803993;
	bh=QhdeeynTxUazzDIt7NAj+pJMMn3t3lKAyRDS9XbjoqE=;
	h=To:Subject:From:Date:From;
	b=qJ3piBBnmvcK2cXmffE55twB/MpEMXlJPK6TEGQajXYRzXK0HiXbuEddhlwY1tEWq
	 h+KaS+HsLIU3oeAhMNys/Nk8X3ImX5FfOIjM+ggww+FBt8zN5MBfMXIvqxu1Ef35SF
	 b2VkVavdAsaS6+K+mzIhZGC56vQ3ZnwTouCGHo8F2g/ctPCakKwTum1gHRxaBkDzdR
	 k7eUuV+9BdFiaahyPM76xCeF54LbxiPIrAVIZBUigFGgV0+vApXpJZeBD5GUdQCLPc
	 2koTC1hPzx9/GuCO9yghCSoSpZpNKJ40ZK9Kqo9mT6Bn2btw1vd+GDPPlrqttAvZFE
	 ZJ5U4FjvD4bog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F8ECAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880399365.11257.5382771261418865128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4ae82d4b3c315f02fcc5432a14969fc92dd20ffd82f1f99224f224f4ccbcd5
Date: Thu, 25 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758803993
