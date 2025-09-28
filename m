Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D123D17B425
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759090193; cv=none; b=hLFMUrw/ReMv+9AIVseJc28oRXUlGBp/a2S7+FQ+LJVKjMLGd+o+xOXoERs5cMJ9efrNE+mBBfFDGuRHY+czpxJWK6nvXvkEU+7sVP6tjifvKduzP/PQxEEeCJbhKI0UAlsVjNZiNHvX9iPwqd63nOzvCaW3TQLRjzgthM2kka8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759090193; c=relaxed/simple;
	bh=Jrk7ygnK9D2k25wBGgMxPeeeigQ+wrLfIqUSeH4BQhY=;
	h=To:Subject:From:Message-Id:Date; b=tROJS/5OMR0qnipLgOeN9FHW33b9O1TBHR1Wtb0iDdFuIV701We68j+/qSxm5yyhR2/KINu89Mg5S/yy1x34SHv4f7OuXAmTKZLoR5DP8QkH45GYcMZ6S4A6M09eWFt8uXHT5MHjZnYM4LcWyqWZyqr20En+mRAOIRFEP6uprW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnSWZHtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnSWZHtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A552BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759090193;
	bh=Jrk7ygnK9D2k25wBGgMxPeeeigQ+wrLfIqUSeH4BQhY=;
	h=To:Subject:From:Date:From;
	b=CnSWZHtWzrh1MWONxtgXOuQSFTsF3yZufsd5GznezZ2gM5aaiumfatBVGcs7LCsn+
	 lM7CxHDXxNOx1vjvGBKYj6p4R84in+LrPuacUPKdyYYXbNpgvTzol6oN8IiLxGemNt
	 +A70iWHWtCPexGiDJTSIm0PvGswJbc4atccz7DjBh1zu2gBAeA2hG5MGwLc9fCh1te
	 HOJOso/b2rjquFAODovNFC2rzYa36slg5oXnDN5+tGh9QNNMPg7Ul7ryY9TRX9p2Rg
	 eYsDYN8YIJfVZ7zwvNHQUmHckNL5P714MEKKSI/BgL+IHKlGHCL6G2sk1tzU4sNZWV
	 pz6gUSfmHSAkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F0CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909019357.2769.3142794024574708995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b29f7a276d7b5e206bd37406850c36a7746909be69af93ee669ab001d14cf2
Date: Sun, 28 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759090193
