Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E33E360
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743343194; cv=none; b=rSUq4Rb7rzbXgSTZcJY9ChJfixhdK3MKKprKV1rgA4DN4Ple6dpmCuMuLahpXqWko2CidfnakRCeZmh0tZGpwBRkvx2vCqunFsPInUE78I7SJW4Lp1+DnujiReLggJgVwbqorkYoasUuEFjCfHnuw9EE7EAwBEKMZbUN6nimmS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743343194; c=relaxed/simple;
	bh=PwLeZpQanaZx9xFVVKyRlvTFl0ijjdvF4QvB0fuAz5U=;
	h=To:Subject:From:Message-Id:Date; b=IhrhQnS1ixrRyEA/KtPyokwhViWNBX5jsOCrpPXwcWjOw2gX7gFsVjP1hxLJ1rLqrbAUPwOwPUx6ccCeiaPRT9obxuY1lAjObzcWy6aupufhm4aRCjpsDudrB++ZMuIevWrplOm0ZkBcmoMgS+J/E5xlcU97PuEnYSLinP2l6HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWBb08TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWBb08TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFC3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743343193;
	bh=PwLeZpQanaZx9xFVVKyRlvTFl0ijjdvF4QvB0fuAz5U=;
	h=To:Subject:From:Date:From;
	b=KWBb08TS5Do2IlzaaY5vzaRrovXU/ALOSThIzipAo8ftUloMxdKw2kaNWkUY3/Kjn
	 tZPT1YExdIH+3PnqO9avQjQZgPfJY9+E7ZUNLNLIIxGCnkRoIVbox3wDKz6uNrZUkm
	 nXg+QfQhQ5BtfLz6gnF/3RtEEtHVwTsKpdBiCFt8sULVhIJbnxWoW4kkeFyMTESoNk
	 7y+uKx/d2D7t6nFIpj9QzauOP2ZxApflDwoFA7wbXvDY0CKtMqKaHF4uP+QbjDujk5
	 6fpmmzOvYnZm8kUfl07hOH64guGdhGg6fBDL+7dUqWZAWiIaxsIUDJOO1cxxcqBQkI
	 Kiqi7qPQGpnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9983CC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334319359.14553.9311588479806242527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227c44f6b8c5484e5e2d489ee5a44bdb72e27c487302b487dea23e3d8ec005c3
Date: Sun, 30 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743343193
