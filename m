Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C2225403
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791598834; cv=none; b=JAjwm1yGVrTSj3S5arqsZx7GB/5w6VA1F52W8jD8F2PMtHaV360qdedBXEu+AErh0gWVYoLLixXldxvsGxxXwKuvhjA7XV/YNMa5p5RIY7Zkvke7d9QS1rB5uxWxknMuOWpCbckknVbSHdXxArdjUogrN/AVIo+B/svXL/8ACks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791598834; c=relaxed/simple;
	bh=Ju//surObHDqKe/akffZBd60rvx+mJCZhIVGHWjJA6Q=;
	h=To:Subject:From:Message-Id:Date; b=g8XzWCFA2hPgqg6GvESVcmi2z1ZkSQ0Is8UeiipF3vZT/e2MYGGMNqe3q/FgyU6ri94swTb7s3utUwhfmTMlKlu35LoPUdShmLTQY0mjRydUAd5UhYaXbJlpkpCCTi0j/fsw74tBejhNotiQETCqstcloRsZeb3XlPU6D+AREzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfizQuKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfizQuKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA04C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791598833;
	bh=Ju//surObHDqKe/akffZBd60rvx+mJCZhIVGHWjJA6Q=;
	h=To:Subject:From:Date:From;
	b=sfizQuKOGTTGE64v5yI5LnSdZ1RvDgA5iL+qYhAhJ2fkXLdlMq/beni5CsE882W5e
	 rFZ1nd6QH4PgYCVPVAEND9e6z7AkM3OXSH3fW5jej6FkDAuka6S7pBUf6pefVqdZut
	 +J0kmPzwPspfP+paSUf6cgeodQkI5mS4rRWR9jxjvfZtASoeba/AZLTka6h1Ko53nP
	 G/Pg7KpQ8AvsRrSzHbZ/8e5gHYWsLlPNKW9mygENNsGk4sbsb0NvC6MX14dNqEP3K3
	 lo2JTyfRL2S/amfKV8Dqa+mar9eSc9zECGR1ezroCulKXis0iWlljFG6u2c0LD88Ar
	 Mj6hzLgsmTNKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA552CA9EBD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159883368.13308.16511721369804589158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448246cd6426991ca40314ac3d02d2bfbfd3ed0599dbb657f80deed702c2aec8
Date: Sat, 10 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791598833
