Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81E2FEE38
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752779994; cv=none; b=CkN3wmDGTsf2HyzGePvAymbZfAKO0AjM/VC1qOA5BxU2Pw7nZg23lNsC2tTiOGMTJpS3GmAtE+xx7e8HHaL6lf5upt85muP4XeUzr01mI0iCsuvG9FYtMNO3Cy4ZRwqyCTIhxFOlmlTrzDbHA2DwtwZY5pTvy5ysuNCUpIjExhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752779994; c=relaxed/simple;
	bh=klNPyQkXavOMgbW2Wpw0NittkTgfGutqsVHxp/TBqfw=;
	h=To:Subject:From:Message-Id:Date; b=GAWAxgl8lahBXQcyubz/AeRi3Wb273E58kaHKQLMaoQMgdbkj8wYS6PbxxEJbroi/RHPvGtWdlH6PgF3QM8pYY0VtOmFbWnJh1EeHHP+ttKSc3eYKrYdXWA6+DQdDoyKWdJewpoJ8C8lVcSm93v5lU7cvXfNMpm9HRX7xo3zJ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7AiLBgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7AiLBgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB61C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752779993;
	bh=klNPyQkXavOMgbW2Wpw0NittkTgfGutqsVHxp/TBqfw=;
	h=To:Subject:From:Date:From;
	b=e7AiLBgZ3KzqOYTHi6NEe7G9qR02ZlwkVxHjwCL5qqC5aE90TZMmhs5V4M98FIvGh
	 hRaa88ACPilW/qf9pnot8oCvWGxUUPFTr289MGLIgRuYbPg3L7HfiVwJx3IBSQ8ygx
	 3xQhD6j42O8o9tRAev14X4nwcRF134KZZHMAn0t8p7JhyXjhEATdCxOkhyglwp+krv
	 gFqCcnBJsqXHsTU+iser9QZgLMhjHrGGRv/TiUPI8/ESxBUZziA0huCtnqmm81vvEO
	 hQcc1XIxcs8TCCdC4udguHb7NGQLZRG0fFNPYpwTuxHROdF4LULsMmINnz7aqEX2v9
	 D8TXdcsOhIp2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F565C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277999357.18085.11010668194067633096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b1a6202f2621dc8f314d1267aa47aa51811fffd726c5d15b9890ffb1240922
Date: Thu, 17 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752779993
