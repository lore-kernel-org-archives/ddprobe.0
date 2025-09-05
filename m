Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1838225B1D2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757107794; cv=none; b=e4GluXamIMOH0Q6nFNtR1Oi6qpnnfjyjdR5x270MeLHS/qTeGtHiVnib4rE68zpKS7mcE8Frmlz4q6lud/XGs89OVKeGPHDIHynsUjjojma/c5/vrdFGmArQgW2I3weIUffsP5/orhHidzCyFA62o9T7BOBzAsGFDAw8X9tfmWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757107794; c=relaxed/simple;
	bh=5ZxQ4B32wLS7+QFLd/DsKVy32YPzVvp+VYm7BBTrYtQ=;
	h=To:Subject:From:Message-Id:Date; b=TJFU70ypPq4s4ggYOf1TXVpRRbH8ry+q0M5c8rS5LibPGrq59WkBs7vlIGgW0yxIytV4VyYms9QYAm+CEB0w8gM26mTwEGcZOTYH8lQu84tASYUIXmMTrttyepamboQ+tQ8ei8d272zs/B+E+2/6EO3qZYDULna/IszPk0CQPos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=re1d5ax7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="re1d5ax7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6736C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757107793;
	bh=5ZxQ4B32wLS7+QFLd/DsKVy32YPzVvp+VYm7BBTrYtQ=;
	h=To:Subject:From:Date:From;
	b=re1d5ax73/f6DUO/rBzP80EVC7zPAEEU/0EM/1LnYlX/wN5iEffhyls0uzjOS5nz8
	 8AENzh0N8tD5vuHX35JY9JKQK3AIItHQEUS/0vBO2vXzcx7gSBiB+hNpyYUFBM70Ga
	 5+4uTesKmNEFigUU9f1YqQY+gSfdRSkc5GfFRHX6zjLJ6mDjI6n+0rw1lfvflcc8fb
	 J17c22wcWkWQOM+3N9DtjMErVwTW3Y6+VZzU7Htpc/4oHVnueo/DfpM+kcnCyN4Xkb
	 +MFPM9+0owjeFCE/JZqvID8cdujpan5sTvKE4Vq4michize9217rykAQvBzTt+8C5i
	 TRxFJaNTaDoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90998CA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710779358.8992.16492638808492615571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f9e89550b04ab28b611e34225c1aa4f5ba0b147417e8a5b89dfc82eb99c0b5
Date: Fri, 05 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757107793
