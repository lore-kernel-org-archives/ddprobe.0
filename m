Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425BA42A96
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788006634; cv=none; b=J9lg0aP8UMdp49MthxQz92KifX0SqlsAS4fc2q1f9kkDChE9wRVl9tYMiCeOIRTNHcsg8KElyY+2dl8MdGVTnNPGFs95mWXan7g8ASGveXNwtzU4z28KkdTaC+dfGKU5+pIEsYWEDgqRXTOfl3bYujEKm/8V9JBVe/H5PlIyouM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788006634; c=relaxed/simple;
	bh=Qy6Jo5in3LFNJel+E1h10NakMjnB76IMd8UNndHnVWE=;
	h=To:Subject:From:Message-Id:Date; b=CDBBLutg02o+uE1Eangw7Q6haFHo1MGdZPU9nwQcGdWhZllFsExOURUlEWZy41j64BAUkQyrYKLK/mut4FGutF5Yid709NTfTHGaqCpHSv2bNn7wV4lhtxIzuwHzn7IEZLgbX71C3J+Op6V1dOANJuq3k/fyOAOBBgbjxJqBUNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6jI/Oty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6jI/Oty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB25FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788006633;
	bh=Qy6Jo5in3LFNJel+E1h10NakMjnB76IMd8UNndHnVWE=;
	h=To:Subject:From:Date:From;
	b=D6jI/OtyeB3xadsn3jCroEHaFzBlnOFs8DQr4ZTgzkEWg4iwX7qzrSGI97UWKi9iq
	 HSnAZ0oLgtB1/+/xaI9VTSH1hs/FkHWtQgmL9Ik31iS3T/gP7W4KrARI1wMW01eHnA
	 o+S1NOLmi5gZcCRSMCV+JZPj05ejp56tfvT4baEMZj0d7aW3+nQy00DCZMFPQiNdBe
	 5Z0/wj/OXYUMAnJtMdyJTzouL/4BmlyG1ZcUfEbTLimQiBgTwiUSwCM23+zm0WqI4r
	 GSaIKhwCDNSXcQdaPvwc2yzVzEVbhb1FqHUNtK9DU16Ie4pgpDvBtEGPYVZJj+6CL7
	 iB1I7o/Y0N8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CA5C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800663369.7113.10263166804115787767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69e4a4f7565524d7e321745bda506b85e10df22733c7979bbf2f7b5ea0f66ba
Date: Sat, 29 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788006633
