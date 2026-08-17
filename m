Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4408E3A785D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786951234; cv=none; b=DStkusLSAq4pFvHIeG050bgKm9dQsq7IFtqG4YmpoVAueerJRqtYd1O+M0XPqy1qMFIO51csWD+0rXnTlZ35Is44kwIOHbv5Ts5bBSBgygq2Yq4fKIroN6ixqsufhrglc8O5kQduRyjcgVO0KVVGvStDX34QRCD/KIarRg/1pQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786951234; c=relaxed/simple;
	bh=8DsftDbLHZlgCnuBpm/64ktsjIsJtUdG7erqajvrpMQ=;
	h=To:Subject:From:Message-Id:Date; b=FRVMII1g4VdkD9/YWGn1mfsGBzZNqBOMRPMyQR53RFAAxZM8FKBSnjpO/pYCQju37DmnyM0ZAJDzNSEmgBotnB/2ueANnM2VIyl0hf6+w8S8Q/BLFF98HhmIQ2M5Qj3AEMfAjsAhrkQUYCj4qndOQ3b7U+Jlz6aodrdFMlCbddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmebQ5zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmebQ5zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D42C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786951233;
	bh=8DsftDbLHZlgCnuBpm/64ktsjIsJtUdG7erqajvrpMQ=;
	h=To:Subject:From:Date:From;
	b=nmebQ5zwM3PVnaEnI7VL1NGz8UV02K0IyBwkL9+LwL5PmJ83SqOUoedHGMo7hK2FZ
	 TrHIMkWRGMhGmHbUOg6HxPK/bnccA971tJsFgCDrndpv9VIfFeAOHxWbxq6WhiaESx
	 RcAizoXl22zQk66kBQCA+SAUgWwVitkPAI2f397V6YR+rGYFS0eUy753XswxWiY9zu
	 ZpEKKJepXBiVhOf5yBOzjQZrrEFKPvseKhDq72QhBQNfAhtgcr8f19iapFU9kGpxge
	 WeyZ7pisb8B1xJcVEvepzxSk0s7q42GhoGd3B8oyvlvbQPhBzPeXUoC0WkIFb4VHQd
	 iuycCnQbNd+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD8EC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695123370.21122.12875233171167217786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fe486cfd8795cab790dab83dcc417c27cc2dedbed7e10d0f80f29ad51fcd1d
Date: Mon, 17 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786951233
