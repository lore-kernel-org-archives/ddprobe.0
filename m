Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558AE819
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740714534; cv=none; b=srPxA+Hq06U8Um7QiY4D27jFt65Q+EYjHc8Daw07yeUda4X9V72S4Ny3fXgu0Pzt/Pp2XAeGtxW+IRIMLe5xQHUZVp5qmnjryGl3bnO2gT/VpTmzBp66l7A7ajFwYfn5Ztor9jcCKDEK14QjvR6I4ZwWbOlI/GGWmXwAcXNhCoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740714534; c=relaxed/simple;
	bh=Dth7DwjeeSRT8kvQfH9IcJHzoLdjj/q7iu/XS0ne23o=;
	h=To:Subject:From:Message-Id:Date; b=rc9+uxwmXSdyOkA+uEJ5ACGcu6O2spQka/mrlNNrUw7o2DQLg70WEw4B1ieeMqi5Yi9FE/RM/RGXC5qUhjSNOZGdtQABvrPOUJM76+n9TOI61zE3qC0aMGzVDbGJZ7DQLhoDngBZ5JrrJRiuaUKrwvzW3dBywyIgXx4Io8d30IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6QF0Buo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6QF0Buo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD173C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740714533;
	bh=Dth7DwjeeSRT8kvQfH9IcJHzoLdjj/q7iu/XS0ne23o=;
	h=To:Subject:From:Date:From;
	b=G6QF0BuomF7ThFo4Q/KbB7UHjqbE43roZ79HyLiI3qMHEATEDC8RdUuZWUjkz6180
	 V1MzAkCXAJn4r/2OecpIeZuda04KbUfjhn+ikl3U8RMPHqvgk3hdD5lzZ7E2itmXW7
	 FmYfRpl6mphmxLe2uN8dO4bwCrGM1Oak5UnLGEWhn13JkoY4G3mcWnyNCl9HgIoRrQ
	 est1lTDdP10RuWH7MVSIyUI+lo3yd1vJKpB4M1fwtz+ulPwr+OOSO+uLJNdr2DI2zm
	 ZkxQvcYG3xcEhmQQE+pwwGALyi/FBx3XkiY/KMbPV1ity6L2tvYgTUulGD3QdYKcmO
	 yMG/+xiBirp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8941C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071453368.28782.3657039845040345220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e626a2b523130c8ffbf599d21b277ebbe92564eb4251ed3a298e0c5a2ffaf5
Date: Fri, 28 Feb 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740714533
