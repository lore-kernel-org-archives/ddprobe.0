Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76623D283
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785303034; cv=none; b=jz/vENgrQwnilK8Zm1lsrlcuSGsCi85Q48fAZUIKkwTK0BCPF9+qRxRtTf98vpmC8+ybQZoy00DROq+UEqZ3Adv2292tbFpB/aOI1NPEGtMBNZYpDIXZBQNxnI2dtztfdEJaSKT8Kbky+jFcL4ltAvWuuDVTeHUMwAcLCG1+tEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785303034; c=relaxed/simple;
	bh=sY6tdDC0VTJOY7Bl5Xb61fWbsceo10/eCko7R9t8hrM=;
	h=To:Subject:From:Message-Id:Date; b=rsU8h2YFGBf7LM/tdUiUvcOXrb/ckCMv9FaKSN4j6X/ha5x6JEzBtYZGzK+m3wCpyqfiukj48z0ofLp9t9x7ssaAPO9bcjQAnH7m37+48xP2vq3HjyCoXSqXBHFf/URjEC1yk8FtiAwaUvZ/IfUpuOFHWC4QSL0fPpC3IlpAChA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA92GBlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA92GBlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D1FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785303033;
	bh=sY6tdDC0VTJOY7Bl5Xb61fWbsceo10/eCko7R9t8hrM=;
	h=To:Subject:From:Date:From;
	b=DA92GBlt/ysgKrs4c9gdH3PEVRUjZGA/7764o7Q/3UotEWtgV1tlds4gFtP4GRTVe
	 CJKMkAA+pfarxIcTLcgJ3idZpRF3nkTjIO7/+pju7fl+GSCra6v3QJJ/DIg4b69pFb
	 hBoLwsIdEgY7PVeQXkCpegOPhXJcJVXSuUW0cY7xLNHrQFhM5UJFZZYV4JBKhq4Vm7
	 afjMNGWmB56BRt2MEseJr+sS4oijnn9C1P/32obpJMBRQPqpOkDGFekQIyiCG+IrSY
	 uMQ5tiQdl7tU3HDTv6Ceks5Da9OcrRWltL/E9fJbFAV6ngOT1fN8913RxKy5q8knRU
	 1KmcWMIgLrcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E2C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530303371.19620.15167052568309444457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84254db12382951babb7a022e53b47ccea7c23a41e30b8ea3b6aaa46dda9dcbe
Date: Wed, 29 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785303033
