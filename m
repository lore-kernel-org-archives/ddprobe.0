Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9B254670
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732024554; cv=none; b=jYOiWNjRXH26q9oWhdamaFmIDSzEGg3nhVwhOsTYPcWSnp2ZtcO4RnPQktwCf7jX5u8B72xbvGC8eMOvDRWJbc3Dm+SESeRpj8LaFvv3eMxknFjhYa11aIgpWYyCu4kOCc0CRWnEPUX43t5CNdXmbjmQfsbq8hufy0F1R1SlNt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732024554; c=relaxed/simple;
	bh=ZVmlYE3zbTUrlxRqWf3oe3Xb6k2Px47OqcjKQZ5sPNM=;
	h=To:Subject:From:Message-Id:Date; b=tc/zOUfT6hNJ9ff4lPCns2avnbZzxBGvfedTTTgUkxs4xCEFwN5WDfGm6MeSf8sUIP0TyUucTcE/UBwClRVux+bDF3SHWuCtzgAPSBHSq7oRIOnqo8LiMILZ9+22jHSsBZ5awsUye6O0ZErEGCGFQJRLWIp3WcsspG8WgBoBigE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXme5ePe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXme5ePe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3558C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732024553;
	bh=ZVmlYE3zbTUrlxRqWf3oe3Xb6k2Px47OqcjKQZ5sPNM=;
	h=To:Subject:From:Date:From;
	b=iXme5ePe2h64AwatR8cD8NmgeH64p4Qb9gR5l8ptXyuuS0hHZI1n4uerRerm7HoJO
	 W43mhQ1oLcemH7dKg8NIhJs3vF8WCv1ba8K0j+2Kfs5DtDmUCfYpACe1/2yihLxPe2
	 cyqoQT89r52sVCVyzoh4LW8aAxC8S5OlqcBaNgKjzGhO85hDfd5QWrdXiZcNPi60iJ
	 ZKEkpe2cgGtx3tG1de3nT3hxTpteI93vGoZnO3DNRM0W7w/hef67HIguRctpVA2L8O
	 FsNcKVj9JIGXCWRwo97d9j5n3htutijpHsydeNU6rYxp9UKkea3R5wNJb7ppAh9IVZ
	 ZcDGMRRNlsH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394DD4415E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202455359.14353.199241203196727962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae6a10371e445419d4d6ac637f363d10f005f9e3ecceb782e1f701e5a2ee915
Date: Tue, 19 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732024553
