Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9630F938
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785871234; cv=none; b=MdbIXi3HNjC4UDO3Ifv2z6KktyRedXAwFdSNfmy+PThytn00FZVQEhe7Mz2G9KOCDC5+DMn8PAVzSPzLXsTyMgrAsTDzRtOr3Of3juI+fthpQYqBtRImZLJnKnNRo6Oj6U9eXi6O8RrrxxAADD7aTwuf7VcVv2UmWoG3wCMe3dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785871234; c=relaxed/simple;
	bh=PrHKsKq53KBWgnPDkAyY+T4PvbbBlhH7yvwudmN6RK8=;
	h=To:Subject:From:Message-Id:Date; b=J3Q99xsrQGIOM59zWemyd7N5KeaiBdyI68qksNVjdz7vuFCLYh3uabuVMcFGe6Il+Kpxue/55YgqwYLMNNw+Q2m3nFmk6T0YAX5q8EAj32L+bphHuA6EA9h3ZBwoe9hdI4z/HEm4I+FCJ5O3+r4I0+BdzsuoOvO9DWlxDfT8WgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhkSotNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhkSotNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF66C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785871233;
	bh=PrHKsKq53KBWgnPDkAyY+T4PvbbBlhH7yvwudmN6RK8=;
	h=To:Subject:From:Date:From;
	b=bhkSotNVmkODlaOhiStj1EfLMBCRHZVlDSXOL1A7r18CHanSvdsDgSr1qsaQqjKCa
	 30UYqaYVnXQbHGm7PF8Mpw4kNPtsrVZodPwy9KgPrur94KGm26ScfWxw9CUtNy3V7V
	 Lelzyk6Ss5k5sul3nMQDtJRLeNHJ5SvbOzvoHV5QjqeSVpd/vU/L7ZJXViT1kQq8Rl
	 CtWv7hmba1ITDzSHZU+aoUmh+rnWXW5Aig8AUvbbPiKvKOna7NBUO8Ol8DOfF4INI9
	 nsHChJrAv2dK3T6wGmpeSlI1ZlxXKCljt0YJ3yrDdchDr4wcLWMAxtny1VkIA+kMZ4
	 7Fein4B1IgjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD8C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587123369.31172.3017213281432000883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed483fc9f4bcf6b41acb3121f1f381e45d71342271f24f2cde56b0e6c53ff20
Date: Tue, 04 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785871233
