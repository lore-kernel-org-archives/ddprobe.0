Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BECE366
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742018334; cv=none; b=mEpBABRo/B5W+Wot8OUhPDt3S2UcxOU3E/NQi1DRFXNz74OwjXLcMQSi5DCKbHGDiAPI1v1xAQtC3LLD2sd3BajLN9IqRsaMzdLENR60qWHVCaFX8AxDeKfzcsQyctdjsZ8lfnJN11W97uswVN40kqkf4ealKtpyb9SZIpFKjRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742018334; c=relaxed/simple;
	bh=BHoI30L/Y2/9+cY/eFHqOcDPWewerlL2rBGqQFs3Fyc=;
	h=To:Subject:From:Message-Id:Date; b=VOj6EY9Tq7pOSQQZ9UzO3cNq6rA2Tx8qe1P2XHjSriWGiQJqsK5/UbfMsfZtakKho9/0mUIMuU/h7w1uA1Ru5nISak0pax0RbMvg1JFiB5ws2a+hPl4EJDkatjuKz2xnsMvhoaDU9ZP+jOUelLn5AhOzc738DaaXnOVTPf1gmW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEKDH6sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEKDH6sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED49C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742018333;
	bh=BHoI30L/Y2/9+cY/eFHqOcDPWewerlL2rBGqQFs3Fyc=;
	h=To:Subject:From:Date:From;
	b=pEKDH6sDNXGx5alp6H94h9SYN4Lkf+MQCC0LarSLCtBcASjhg/4Y4pa89x+JGnq46
	 Ge/ukUlAGGm/i7J4FHPleUEOKujyNd/JY9r1PlCEazCmBUHeKvHT4788IVv23ZJgE6
	 I27sRqOqsFJmW81zMQNPNGe0Wir3/8Jw8UqxkbcFeLKNxXJ/NEBCwEH6Tek0hViX8w
	 F2+iQbe56SowWVa/SVkvszFWf//94zbUuHeSyUcBExxqc2P2FSVyNnt3xgzN++h4fq
	 hT5oe7EEcBHcUsMfUszDQX0ShejgLbpnz5f9f4/CpSgCh8UnPtrn0Er58e6pUgN4ij
	 DZ2blSNBoATDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A06C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201833364.13469.951149279580930810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100ad60b961e675080a0280a10236cad0412a0df463e84bca232f3fd8a81f2bf
Date: Sat, 15 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742018333
