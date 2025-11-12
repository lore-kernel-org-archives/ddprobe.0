Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E36257824
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762930194; cv=none; b=EfMQWYHZkVNgZbF2JdAVTMHW012bPTfC40bCe5Mg+/3fg8NrAC1ROAlYM4PN8kwJMGDK/vB5Y3HpwPjGsBHi78Zeukcm4Rwb0ovmQglfJg84HjNZ8RbnqNP1JVeQkbZzUUWDTsvDFLWp60/nYE0AoVjPFvtcU0hrQGHM/M0/HV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762930194; c=relaxed/simple;
	bh=hOgA5Pm7jzMlQRM5pjF4dHGEM47SpHkhUDrFXEvW2bM=;
	h=To:Subject:From:Message-Id:Date; b=DATvzolcyKErI6FWmQEH6o7Nf4MczsmIbUh7nGEIqR0ND2OYLDG+fe7sSfUKe7oQ7oVgJWSwth+VihNyP83zx4dI60otFlf2YVpXEDmNHSILAHC2id6d2FfNR5ZaZslQnRZuqV+qZttOgOJfNYKoU5fxqoBuZ49RFhU5B0boMyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHb4oazk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHb4oazk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0CDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762930193;
	bh=hOgA5Pm7jzMlQRM5pjF4dHGEM47SpHkhUDrFXEvW2bM=;
	h=To:Subject:From:Date:From;
	b=MHb4oazkMJSyWk0EWH37rfwf3yghyuLQzOTM0dphwyZkdl/lGOLOQCir/SqFrb5MT
	 DS8kTNOHuLo2TmOczfLxN7RxKrCaQmc+cdEoFShl1Bhr68YAvNpJ9DiX/CFP7RqJyN
	 NkknJ74q3/nHmoH560sv2bOidekOhl8YsZahRlYo9KEBPmmx0X5vaR1zM4Z1VZBXEx
	 /AYy/p71S2gxTiGNQBid2ZIHgLCcJpheRK/D5hO4h8Efmo5wYBA5j8r6BCb7LgLENs
	 YBjHKKKW/GJU4IMSk9qzt38VD8+kg/AF3i5QNtC5xje7EUWYEYQKSnDn9wvUd9q3tI
	 IdWJqG9bCZ9SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F264CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293019357.30831.10651321776564214937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec76d14c3bef56399b104fdb9c6c44b5961aeb40b30f99c1c9aab32e4035fd2
Date: Wed, 12 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762930193
