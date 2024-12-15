Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260A318E76B
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734283554; cv=none; b=hBx1DB09QrewPrg+IFe7qgq2I30eR0xVsxzgLvcgk4gXVSePIKUHQFWBje8jPUQbD+q205j82OV8CTT/mbXvHsA46+XSx9I9OVkPTdczBJWD3Swdn3vwMJGSS2BfanbTBLwBLE5BYa2yXXygB9AdfZFW3CJTzap9Zu1a9iOeHdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734283554; c=relaxed/simple;
	bh=fiKvvhzBOI9EdCo5NH4uPRGzqjVvO0nDpyvsQkCtJxI=;
	h=To:Subject:From:Message-Id:Date; b=ajJ6ww69pUgpHdWo+QYEGsTyPKQE7+HopeQh7GNyh27W26HIbXQY2ILaT7PLPcM0rp5L9dbYlMCe45zGWMtrWVfZ4YZFiksck0bqPMqGy7AEe5rGkUAcItuSTAVhUFYLoGfo7PUGzthAKTbM9MQBXf1FJKX+uZrcZR5y6Ekco+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+vaivGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+vaivGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD8C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734283553;
	bh=fiKvvhzBOI9EdCo5NH4uPRGzqjVvO0nDpyvsQkCtJxI=;
	h=To:Subject:From:Date:From;
	b=J+vaivGD7LDTeZZX3qxcPxDCqv2CutbHRausLbw5BrsFY+r3ChhidF/NhPEHYabRY
	 2Uf5ewOv6SsRsDZPHneqESmsg43qT0UQHye+iU+FvVH8eBcebh520KnN4slnNQX1Dz
	 sC2Ebe8+nm57O1ZtcVZcSvCXoHsqTDhY9L+S7p7WL6VmxL7l3TtkC8Z2TmTxvnV1N1
	 vAPai7z1N01RDaBFmb9ka6ymQmKs40sc9e7dOwv8WtXycUfgOVWT2bUCAtuVtIA4tS
	 kdzuePtOlhpb/vJJ2zTVtbBuSdJZFWgZXxe06Ra4UHnz/QvpdTQXPEcEa57lhJjBNu
	 52CDcFCaj2aeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C89E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428355358.29095.18325363437213390323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a197d7246de65ae41bff3de2dc5f6557c65432b434555dd99fae24fcaa65eb2
Date: Sun, 15 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734283553
