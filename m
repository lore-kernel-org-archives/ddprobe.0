Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A7F2BE655
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779398554; cv=none; b=WiyG0CT2xkvabhC0xfFwkOv6OWu/j4aZvlVagJWAns9hZhiARoutiSp0rLLUR7a4Q4k6OYJF5eKRSKDqOFB9wukiz27S14xPi6KC3yLR6ZSP+juYxTz1kXtxhmVk6N7FczadoA1tH+G/5uouAIvgottWUW5Zq1JZc9K+cfN5t10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779398554; c=relaxed/simple;
	bh=tTFV6bSY1aU00DLm80jRnxkpNgAAa5S3vQw87I2K6HY=;
	h=To:Subject:From:Message-Id:Date; b=AapDa8qyiN0He3v+vWUBq4G6ueS5+B8gfRYiyWZyzeGZA1I1sJzQfkhUWsffI4YuJJocCGNTaNswAw/zxJsJD0XRdwoVyTCxEyTPMbsL8DZWZrOSEIMmKkjoJ0Pfr/bWe7SPEFv0sc+krC7y73BGOjA+GO6DuN4Os92pYX0i6lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOSI9lh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOSI9lh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45CFC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779398553;
	bh=tTFV6bSY1aU00DLm80jRnxkpNgAAa5S3vQw87I2K6HY=;
	h=To:Subject:From:Date:From;
	b=FOSI9lh6mW5lz6ZC6cmGGKmAk+HnRiWFM0WSIAKtosg5rOuh0leUY2Yvd7Eok9rof
	 5RjpPwz0AkICqSdD1v7QZnbZPZpO1ffWSenGVtBC3xmLxM6i5f8dBhZf9imR2xl44e
	 4uzVuSBlFxfWdxUeIUXx0it6YgROOfhU2bRm6BJrIFsgpOB0x+lmed2C708P6mjXOp
	 KpqmEJDNh6ZTQok9eOLdvoTrShJsc7Pri/qMF0EVJQuqzFfvu4vySa6vyAbI6wMprJ
	 M646vbxxjxD1K/0yJrx5RsJd5Rtm6urucWq+gPtGSKwZl4PA3lvMCWyFaLFvcfSQDb
	 CdXs5nmy053/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9808CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939855368.28329.922376617578683932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cc9aa63df7a1adb013b29db17e8ad46f36c66bec41eb37bd35cdca4706f925
Date: Thu, 21 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779398553
