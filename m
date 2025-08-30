Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F8C24BBE4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756522194; cv=none; b=oHao/ySCVCUHOpIz3/cMmEPeKwxGG80nSzXgVOV0bDKg0vwCkhXt9UEptx3VfjHMckctexas3g6hy5GftN1ShXAPwphoB1vJ7fZGQU01m+BRguDPs0TXOhQAFSuW+Qm2CEEWMYo6w6W8xzxfH3E/yMZ532gzRaKvF/EVjpG9Q6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756522194; c=relaxed/simple;
	bh=ZeX9UwnIhJwYVnw0vKvngsxpPO3VK08siCiAWUYKko8=;
	h=To:Subject:From:Message-Id:Date; b=NDPvXE0Isqujj9atk9uMm/VwRp4uvjWgYC5gx1fk0gIfEDIPbY+iY9ISpdd8kUc0V2Nr+49L4/G4OkwMhd08OSYxKK/I716GAHmTknwwvQbzhh43oc04E6wqsgWSh6XPBe9mD4S0jvZvHUvZSp0JSRfT56gVbgH9s13AFl5ddWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC7BkCeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC7BkCeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBDC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756522193;
	bh=ZeX9UwnIhJwYVnw0vKvngsxpPO3VK08siCiAWUYKko8=;
	h=To:Subject:From:Date:From;
	b=kC7BkCeEK4PQE4Ml0ND79f0tqbabdMCWF5Iq1cTIgRwASe0Th9JFKOOWghr9i7uQY
	 swW+aEzz4HVMnGmAn+eX8Wycj5YE1etv3tCUSHVPIc37DBAY3ThuozcudfGZr5O25a
	 1to1V7UBP/kiQhEBJyVTmBDHpCSKZ1sCtVsA15rDe2VUcMKPhy4OOnd3m1UOUydYjz
	 gCzFY27XPYmYsuiI8vaHMtbK87iru6ejGdoDO/P4ac6CqCU+6rSECxtqG7pOMjLa8a
	 5NUq+3pZs+XHfrQzcaBM2mHYSHMr9PVqjSgSCOkTol2v1ThK2c/Gy/WSwQqBDpGqiW
	 X3E7nixGtbLDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF7CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652219357.25851.10291511414830058573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eba70945d23a9b595f0b09ca3496bfc13394b57d3b2adc04189a95ab0a55a04
Date: Sat, 30 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756522193
