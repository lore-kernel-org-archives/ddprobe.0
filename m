Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAF136672
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605194; cv=none; b=DfRPbAkR3M2z6GcAouRtv15Pxom3XK/d2xltdzegVzUldlPewBwRgDKXbZUvy3JcLjClNuBfwTxiHli056wB5cxz+3aSpXULjipBjdL/fKfqw5Fk/mR+XJkcjGRmjnAQYxyC+UahGZGaGUKm4/67xBFJbMgINpt6vX8QF9FcTIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605194; c=relaxed/simple;
	bh=SnIjrCp4sTjgDSHQ1R5zN99RLRuuabY45RhYxmiqNRc=;
	h=To:Subject:From:Message-Id:Date; b=GRQ9P2dy/DIBL4yD9eRi9NUbZSzhmcfgE7pmuQtREKYZfgMyZNKJgxsc7s7MVeas+f6mPzx1ibgMoDPbgwDkTACiuXjNDTwhIhNw/qXgMBcsrHsn2RLc2jhkqjm2iHe+f9qKq4vP4VpggRUBZHcScf9JFCgN4tPYWxWNd1p646g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxf7UDre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxf7UDre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757605193;
	bh=SnIjrCp4sTjgDSHQ1R5zN99RLRuuabY45RhYxmiqNRc=;
	h=To:Subject:From:Date:From;
	b=bxf7UDreYdybpaTQtsWynryTSuCav7d218HvMdHMvJsFnFiYxW8hbvXaIl2OUwjNz
	 5iSGOnwkpLYOpXgdO+EgkUP9I5LG2zqlOAnHspRA4Itvyo/tD3pP281sHaf/C3ruUB
	 jD4X6cF5v9tNoEjaKlNskaPcUO87beTOTs8A2NNvb/I64Xv7aXwi5OoE9jArtm5uzf
	 p27N0UnVdEbWC7FZkfsb7qu9P/W8rbTiIoWx1XQ8I9yOOFM13GkiMN8qGyvXtYp0qA
	 mvGltBK2LRxDVIgiUO2+8sgO/GEbktR4CBBfZQfQ8R0Oiybdr1tBUAOouKZmd2s57H
	 rRsazm8c2G/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F961CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760519358.16509.8583811934617779337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c456bacea82b9355e76be493e266e2f1b68896eae92781442d917bd39e914eb
Date: Thu, 11 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757605193
