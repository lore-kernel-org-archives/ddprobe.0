Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02522075
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705804697; cv=none; b=IdW3Kh4cD5eX7yVm2go1rx7Fvy1CvGWMbCHAR94NrEb9atMVvdm9rgdLkr1IjVcr/35qLuCPAJcEhrKH4zJu+tBeAHA6w6ascmtTaVJQbkvSpWMztenSYCkLA840wIaFdciO0fuQPf5+yPnMMzV61gw3ctB5f8hQL6X9kxv49sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705804697; c=relaxed/simple;
	bh=PwRN39RaOnpLNL4BRe++hDrdTZQTz6YTuCOyvyU2aeU=;
	h=To:Subject:From:Message-Id:Date; b=t+C36Bz3l1gRlXnMfbGm6BbNzPAdXuIq6RV3BqaJcsR/ERcD38qf8qkqTgfG3tTpNzUfrMi5+A1txyoKXE1sXHo63G6AtwhYlhdeVSQUZvnmcyrqj28kGJN069wuLRxzFxNi26kgStFoIIHEavROkhxUxgVJ20e6FgdHi4l/NMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gzn99Jia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gzn99Jia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5D4C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705804696;
	bh=PwRN39RaOnpLNL4BRe++hDrdTZQTz6YTuCOyvyU2aeU=;
	h=To:Subject:From:Date:From;
	b=Gzn99JiaTpaUongmTdnEddfbOcETrDueFVz4HGDK6HxoSYle65I7y+4wq+hNL8sbe
	 kgbbYNmuExFCnIoHXWDwyUHFTQUkLXOOHkRMKit37LZC54VwFIrfitEF6fhigszlJb
	 BFmnock6XwFHvsiFZcZspFRvdcFrVa9wMqlQzDCEkHJ+8Npi6+eC2ohflI5euueveg
	 a5LBoH++ojyBb/ex98Bdy0Qbi27aV+9hfb385wcGTSZRNsPNLzPK+f4NYJqMpudwsq
	 bt1ZZoE8JHRhfcsCajNHB4iXeZw44vDKJamIrXE9L+lyly70iPlzO8I8sCRtD7NRbB
	 twRdN/Ax7YcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E95FC47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170580469636.24568.6410101858588837547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda8ada89ddf1d295470695b3090d9d2948465f7bc97385dd22eccdc40c57472
Date: Sun, 21 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705804696
