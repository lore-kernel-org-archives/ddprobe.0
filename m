Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A34C21ADB4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743169794; cv=none; b=DryH9wrTtIvoTjxPPpFYJDqm/y/Zop7QkWaaqiP96mHc9me912+G0Z36hm1LEKC32CCqRPcNQhYAAx4cypL+cDqncvbBsU2Dtn+7PJS5FdNlRm13g/ugzXmcdGiTSkU7V2Ff9n4sHppZw+pvjl9TDGcKBQ4BMwY0un82Z3NANRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743169794; c=relaxed/simple;
	bh=6nxGVGhaeu96CgvMrs+nE17UH9BSirCTheLotqbmRU0=;
	h=To:Subject:From:Message-Id:Date; b=D8C5TAORCeMdJ3gzdvORK/d/bS2OJTWOk6IKIBOOq0gTbnAFCX1FHKwz4wBjvqOWyIfOr/CPOjPAoA/XhLsE/8VtWHUyMd9gk9tL+HNp775lm7orVQvozySAaYFIbtWGkcDg5fzRXy9Yrpn064jgExk9ChuZvQ50EVR/Pevz344=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJULmZIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJULmZIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC9C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743169793;
	bh=6nxGVGhaeu96CgvMrs+nE17UH9BSirCTheLotqbmRU0=;
	h=To:Subject:From:Date:From;
	b=CJULmZITI2svleCK1xpDMr4cAhGNTnAqrXMQcCTPxkiIwknwqZ9+h73l7jr+VSh15
	 1vseXnwc2DgOHd6waKeMqyI56bryX+bq+9IZTyPGsggbpvN8F96tkIlj1GlbTtXHOA
	 mh7JPfe4uC6BDteskITWzRqhttqHPMsZbCGh+c+SNMKxP0wo8+xkIu0QnpASKt5MY/
	 7ljcDrUu7z3heyjWHR58CZlBrHYa/uVrWIOf4kBvEnLNowPkpM96HVaYgV074lpyVM
	 HwWe843ttESegIaLUdV+A+ghg7wzxUbbGm+J0pZUf8BlivSb+5tlKT72ENWAejqWny
	 bRpiPxwe+5i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316979359.19080.433833586564031351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca3093e50990b0df751b391b81850835f2916c78e0700010f344359bd9fbd11
Date: Fri, 28 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743169793
