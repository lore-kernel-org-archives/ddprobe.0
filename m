Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74DE25558
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706298497; cv=none; b=dzFwaDnll2WYtShWyUgZ39jY0PAjSHc1pUWkxfma4WSVDqFZwO4/zP7MS/Ij0r6TtUPEdnTxO0gaGw7vIRWW4NKfmK91dq7DNzjeglqJ9I/NsxXDVkG9mnw5HrkampWZ7FnCqigbqW76240lVRJsg5k58WOTclByg26nenkMwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706298497; c=relaxed/simple;
	bh=RlZwfs4z+C3UXxqsN0dKlZv8/nHMHSahwtgVR1NkWZk=;
	h=To:Subject:From:Message-Id:Date; b=Pn/WDDOjv/6VRxv6mPzGCkEmYpRPLy21SvgMbQZq68XitFMQjzAt2PjZ3AH2XagTVgDy2fDsgiNEjld3Xj9hkYgNfxNwM70pb5vFi+u2SicY4voa6yV7wXlZ6xsSc4Y6TQhMKB7mXdWMAoH4KD918Z8gz0HMT6N/Troj1uddXmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvOfgHia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvOfgHia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744AAC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706298496;
	bh=RlZwfs4z+C3UXxqsN0dKlZv8/nHMHSahwtgVR1NkWZk=;
	h=To:Subject:From:Date:From;
	b=cvOfgHia4rKVZNgF7sifVzNHp8vEPmgdVMg6c9sVSoaWycDF8CZPEqHlKAaPgfBYz
	 7l8vEiNdQZ4otYxE9Bf3vXB88w8fBCm0WGiLnpwv30DNn2QcAiTrWjcjK3KsRbta8T
	 JTgXRsoxVVQc+wYL4Q/AYEScFOSnF6EWsNBV6V6YTkggWwRZkFPOrpScPh30kpR+b6
	 tH1vlziLI6iHfcj5PdHpVyILlJob+Zi9WuwTnk3KNeW9wQsQv3Qm7D+tHM3RMidM9W
	 OrSQVF2KLF4myFW5dikvlDN1PhtoAk9WJ56osDp5qLDIfUJj8k5AFtetKMUKjmEc2D
	 ZFbyR4tIBnU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5B4C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629849636.28729.3263320651827629163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722e8692e6b73f7949707932402ba805e1cb8c350d45a78ef0435494f3ba549c
Date: Fri, 26 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706298496
