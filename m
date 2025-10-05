Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664A15665C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759682395; cv=none; b=Y0LQq18d6PZOO26KfqIJ7Zz4xKOBdUUbnEachTrJz/OsILUt++b3eBz/El9YQK2r5rVVoRQf6w32tqgIpDUt9G6ARN00urHdAOke3UdLlqE+MksXaPbh86otIg5y/EdGgaIZzS2CuCJ7UyKvHD56vs+f8Cwk3HJQk6cRqVKGuR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759682395; c=relaxed/simple;
	bh=v0UST74ROESgRPPZvPUNP9SsNP7R8KJsfaZbd9nVkCo=;
	h=To:Subject:From:Message-Id:Date; b=ez8aff9yjVLTkEu1p90Y1HZaWF8aa+/7tEh+IDhlVWNAqD88f5lltzV5jiQu5BMn20Gn5hnwOP4213yrxA6f3E8NeNOfSyW0uAZEA+pgONYL2Ex+sujLqFbt4xOFRwHYOW3nLtsrvIXKHTKag3eVhusmGE/rwrbw/ScB2o67u2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdeW2Fu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdeW2Fu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A4C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759682393;
	bh=v0UST74ROESgRPPZvPUNP9SsNP7R8KJsfaZbd9nVkCo=;
	h=To:Subject:From:Date:From;
	b=YdeW2Fu6Tgax/5c5MLO1owL0W4PRYr7+OgUmY7+7FxY4R0t4YWZc5a/uXU8N5DAik
	 32Qidck6tJNzh9WNET/zGhBleOcRBVS/5JY7h6iq7SjY3mXt5+EBAqRW7FwARDGzGl
	 D075cq5D+R8sGiIT+tOTcpyIi0igJUTZKab8dYiCNvewb9PT5JNXZfuS6cOmyXA4jJ
	 VPO2TEGIm3QB/KhcS72o/u+g3mds59/4vU4UaTSmkkYYi9Klqp5B6h82tIUizR0PMX
	 WALboCDrf+GHRBVKJWrpAEl5ckoFVc1ZLONy5MbUrW2b1a9T7AZgjuBE1EhjWkLS7k
	 NIZZRZbUOTN7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95199CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968239358.10610.5528499756411679617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43feb4095b597e343bbd2f25fea247b473d63ec92efe48e29f3b325ab202a7b4
Date: Sun, 05 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759682393
