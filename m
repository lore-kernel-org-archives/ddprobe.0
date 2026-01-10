Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115D5345CAE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768058034; cv=none; b=V2zVmMOu6805gHycHXWcouDt2WckwyFtt7hWr+SdZXIR8k03cmOXZIeQp+doI48UeOVGdIzXrMOFcTXlF58HV6RDwPf1SZ54wqmoL3m0etL/2rFMXsKzaiZxguOKcLnJ/ZhVTpuCraHVUAV8+4XFDm2WTezxTKgFC7bh0qFLio0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768058034; c=relaxed/simple;
	bh=6Wxs8KMWws/L0/chz6HLLea12EAcmYGjfR9G89NJm1g=;
	h=To:Subject:From:Message-Id:Date; b=t7ynHag3aI0b1qcl1eI6ZurSqDaMmWm28GBW8dESLHKs6ehCU0rOohfbkKxjSrfy96bZz/fBwAcSv8VqL9HuSTawcz/y8UTGv/f17zdR4qoczJXr43qjTayyUbGE/nMWWEHDYw/pokTijNsDpIoaycPQvShNcTtS1PKy0hN7Oo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4Hap95w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4Hap95w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768058033;
	bh=6Wxs8KMWws/L0/chz6HLLea12EAcmYGjfR9G89NJm1g=;
	h=To:Subject:From:Date:From;
	b=a4Hap95wKuRquO/6LaeasPWf65Pj0xjDooPgZ4tIPA9gh3LQb6b+4cCqVA9j3Heza
	 P71N3EvUnIvvaqfOFQkRurWdo4B7uM26g1K3/8pw0z2kdAMOlScH6Nkx/U6We+Ugqc
	 wh+W+e+kMnzuTg3b3Ay3YUFBBSNUV+w2TfnD6IHCUU8toJPCTlUbSkXrs/Ni+TLsAS
	 8XxVylU0P+ORYq/F2UzNCXLJmy8SlWu3LITLMaHDVnnyE/7URDdzdoBxX4pkJ3apBG
	 yKEjowquN+3Fwqr0AMS7zHUxRg5N4Gnn6kPf5Er6Us3ACNJKYJxJycHnQC/18ZfTzd
	 wpFLxWUMq9LCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C6D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805803357.29813.9357364898576147061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df99b9ce265c986994da173cfb39de251646bd90e2353b178b7730474f7ec2f5
Date: Sat, 10 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768058033
