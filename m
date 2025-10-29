Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A04334C0C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761740994; cv=none; b=daG16XMv+fU0D7F+Q+4WsXAfqHGtL2myZlsGceoxLFOBbjvGWhdkUrL3gQhX7kiWlwi9JL2Kfo661hlYNe9VsboNrgwrgx4PxuXYo/O6be4ln+4DWsK/LlOmnBd+6Z8K3jktg4OD+1tv1bfW/zABp3vofRyG/dBBccq3zfwGJ/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761740994; c=relaxed/simple;
	bh=lMP3zuKGlzijuV02HkxtfsgsIz+/dhkZKUrgNh4ANg8=;
	h=To:Subject:From:Message-Id:Date; b=rDnePUKD9KVRXdap8fCv72sJ35l5fH8kj3shyhk8fIR56uSNAKFYIgzn66Lr983INqnuNDXP3ckm7RBXURvr9ZgIec7UyODYFSrsp2mzlVzqKeYxu+uGb2ls9Iart14DQA/Dhci1ajOxSxYDHvshtMErK98aFUX+pFwpi/IJniI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlwq+TcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlwq+TcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761740993;
	bh=lMP3zuKGlzijuV02HkxtfsgsIz+/dhkZKUrgNh4ANg8=;
	h=To:Subject:From:Date:From;
	b=hlwq+TcZLUlEfLaBy3LD3ho8mAnhWVaHi4gCdtF7aLjsNot3HU/qKytmddR1dIuO6
	 9b8HpUv6KzTin8yMqHvKILWm84RXbm1q3wKR4THajtyU8UBwN3ri8S0bPoG9oO9gsm
	 eNy9xrFsnt5sYIZK5rwfCogztCJbsTR8nJBEOIwEpQlIHVZFHwqRZ+zODQb0c17QQn
	 nWCkI2niUxvW/NHo5tygGmIKwA9LiPOWnEaCNIlwJQuxEY4cdH/TGUvi6LxDiaELJU
	 SjySLA3YXD1SncqpidXlzt2nkF43NOqDNr3S6eAF2oIfu77sasScIWAG/3506PcmEN
	 iseu3W3uTZecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FEBCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174099358.31786.8599196990955983763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c06c2f41abcc1660c9958564e250f4c73f9a8796432178012823cf98682ed9
Date: Wed, 29 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761740993
