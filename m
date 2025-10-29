Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08628303C9D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761718794; cv=none; b=KVejwmJRm26PKc2YeTmuZxcVlxGM1Zjbt2sNwkmrLK/RFXp3UPx+frEZf4G89DQVtO15RfHOdn3SeoMhE9rOFQQX1hDT3rpyUwE/Add69OhHEOzRdgZzHxyL0A+fhpkpaJCrjfseleeA+c0W7Jcu2kg7ZIZbXSTy2aaRcOI2mBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761718794; c=relaxed/simple;
	bh=p3qpAxw8KKEtfTgWLiCEvySnbZ/QknbNwmKrPstqRsU=;
	h=To:Subject:From:Message-Id:Date; b=Rrbo2tmX+NBtsftS5aNYWM+ludnMu4eylfNgZ6uTxYs0yRxSVq6ZcvbMT0x3rK4jxEKB7ly3oqMXHyOv8AqeXnlwdIL9CAhZcgdcBAPav/ughhY/riFT8DOs/ScxSn9rOj4b+2BtsMzWQF3Ej8lEGAZZq/JsRsPvmuAQse0ipjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9qGUq3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9qGUq3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5140C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761718793;
	bh=p3qpAxw8KKEtfTgWLiCEvySnbZ/QknbNwmKrPstqRsU=;
	h=To:Subject:From:Date:From;
	b=t9qGUq3q+L1qdBOwmg/T6LLwkAte6iXL5JiOtg2xMnT+ykUXLLXDUWpGCyY6Qrczy
	 ACUTc76BSbBCuSx4kOlB9qeE4gEwwSx35ioqaqCaP6VyVi8djJ/7kBrLTTh/n8tsGZ
	 bK3kKhrF1k0maDF9BHan1ENlFBbyO9LZc3cdgkI7rei430Vzzt1GD/Vmob5YCFLc6T
	 fVfWeg4asT1BiZ1FiT3XdcKYYTi1YwtC5rWyD1vYfO4IXIKl/JhFnJqExfxiVG2KhF
	 xKkByuJS9hDKdv8HFPJFtAJZ4Mz7388fuq/wRjISgXITe9lgbOmNADIGfq0galEX5G
	 xryvvSGnU0VGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379BCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171879359.2552.636937999126377845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7540ffff7751cf06d9c7bfde6a3faf59a59f6f9c8cdc60e2664d385b85d806
Date: Wed, 29 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761718793
