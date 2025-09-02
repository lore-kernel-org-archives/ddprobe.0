Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346FC54652
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756790394; cv=none; b=DDyULxl38U/r/lRmWujGr8vzhLTfPnbxr8TCFY3HbUewz14yQAEU0TzkLSBxekUiW2roqwXz+cnZRM2EvK1wly9NlczG8bOOg1AY94GkKfzFfyxk+CdH2Qxdel33hqJoDrA+eW6J9UeMd846E+H8eXGTjgTYYxWmpfix0WZRtMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756790394; c=relaxed/simple;
	bh=J2axYMEXvIOm09P4DsB6If32XLmWDDrzMQqKSOsnKxA=;
	h=To:Subject:From:Message-Id:Date; b=jAAkoX15YZuIDxgjqBaB5fuPJwMNNd6hyCyPrL9LE3bNStiwq2H+/8JRODyiY9JchehAn8f/4tLbCGs06//WNf+dpBpv9IXyrnXJ73YarzhQrLztKcvdPJjVk3rcW1j+UW0FIUsMWLSnVvop3J+AmQ0IKcFMIPl4diAJlgzHnOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1Rarb6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1Rarb6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4908C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756790393;
	bh=J2axYMEXvIOm09P4DsB6If32XLmWDDrzMQqKSOsnKxA=;
	h=To:Subject:From:Date:From;
	b=E1Rarb6AbyU8ZVeo/T4ch7XOCigNRH1fB3I4DiN4B7KASgXpB977spasdMSFTl5Xh
	 PlIhwYyOHHB8ug2DAdHJnOMFUe8DJbIIoG+mzFyqboGdSOfc+skN/2ELTXt4jhjnF3
	 HU5Y8IHJ4x/m1ttd+ObnHQgGwY9+0Hr936aak09Krs/f8Yf7DA8ktFdI8WCX0EsGKo
	 VruMs2agzxXhb6CPlU5CDIJ1u4cwMcMBggUVwYwvvzb9KEvkn/18EigEqCJh6pGrDY
	 ZEKwKe8RfyPXcuGXAXm9ZWm1W4+p76fgP7F3Nq6TDMzC2mxmD6PWLTvmlZwSxPtXPR
	 m1uY4+bjsLLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A9CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679039357.31988.14352567150585405881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60a8081bf73015db96f87b08977f0ce157d28794858d3f69054ff7a0681737d
Date: Tue, 02 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756790393
