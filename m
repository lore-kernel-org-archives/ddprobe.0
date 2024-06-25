Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F42BA40
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719275603; cv=none; b=HZJsN5F0RaGP5/1xztopQxFQ//YTVUXAEEEGgYGJzEk2i0Eo95OXhwnpKHphn6H54JJALUiIyKfLc47gibAPWYKpPwaAkL6mgBX4SAzoeJq4D1lSXUEGzTypVx8i9/O4VNL4d4YwPNrosLBZ+RtO2uyGDHnIHNQGyyy+4bcuVsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719275603; c=relaxed/simple;
	bh=Cnwf8+B9FM1dK5VMY3E32CBx0HMAjD15CnZ62fgc8B0=;
	h=To:Subject:From:Message-Id:Date; b=LafyBCzHQK9SoqssCUcrQgedaWMt3epmXPGp4E/8YkRQuuKLdZc7GOFtAMCuyRRvA9Or1ABuUDdwkF1oCsAZ3c7cFD+U5uRU7za0yoEEuKhRP1k2rpyY3cm48478e6VaJlJbEO4xRc0Jqm6nSgAkyuQnRuQCRpwP5U6D5LUtVH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgfcHCpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgfcHCpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D96C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719275602;
	bh=Cnwf8+B9FM1dK5VMY3E32CBx0HMAjD15CnZ62fgc8B0=;
	h=To:Subject:From:Date:From;
	b=HgfcHCptOF77L5tiKuKfAFplodpHEQD/1TvFXbpK5qP15BE8kliWaDzEm4UmFraSr
	 mQ+JHJG4aluj14UJDl+/qrKA7IIm1eWml1kpV6I9sKRBECPbkqDpzPp1uwE6Fxtzli
	 NjDEo6vMv0YIjOCH2IeghrXeDDn7QHkKdoY4Mb9AhQWR82cJk7Qjuh1UsiUiPa5P6k
	 LTY7VjHEOCLkjEmrC/8U8fEj6jSJz6LRQn6YV3PRG4uvSwbqC4pcMTPPTSmLHirwCg
	 mawBtLkxdwPZT28EAyXpnvzFS2Rc8oBw+aj+CLH1K4leW5lQA+G3qAuGMph8HCuBzO
	 BWlMi68A5+xRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D11C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927560277.23488.547460474425545619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc39d3564359c2d94894f9593dc379db56bf5b06923451d6922b5f99cfb048d
Date: Tue, 25 Jun 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719275602
