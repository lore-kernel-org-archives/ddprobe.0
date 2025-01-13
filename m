Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA7E22CF3F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736775954; cv=none; b=HGA2vODgXUttxZqpVG1NKfAuSLXqc+hGfPWbS1NuTS/vH5HzXKqXMyGZXABpEQ04SlhcBfm3JwCl6Hw1qCqOmAGQzyz7yKoa6UdnbGrPJFOvcKUKHhnAIRYruvLMs4pG553SYIDX3Vv8qqKHMFcPSiwE2VllJQ6rxSNUDgvkxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736775954; c=relaxed/simple;
	bh=S8ePPe6Urb77RxcNuVs4+LNTd0gTKKdYB5ycLjGwpd0=;
	h=To:Subject:From:Message-Id:Date; b=RI0uNZ25HvAgFnwjTc/QSEVZ50lYzQp0nG+XTxPATHR95yKfOq/YhkQxplvpTAwaapd7OZyxBjm61nDuLg1HM6sFzIsfNLFzR2lew67IWRRkLgml4O4eL6YI0YhP83VXu20/j9jTqdHLgQKBaKMCe1fX/nlYL+rx6S/SdgzM+KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6WR1S3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6WR1S3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874EC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736775953;
	bh=S8ePPe6Urb77RxcNuVs4+LNTd0gTKKdYB5ycLjGwpd0=;
	h=To:Subject:From:Date:From;
	b=e6WR1S3dRWR6RP/v+Y1yQdk3MUxXfLWTvrMBfQ83gS84ZFJmp0IXDIptix6QCQUWV
	 UHPnuts5qnnnbgnZD2MqmKyMxfwaj8jFnTdjoJPcgKiAsO8j5hi7SaOrIAlmGGixYQ
	 Fc5EjS50To/o/8AjZyZksPkAI3SHElzdk3lnAYvH0Izb7TJ8w+8peWi8MLe7cxABzC
	 5g+kg4Dla4Gp2oFrrOdanzjha+SDxAsjdLlKxVbW1zEWLhSpfQefiHffLUTJrC7ztl
	 KVYxPvNpFHQJ5A8pKYO6uf6W9vuPZkBgHWWzMgXagQOgN7XT4FAZ2fvuUnCalp+5Bp
	 R5/9NJf9eKznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B41C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677595360.7741.1140452304607932967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6f1819375d2a1d434fa2c5e4f56ba5baf391c1ab970131b0b4b212f1dc531d
Date: Mon, 13 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736775953
