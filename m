Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB4291C36
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753957794; cv=none; b=c8Xa0QrAJGETPfYhlQBe143gvYUGC1L0wRSXSBh8+xaa69Uo/7GQpJPdpGr7gd71UOWA/tHUySvMVNfb03e23NMkUbvQDVK514qtyx/jYHoizE6K/McsdOklX5ipk3AacBkXNyeIf0xQwIF/Et9rVGfui62o0yZ6E7Bk0wKOG1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753957794; c=relaxed/simple;
	bh=ava1PDEXxI3jesmyxtqhn4sUXUaf3B0O0jXmgJDVITM=;
	h=To:Subject:From:Message-Id:Date; b=ZbFUMrCP0MTitvkDSf9X3wlebzi55sVPK5UNatokauTF/pgFK3Q++RPbrzlm/JYYDAzv/GJDMknUjfMWfjHYBUM8p7yVGr6SRAsizGwzC8RbNIDBDemKsZd95ib+RXMnDUsIqXOu1A9REjlhEPhxy13z2wHo8D5SVFW53NYdR3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t++zOuwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t++zOuwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E58DC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753957793;
	bh=ava1PDEXxI3jesmyxtqhn4sUXUaf3B0O0jXmgJDVITM=;
	h=To:Subject:From:Date:From;
	b=t++zOuwNX6S7HU+4Fn7MxGooOtZsbEAp3CfoLG0098T5D7sxMOjmq2mvFsDFhlwUU
	 +hoNBfYBTbp9xNySNV3V6Ytzb7N2nhP4L2ioVJFEZdfkGxoY1TZC3QWQDwerhDLBZK
	 GDLkitKKm1N2mkgpaqF4Om7JrFTiF/VLm+YXEtG1A9YpXYtcyPaWxNwX4wRatWdyDw
	 x7Qz3kVPnvM3l9moOlTWZuqPvNMEveJCOBMSmkBgjWDtCx+FSiR7QYRPOLYfP98iGt
	 WNI8iR9oW7b6P4g4D0bQA2+DiazpHLkmaRzrycl0qkEdeTxr/K1cIsvjr5DsQRnJEB
	 qTYaAz0UaM+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE90C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395779357.2230.12539608844261458421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513606c2b3af1f9c8bc7461e9ece7efbe3af4f2bf29f4264427141adc1c7823c
Date: Thu, 31 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753957793
