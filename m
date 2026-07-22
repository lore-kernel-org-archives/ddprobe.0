Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C8F46F481
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784719716; cv=none; b=GKvlzDQz3/hbjiS5EENPOEG6Ak60k3CFzWuaeF/3qmDii4M67b8o8TRXtz4gsvG2jomeM+8mgj+8ur1k22n3F650/HLhO0QPJUPN6KWnZjGZNbS09OTycH2bHDmCOLYm3vp8GKwSa4c+bWT+BaQ4j8KVBRJ4pl80Pgz6wYImWyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784719716; c=relaxed/simple;
	bh=gHf9URK2sQfIVc6uSi9ky1ke6beSjmCTrUftWyTxavw=;
	h=To:Subject:From:Message-Id:Date; b=RvRWiavlKU4FN6uWQ1z+PabBJ/DtIXvHJ+MOYMe8QLY/maO7GhOlnUxkaUWQfCsZUtBRQYDGC3gA3pyaF680MPxiuK2zGbE4DIetKjega5dDETkCRuoNr9VUwVMoONd0lk9FWhc8kXnl1ByCDplgAKbWab+J3GZmS/uT1dvTdLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULUm6Hj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULUm6Hj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0697C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784719713;
	bh=gHf9URK2sQfIVc6uSi9ky1ke6beSjmCTrUftWyTxavw=;
	h=To:Subject:From:Date:From;
	b=ULUm6Hj+h2/tZURUBCTt3Txbjx6SkyjS+bFxcT8Uw6pjKSOLDeIIygHBd+UYfM27v
	 hCSoXMDjjxfRDcWJyrwZF8M3Y1C5FS4IVD6ljIpX8H+tF/IxvfKBlYEQu0XTnovrEK
	 7+kO5yNnsWnwpvIo0h0xi+pp+YqGNQI3B9ViTGnaKnilnN1KbMWWrawAuxZhKHAwtT
	 heSOZFXkVIrKSUN9DajyOWjQE0zCP1cTWKCMwreUbJV0CWTm8m3FerchTb1eWPjcbu
	 y+SWLZJ8TAib7GBSO9PkOHb+LoOYRHWV4NcgC9NWA55lomuzy9bEVvfWkkFvyXaXUv
	 hnFBwB7+7UH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6718C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471971373.10425.14070169672674892453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8683b5ab98823f3b637c93f394b2c4e936fdd4d865fb8958322ddf7da1ac42
Date: Wed, 22 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784719713
