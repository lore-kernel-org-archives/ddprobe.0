Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291CC2AD2C
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760403594; cv=none; b=qOFv5Jk/Q+41xqmSZcbdmcBKHbJhck/xmFk94Su6RtCctiAnXAlfkNAACyGEn6kGAOqPhn1ZGmrxTRKlQMjQtLgtLlpmragSmiNRpjZ8UdRkiFSqTffGPKhuKjIhlIzc8+8HLGz+uRn5Vh6yKTGMZLm6KZcT7xWLGEixblrPKOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760403594; c=relaxed/simple;
	bh=RXNNgOeL+cvZuZ/DWIZhQcR3EI3V4nABWG6ncEGcmEg=;
	h=To:Subject:From:Message-Id:Date; b=YCwGIGZzagBIbFv4q0gWjeWEc/p+N30u6GCLHYu/LJsdzmW8j+hsOJQyUvesDQ3MwAJaDsCQhnOnjO5Fm+0rs7STCzrcU9SIgsIjfmnZynh1mHWdFgY0+S6e/n3N9YUul7fqf0Hv7REUmeNdYZWJ2xRnqXU4iKL6mzS0BLFhFoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ64au6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ64au6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760403593;
	bh=RXNNgOeL+cvZuZ/DWIZhQcR3EI3V4nABWG6ncEGcmEg=;
	h=To:Subject:From:Date:From;
	b=kQ64au6REevfPC+oBaShFE08RdhhRHmRhyyk0ZfVnv2B1l+jppJY77posqA3k4Cm+
	 rGok74l8kwYvZzQjTAybgJgtyTk5uqyTfNVEpsfiKT66+DIsmQ5kW/BAlz7Y0yNCD1
	 VCNfidV0E60JX2YdFqIYER7kHhELgUJWuFAx6wkZR4fK2fAmWnRJsjC9gCZ3JDlIue
	 XZ0JE6zrPPPTTMuyvzZlojuId7uioVp4FEsZE3qSi5D7TuGBg7DqCOTs3DoOdjXeJ5
	 H7n8pFquFGDDR92yf5zs1NYtTjOT9oc52w7FW7isF48f/1Wk0fF/mrkX1C3ufoLnGd
	 aqL/sVII9Q51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CAECCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040359360.2317.16845419214787749420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2ffe33f15de6abfde66d995935f0c572f8c632ab04b40ed577404307b34482
Date: Tue, 14 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760403593
