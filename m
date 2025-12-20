Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299021B424F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766224434; cv=none; b=cgd1WbhpInbo/vCy5bQ3yeQIbrv6XIw5l8r4vqnkCEOnXpEH3u1/r5AzN6W+Q4MHMqgjVlreJMg+zLI5twQcyTAdVfxHdR1WSi5sQxAiLZUa4uHy5F+7AXE5mvahgo3rCs7/vPY6ojT2iP/IFgYGaZhpvKmqE67CCDhR+LO3XYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766224434; c=relaxed/simple;
	bh=ORy3Z/LrfkNxOg6LNa5WXb0t3sq/Xgj4HYVCJEMZiNE=;
	h=To:Subject:From:Message-Id:Date; b=Tpnke5IBmue0NOxKqcU/u4+fu7G0kMKOSDBylIon0ke+SAErLdVO0ZP11t5Xt1qUr6q8p3hAYsdqIFokKOiMvWX2/j4hCPzYnpQcb0cj/ly8Ll2JwdThECke/qfzzwZRXnfQIsotyHOiEGDKyaRCah+TQ0hbWAZ43m+NVcGL3wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecpfLyIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecpfLyIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D4C113D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766224433;
	bh=ORy3Z/LrfkNxOg6LNa5WXb0t3sq/Xgj4HYVCJEMZiNE=;
	h=To:Subject:From:Date:From;
	b=ecpfLyIYeFbviOsO4GhMI1z1M+GCEUc37A7WEik81iv5M85s2J5wA3JTxTXCqzgNk
	 tYrq9+s3pp1j+a5ilUwbgm6pET8K/7HrmWT+DBU1SmrJdkpAEWB6X2VTX2eHZeib0K
	 ylafcvB6hPx6v0H9EI6FAzVSsEIXQ6/MszYsjZ3FQdBkeGYCTRjkjAse2JEwpCYshQ
	 jbSKFPl9DmvnVN3UVAVB5KOukTBY7JH0ijp9LMqkDhxaQEi3ucEOIen32nEbpjUTHC
	 6W/x1gerRhFfSMwNOsge8yXFUHbGUl4bIpaaoGJIGgeLFG0YT9DhrFo1sr4kmWJmLg
	 J6J91gnfeW2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C3E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622443358.15321.2029478330209346767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a51a836165284915847165e1d67da5a4c46b6bdbb04dc487979b7170cc11bb
Date: Sat, 20 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766224433
