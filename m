Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8718F3F3276
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792089034; cv=none; b=hAouazwnmyN1p8LMRGq6VdqD68/0usr7oMAp0ls3fUdd0RNRU1PzjwZ0QrpjeN8Hqu2mvR3YAUEMkIhK78j90mA6US6WAJdtlRqfLOlx3m50fgqZDAKkrOJutgrzAjtG8quNQnlVoqzgRzI3xfX9GHmkxaIpdrNrt92sLpft3fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792089034; c=relaxed/simple;
	bh=M591nmNlxO1yzGDKWAsJdAWcijJt/MlLJd/ahvzOHgE=;
	h=To:Subject:From:Message-Id:Date; b=B9IGjYycyTudvGHpV8RfnrJkakv4JKKLIp84Mey2Fj3fH0ngzwMg585nFGlDXNTNbyQiFAqcGjZMq2I5Tokp5Xy4JSh94352jZOyWijVcdufgocqcplqhalHQwYvvBmtiLBqEosnFloN60kKopO/4AW8Aab3VUxKCs6xJx6xekM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai81jaeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai81jaeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF9DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792089033;
	bh=M591nmNlxO1yzGDKWAsJdAWcijJt/MlLJd/ahvzOHgE=;
	h=To:Subject:From:Date:From;
	b=Ai81jaeMNigBMsOxPuZfvSd3eyAvUWCSHVxV78HiMxUrvChV4nYkZ0IcuyMtL0Br1
	 CeAZdhbOkxDHkgpc2zHjxBbZEzsceofatCJhv6y88UZE1UGxjsf/3LKij3Su9XrmX9
	 cGyMQI4om9Rc/HWjqfg7hoPRAYkDeoKJHZfS8Ywg+wQwxwHsCNpfApUCC317qkqoYy
	 N3UHHlni6UQ+bWFXeSBNuA5Gbf+a4Aubvu4F0sTJwMiJ5vG/iVHgb+eYLSguyxUDRG
	 I2Z0pPH/+7wboh2SUdneDNRpJ5voZbJrKJbv2hPEWhLX78A4IBDTO0Mb8wj03rcwn8
	 m4JjEl+VM809w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF2CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208903368.22752.268900530228866539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a959503da830b53b9a0b9e4bd291035c14bc4e0eabf721575ba406f00b159f8
Date: Thu, 15 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792089033
