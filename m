Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722984657CD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791293434; cv=none; b=dIAFDsaVAgXQWHHhNZmDe9ECXg2nCEetFfvqitGPeaf4XWuMdUotYwGzed4OJfw2AdhN94MV4wftlsITBQPUmtlVovb5HjwE5VVPZhHrI2Xl8IREn2IqvijIONSO48+ttbQukWh2KL0PGunYf2uVcZ3CKZbEszhFYmvsgNFp3p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791293434; c=relaxed/simple;
	bh=elp8ArvCBF2xT7iRlC1+4f6DLQN6jHrxFooXG/kwRsg=;
	h=To:Subject:From:Message-Id:Date; b=lXGF3ht7DR0AVzMWF1na+3RtCXC7DDGWsSt/MIY6Y8gZ7kJXazaKa8a+Od7m5zf9mj44MYFvuyNMfdWpE4tetbHqfNSAUYrBm0GXZM8gf5ckWR/OZjWoffUdFldByWwZUUcKoJVZFD06qP+5kbdGn5ODUrNdzhuj78hiGPCWJD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amnqngxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amnqngxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D200BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791293433;
	bh=elp8ArvCBF2xT7iRlC1+4f6DLQN6jHrxFooXG/kwRsg=;
	h=To:Subject:From:Date:From;
	b=amnqngxknlMpOFsOjeHyeLefffsQev2lmPB5Qr0unWt1ojdkl08sN90yymadyOKwB
	 hw4G+yI2NFB6e5HC7JgYyMjaoLl3wH+5kI8563veuOiMCZiDQ7jX3s5ka/HTUep/Ob
	 NVVsdAryfF0CsUH7qze9rWejH8dR0j47G+N0eiAZ2klkOik04Ob8D0h/gnK9qJ28J2
	 nCwd8rWyUokduv3L2OxkywdmwjS26AdTtE7GqYX1zj5TFZsKdAflrR2W1e+8qJu1qA
	 gT7Fro/+JIoG+htIN/nqGEZ9aBR7Ek34l8N+hMrfN6Jitn5OlDuxuXyiE0y23wwl8Q
	 vjdbA+FaQ268g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD55CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129343369.2397.4118833725531154035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9899ab26cd0d281840899cfee4413bc779edcef45c63a0c3272f632489eefb67
Date: Tue, 06 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791293433
