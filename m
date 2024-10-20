Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F5322E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729400754; cv=none; b=cg8jApSTNb2cc3fmht7TgtIDJhaOddoD/ljBbVaODcJ29dEEA5JjT3varsg1vnMr8jdJeYCoTvmDN6vaXhaMpSW0+3xSbuactmLnCU8sosctJf1/5KYmeU4INln4vgvXX97fIRaRdE2jVNS0xccZtJhs5rGA6mJxGaFfvLnXmYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729400754; c=relaxed/simple;
	bh=N8FWAdSv/kw1ZMflofn+U2wfKi9PuGoGodwbch0qmRc=;
	h=To:Subject:From:Message-Id:Date; b=eOClk1DvYpQXvb2frQtqLK7e+NnFudWw3C2WsEZBi5LS6hv/S+PgQLkF/nr1zz0nsQKu5/yDuRTWd5ozPuUuezfoh3AVFGtOTlghreLK3shOCvAe1vDOWlnT3k9qUj+6XnbU84/E61FxrZNvRZ5z6YnEKdX1C6NgpAc0eYx8Eo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEguIHqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEguIHqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F97C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729400753;
	bh=N8FWAdSv/kw1ZMflofn+U2wfKi9PuGoGodwbch0qmRc=;
	h=To:Subject:From:Date:From;
	b=MEguIHqLwkoPFuJf/MVfDcsbb91yHPeE8V/IRjp7C1orepBYQx5OSRlw99zgKtcuR
	 9Q6lU0pTaNdUt/mG6KNFp9xpXh2DqsTEpjsWyDRU88rl4nQfMkEGLA6KolGeAhz+so
	 y3oHCk3OPMkki5Z8+B70rrTsyalgCAoKZ/E/ykyNtvWHtr8KcHAnYzMk/es6+Y5gSg
	 BHs3Yc7qlI8bDLqWaAxc1xlDjiJcO4NJeMnlmLbRZErNdqhq/FHL6b/AkYK07fKyzC
	 syYOAD2qXunUDChoLlIJuCWbnOKpNOAwgEF2eSJzOZRR43+cD8SuOIeRfItoiRAemy
	 hakMQg7yn8XKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EFD3C934
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940075359.9610.6043201090372076547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096375fb740c59d98d8cc9e89dd33443c1002291641796d4b56bb50f1971356b
Date: Sun, 20 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729400753
