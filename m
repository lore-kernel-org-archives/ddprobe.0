Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002173B8D79
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765116174; cv=none; b=BvhPykYsBdXWNGz7dExmaOdGM5NQ+lCGq+P3JAa45oN2iPQRtyw88E7A1e+DljtSScfZS1HRenvadWgDpce3op9ZK+2v5GLph2TZM9+6WxLXHM0LnbNTS5cuk4waQtTGvGduw6KUAQ+XikK8xtZwwx7AUKAArgXqt7p2XU7GuyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765116174; c=relaxed/simple;
	bh=TgyN49GpK//89opftuE0rQzLT6UmWuQ6jBNcbPnD7Cs=;
	h=To:Subject:From:Message-Id:Date; b=pcL2r/EFVBr8WbLql4qIzdADpjQ/fSMd+A4p8mJiQnEgXs1NwPwTrand+Zt/CXBFHm+SszJCTGkdOp4gAmPcBW6J60CfDCGLuFOZJuYVEK7u0i0OQr3bni+Zooz6EeQ+adQI6UwKQpNOROgiqZIARYi0HZGR0tZTlberadUfCBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOEMHNtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOEMHNtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9932C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765116173;
	bh=TgyN49GpK//89opftuE0rQzLT6UmWuQ6jBNcbPnD7Cs=;
	h=To:Subject:From:Date:From;
	b=uOEMHNtXKh2qzkgtVAdGZxqUhjJSlgFLedIBSLVOWLaI0laUHDX7zwUv9XHfRLarg
	 u+49pGMN1o6gpLclVVWVXpB0jPDkg/NNrPozkrppGyUQXuMvaT26MGG8f+Ja08nAZW
	 b9Qt9ak58VZqaOw91oQdDsCpPU6CrUW0/YdHiPDpcPEaNFSwIhiUsru6XH9DynRW9N
	 mO5u6ALTD1XWZD6o6zOZimyZN0Nz8alj3ExCr1H9McaacQL1kBAYf7EeXDMtWnzOc5
	 ijuroszMQWOcRILMKZp9bSjMCPXj90jbM++e74pIV+xgr2nQJX3aoyM+QCNkuat4kT
	 0FNC5iio+4fDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96637D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511617360.19565.9947551962981525550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6511f9ac99a0102bb4f64e51d1c070704e8ed581419e71a0cbec15f27ff882b
Date: Sun, 07 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765116173
