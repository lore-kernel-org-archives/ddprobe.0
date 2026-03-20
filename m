Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D66431327F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773971094; cv=none; b=q5DjBaYFfPloOL6F3GXSXbtnDQ+JFdLm1GvoI/vaLdC88WZGw9bfW91RwaEaFjNpBV4ioY7n1UgxaatUpsYM8crdfGU0pHPUxe5rJHKOfEbvxAfcOjFPnkxkeM7F1pc4PRG96xHN8aHlKZdh6b8iOxq/sjRWC6WnhP7wxwpYXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773971094; c=relaxed/simple;
	bh=2ewUmvPAZIq/Ho3Kobuq+pQLx7niMeyHSt9js/1CdvE=;
	h=To:Subject:From:Message-Id:Date; b=CbiLc1DfCCdLeI6B9522bO8YJYEb8J+isy1LyZbnPMEdA5SxLFhSrHrPBBdfD5psN7IBT5ILbexZK5SOmCcaHGQfsJfcG3+jCa07sJPVvm8IzkAIWrc8Cgn74r7dOsCW5Ohhce701kSjJnWmXorVDqfiEHa/6yVipzRZ2ekilMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/z/HdUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/z/HdUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791FC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773971093;
	bh=2ewUmvPAZIq/Ho3Kobuq+pQLx7niMeyHSt9js/1CdvE=;
	h=To:Subject:From:Date:From;
	b=K/z/HdUExP1ynIQMlhkEZ6XT+8SFm5XQ9Wc+J51T2ovE49Lc5nD5ZP5yNSutwSY8z
	 QO15FrsYlSW1f5RX71WUf46tb2aHjDEff4ITbzqloQGTr+sSt33Yxly+0SaVh6Iv+E
	 oN5YHMcQICwH2p59BimiJo6P1eNNo9alUmlDrKdHBhUfY97epLecXYMXeRe0e5UZ2O
	 P7+TY/ijWNd814MiiroZfY43ksyBfuvO4thEIt+a+u8EvrsykXCfVv1OiV+bkbY9uY
	 bvPGOD57BtiEGggXaaBlBFd9yTndLIc1IEEeuQtXVOyGjoLJpuMRROz8V3Jahx1z+/
	 NJ9HMRO4Oe0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94481109316C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397109357.25085.417368292584052832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b34065414ac71e1a7f49bd95633237080abbd0a83bae5411c7b62b6a0249dfd
Date: Fri, 20 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773971093
