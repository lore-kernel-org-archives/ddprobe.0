Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6D1C84DF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759195194; cv=none; b=SbfvWIySLKvmbkpS6jxV6H8QeF1L1BS0tDdzyaHp8VDrj8vVpDyRRuiIwhnmNU3JUaetDNluEAl737IislkG3kj38Cd548NZjA2BocY5+4DCjXyHzEJIxEuL093vwPKTT3bBorbEaHfaIxmzSD169nKF6um0FjqpeBqlghiUV24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759195194; c=relaxed/simple;
	bh=Wen9gxdzFe/juRayxnrgYCAQcNgJdVRLPmKsnYkEkIU=;
	h=To:Subject:From:Message-Id:Date; b=aTw2kaNUZj8/SFd5sju1T+tTN8Oe6dmxswsuloSEks8/cepD5lHLtcFXTrtcHxkyat/81AIUu8Ut2QqzwHcaEe5ekHT6xfOvf0zmeSCNCgEdLpqg12rynKXDfiEs59XIdrc5vdk9t9e54tOanIsBCaltqofAhvSGzCSD3K8AnNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhoMVIvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhoMVIvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39DCC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759195193;
	bh=Wen9gxdzFe/juRayxnrgYCAQcNgJdVRLPmKsnYkEkIU=;
	h=To:Subject:From:Date:From;
	b=mhoMVIvlhQJ9qdVrwOD/eJRmN2HDGA4wDwcVS8tqBdoi98pY+CFVYlpAlzMTLaZ9/
	 FCK8W9y9YYuPj/bxaWjADtmtHdZAc5A1KIYhodPhzmBOg0KtJIKCai5wD4PQoDRUiy
	 ukm3qIFjqo/cQkCaYJEUU/8HeP78P9j2P9wn3CxYfiNfzjrKUWLhKT3zY0nCjEwtvc
	 lgNijbO56XCTDZvo/4uQjtXo6ACjZdSmH1ECEqzpdcEhj9U8PZbZ/drHZwCtKO0ez5
	 IdYhLdSzA+Ay9R4fvQsnqZ+qMqCMAAqbNqbFjBTCA1GFFK1ZU3HSpPauYbC8JDYZeU
	 fLQaTRalMN9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D66FCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919519360.30163.2823146232831046029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263a662b922542165ab05371cfd2384a5c227c0109deccd1c355ca1165dd2db7
Date: Tue, 30 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759195193
