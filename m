Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DAA1C5F08
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740818334; cv=none; b=aZ8seZVjTNezz1c/0B+cyq2gFj8Erq7ZhzWHB+9bUpr0lQh6MjYSbM5cXZ1l30nU4m4/UQZJ82SlKKEWrdjF1ByV0Skk0EmkSAuE252qF8jSA4xGZjzYilovpklhkdqG5ToM2XAg042X7ySKMxX9nepJ2qXiIIJ6F22vckqqaU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740818334; c=relaxed/simple;
	bh=JzS3R/JvrcEVwnHeNqeM4XyzFhIGiYOk41fqTt3jI1k=;
	h=To:Subject:From:Message-Id:Date; b=XlBXF84flzyMC6ZdhoZTtId0R19Z4pCdPCYxlwu6PgkMQQIoAu4GhW0K1PRa6UWCfBgCzEm9moRG/YWCKRbmQu9MtdcS4Dwdf7q4kx3X9wTtKaEuEsaHm3y/92JAxuJeZageroopVL9sq9cCJQ2tWqeUYHuzAzhAEtewXZYem1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B61rjJw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B61rjJw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4C3C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740818333;
	bh=JzS3R/JvrcEVwnHeNqeM4XyzFhIGiYOk41fqTt3jI1k=;
	h=To:Subject:From:Date:From;
	b=B61rjJw3ZC1uPkez/lcKlhn+Il9g88741/hHdbo6hctOH8ucCtV/mUlwRHduf9BXB
	 A+As2YhdmoRNm256QTYDREXaA6P7pEWtZUxB4sUyQ9vswQZ0N4KfWbb4lzcn+3xhI/
	 OAn+DpI8orvx4skAkAryeN/WUpFE4iqT+5Gaq/jshSj47MPCCraeXygO/tYtiAInqg
	 zWxov4Qzn2tVW6TTlp9KCPvp41YayriWczx+YpTz2CPcAatumUz3jODIjdMT2HGba7
	 mRpM0fZzn6GDwyxaNkTZgaIzIysHarod6WMcFTVoKTXBtQ6cJywX82Z3ojfYtTz/B7
	 wo7iXA1yBMMOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F98C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081833362.19340.16520242853810946716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b23c2c878aabf4c3b264b2f860d6767b9680deae606cba668e854ec40e9806
Date: Sat, 01 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740818333
