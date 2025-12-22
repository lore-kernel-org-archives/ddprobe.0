Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250112FBE1C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766378634; cv=none; b=Yo+5bjvKZ22CD0IUkF6NPxMICWAnKoL160Q8ETm5KSNUNfRFQzW2bQt4vzXgq/fJtrXkyRCR53gFTTgJuL1qSn/CJlwy7q8o4054Wff8MqVws/V2QIMNQpgXdd3HYdi6jNRDobZSqr3WQtqbHN/uV9lh4txg1bfpXNBXO2nUjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766378634; c=relaxed/simple;
	bh=RSYsTc08geu/FAfTumwvryDKNPHn/RrdFUTOpPqe6Jc=;
	h=To:Subject:From:Message-Id:Date; b=haw8wpe1kqEU8Re8p8UF47x6GNmb1y9Gdq/xwI6Gx0g02ruLwkoG0v/MsZ8hsCjr+ZT7jIlyeGO198ewEhrfI3/vFNBqQ0kWK+k36UQCbmdmPCizToUHjrhDdfmQfldO0CoxcMgope+vL8veMDn2uOZzfaSjwbVe9iA6Ca1rNFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGGw6AO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGGw6AO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766378633;
	bh=RSYsTc08geu/FAfTumwvryDKNPHn/RrdFUTOpPqe6Jc=;
	h=To:Subject:From:Date:From;
	b=AGGw6AO+b359H5X6UcnTiJprSbZNeNiPFFsxbfheNazqkUhuTpwEThkrqVBNV0kkF
	 VPuVDKxWqW6yWcpmI3iYsn2NKvoa0pqXa8FUluIxbJTOJeMpjKo9ukFJWwS1mKtikL
	 659fDWs+4H6qI60ckptOoX23rkbqT+Q90+/R2jU9/TSAjYxSDImgTubQFn0Sko2I+6
	 gBnEdjJDnbS05ZR3n0jz4FaClXkVmbwEp43xMAVyzwyI7kySDAwKOSvAvF/dqfhAk2
	 ZaHXO/dMDVsZa29h8LSw09WZJyc4VG+QtVy3LIT7lx0rFGxDeANTn0RwZdnqEa35t0
	 A4dTh3K6Ws06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A61D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637863358.14588.3407565209757231929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079d0983f0375bac9ce32090532c63ad1df0d5f32072c59d22bfeb4af9934c44
Date: Mon, 22 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766378633
