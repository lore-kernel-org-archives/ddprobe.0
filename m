Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38366215F4E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737577554; cv=none; b=U3XjzhVj2qYGOvsjXtuzPySchvCryuItzl5KAZZDHWfSZKXfve0F1Z5JnIffYV979dMqNRu9VsjQ46OUDIVpdbhkiMuAhnljPvUDhQqOPIlrphNNQHB1J2rxGcVH17b2oBDjQetji363bXdF5BBMfL+1XlPJFW3ePc96IBTj9/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737577554; c=relaxed/simple;
	bh=D97sf/ArLD6Yppw35ptWuLPZDxUPBGcX8KL+iHoEKjo=;
	h=To:Subject:From:Message-Id:Date; b=AeI5SPRaSqcclDXjVUKZZXaXiyq97YaEevG24Bbo0Pm58NKe4WKz4j8l9SI2BkoH5yfqVpSR27cNadomCe/VDpH8Bn0tet2h7O/VtXIIj4LAelL3HGQv/YRfYGR8pEOWG2UBsT78/PEzgpZu9BVQQT7bQTZOiShHQnSkwnamDss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PifUZOqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PifUZOqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3060C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737577553;
	bh=D97sf/ArLD6Yppw35ptWuLPZDxUPBGcX8KL+iHoEKjo=;
	h=To:Subject:From:Date:From;
	b=PifUZOqoCFJzqHfxkhsmoi9FiIVrAHJ788fl7lS5V9+UI4I6CYlC0Aa97DaQMxuiP
	 0+wdWzVrjhouw74uII7Qi8CGc02IXvnbNJnBFTUPP3Du618K1stIe1ikzd54/leerL
	 OfQrtg91Sp8c7ynSzEQFWppw1LngxLuuBIAq1zV7gPWnhiC01r3Nk+m6KxJlZ9F1vK
	 Q03S/VsbdmQxUS2C0D7y4z8hBGB0I5DuHocqpZ5M/bmULil7WceN3siK8cfCp8gYDG
	 B2GZSbmdk+0FG5/R5qtZxA9EWJ/KxDJLYsDmC1vbKjhYLNT6ZWdhF9RVqwTrYRxQez
	 RqW10L/06tuRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91925C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757755358.461.15614046905647450340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b8f0ac95dce37eb4cafc90f5c65af7408a5aa144398541a16f1f18de595730
Date: Wed, 22 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737577553
