Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24156291C25
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752344394; cv=none; b=e/uqOjOumzzj6wx6h2ylT1eFtU7VbYjEbdiYTDDY5P3vZMC0zw+OeMm3sBkTkv/ydWKIDU6MGpYnVNLNrqVbt5TemK+iDy7Gg79+nS9j6LVKNA7ms6FwxiNKYJfrJ8Yuwypg11LH9dHS73DVRPzRIqZnIpedNcs+2k/E+0VlzXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752344394; c=relaxed/simple;
	bh=wjzlgifK4iExi8u4KU4mYlC1PPLFbe1WC2wcgfvi1Kc=;
	h=To:Subject:From:Message-Id:Date; b=ArB+UIIYKaqOWaXx8/H7U1rj0Q9TMngsCy8k/tGtlDy9hGGFsRSbXYQ2RhzoGOCKYJ2OR87RgFbBhHgBUMrmJqcPuDf5W6IZcuFQlnP6Jf+NQ9s5jaCZeRC/Zg09G/NOD0bWtK/barx7AHDTfKGS00ISxo8JVKZR84YIqPxsWXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up5KW06Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up5KW06Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA73C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752344393;
	bh=wjzlgifK4iExi8u4KU4mYlC1PPLFbe1WC2wcgfvi1Kc=;
	h=To:Subject:From:Date:From;
	b=Up5KW06QYKIhpsQjwfbMfgocr+6PnLsxIuzpgGLkeaNGWRM+/mI87axLSheubp5r5
	 s4pBxY8HT/jmZCMcwBmCDkKaYWCQyIeMGNNKs4M6VeYlidghsURLteCjEoXz4Qn1Lv
	 cIBFWdybHaPNjTCFF3InCkknVdqr6ShDzOCmis3SXg6Cyy7fR9iCryvkIHT6R1G4yu
	 ryuRWTAQolLOqoYOyMCesMvFD4Kt9GO0N1ZJQojv9avKeXja+L7EUR3eH4Jlbw/AXH
	 hIw+9Otais1PL4AHmvPYMnJzoAAjAIEq2twPVjtpob7fc2zfXADVtXliHwCugB8gUF
	 UHEFTMIDq3LCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228FC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234439357.24415.12686318083669825078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb26c9d768ac99beb3652f44d59073f3fd67acd6ae1a35d9cde690c27f34239
Date: Sat, 12 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752344393
