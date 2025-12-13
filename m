Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47671EB5F8
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765662173; cv=none; b=fjyGeONI0vSEmVgbQ06Yxz6VSopPRas/syuWhSKXl5Kx839QbKJIuyQHrbxrpf1bepMnAOPXGaRFfpoZ/hCu34xjSn7AbRts12/3kdtW7uQ3JBZCWQ0YV3G1HD27daMlEFfXdiWA39kT8jT1sLgYEiuontGIZ7ncT8tQujRwpFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765662173; c=relaxed/simple;
	bh=82pFl1SCCHcBdhYyakL6BnD0ROC0+oxYymsb3dV3XrU=;
	h=To:Subject:From:Message-Id:Date; b=M9xA1kg4u2jOK2vdL6yY1fxcdZAlnBGvqcPnidhh1WmYnGWsLC5/GZs6xo1/OlGO/ZohqzJhIRlUkjZLjKCqPo+AEweUxmHzdkmxeKt43A8ynFWBfMMYiiFKWstHBxtKZbnkK5McIcDymgtW5H8APL7gO9W32l/ND91SBjHFiYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNHGzUwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNHGzUwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765662173;
	bh=82pFl1SCCHcBdhYyakL6BnD0ROC0+oxYymsb3dV3XrU=;
	h=To:Subject:From:Date:From;
	b=DNHGzUwljKooH9n7HwYg0vQsvcqkA5keiViJxl18M0f1iAfmYjGexCVsZf9+gzPHg
	 17DLoYGBVV0Iv77xY08slRZdkVuldxEkyjueqkcpYHMTKmaXxmxXHWpYSwEOkZrRxA
	 kYHAe+C1f46njVmMbi7RbCrADgvLtFMhafVmyxJ6lTXob3GYyszBDFFvNAced3L5mq
	 johbUHb+mG6T8fTPahkR3Qt6Elbin49GtUb1B4WKAsvZ6j+lypEVaI/gveZkohqnMG
	 YE9qyuKtCZ6lYQDkI39rHuc18yHoJvzDH56b0WgSRqQwMLAal7Ptspn/YX57SAjryA
	 9XtvdngZVhtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F1D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566217358.28935.5306119361692591812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6524d0876876444733f4dc97bcc0b24958d421ca6a6d962e054f24c290469309
Date: Sat, 13 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765662173
