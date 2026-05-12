Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C942383998
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778584234; cv=none; b=Js9q9Ae3xVwMVfSyjEj87Dz4UB+XIHRBeF0aMuct2R7EQcLdQTFrytDzzaWfRmUFftbzeW0kNbzpxZIFkXgOGtKGEzqzpBss+DLxCb4//u3kjAGLONs0W0b+w/cwaHyGcZgMdgMJa27czv6c/KcrZ7znwi8VAC5sRUfVT7FwE6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778584234; c=relaxed/simple;
	bh=6hmi8Q0NDQorMrr4PQJSn4M/KoHwIQg4qg13LhzVS2s=;
	h=To:Subject:From:Message-Id:Date; b=asIB9ceuCyyp3cwtQIXN89/KvQWDq7fjs1a3HuwrP53Mb8NNZ2gMUgS9RQjlmErFEK8YMGbSg1dOd4VuIrSi2OpplYiO80F7yMBvNEOl5m2rKPJXH/htxKq1gjmK+okr/zBLUDg9Ohpxnwo/4nKiPeQDYKNOpa/mUNDzJcg8WUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOC+NkmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOC+NkmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38CBC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778584233;
	bh=6hmi8Q0NDQorMrr4PQJSn4M/KoHwIQg4qg13LhzVS2s=;
	h=To:Subject:From:Date:From;
	b=kOC+NkmNwxuIIvTGfBV2P3Mypk+x+coD35zxy34lOuIXt9sZRGItb5Z6eV2DyNksz
	 ShoZE23ml6Sh8G7FsXEOuVrWbwXoricY17UBEtkW6IqnaHDUytnB47fG1o5b5gjZfK
	 kbZO1bE9fWx/G7/QAZ1hErK60AKBLv2sZQZvj+bKhulwk7yehbsiHO5qAn2kP70nyf
	 W1gtl+Y0p3a77h7gmLtwdaDxaT3V0xg37+T5Ii2ZrHR2Nvv+yZhb+miS0pBUaWctvb
	 Ni/marrTEzmPZ7ef9+hjTqbY1Xno5frJoamxn4SDMYQ3BKlcXjIXBBI4UMKm4HN5ON
	 no9pe5vKHMalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CCFCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858423368.22192.6252962843923613105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4538e0bdd79933e1676275a309f4cdd06c03625875b0eed2469284d3d96ac72f
Date: Tue, 12 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778584233
