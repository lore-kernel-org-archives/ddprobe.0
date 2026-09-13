Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514BA29DB64
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789341634; cv=none; b=XMkMuQZEAf53AKYBMzXMvKPGlUGrpiHoGUgrfYjrn2XgVTN+xkCgmOMOR6YIiFnZPkLsTFbZO/XqtpRd/F4uQJvijiGipBLTTnkae2c0Tff9TzT6KO3+drN3G7ZX2ddOK5KeKhLxtpy2deNVwqZsshD3d2PelPEn13bs3nFwXao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789341634; c=relaxed/simple;
	bh=j8LttuSmzGoG4zXdF3PXJ/fsI+4Ey8gsCkwvSRV7z7s=;
	h=To:Subject:From:Message-Id:Date; b=WHys+M0exaRwnIamxUHHu2BebVWPJU0F/ulr2gPBPeDHyL8Q3CNkWxLfMXeFnFHzgQbRNTRM66xTwWyrrolxdTbZefwqeO9XB4ayoaMmfPtf7G1TyPpVIUr7oIFOB/XeNRIeZJxpZj1ScvIyiHyjEHc8DcDycjdOW55LIONByio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8X2lbll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8X2lbll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D129CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789341633;
	bh=j8LttuSmzGoG4zXdF3PXJ/fsI+4Ey8gsCkwvSRV7z7s=;
	h=To:Subject:From:Date:From;
	b=C8X2lbll7Pw9MhFeX5hyW3FA1tWSJUTjxfTAK1DTRvuRerVkmFNob2Snry3HIZ0eK
	 VS49N4ilrLySwGcKOJJpqZIbpFOOEUQF83qmr3AsYU4jdnwwJg3k4UZBiXWXm+Df1h
	 aysy17cM96uEU5aUDXbXO7eMOvbNnG5N1A7OyRyqu4whaunspa/1TzXEwdlrs8Be++
	 vql+qP1RxYZjWS5djPtc7HhiQcrry9LKkkzEXM9EpbquN+U8nMreS4AFAgZmqX4YHw
	 dFD0U+F+HLhgpyG1ZnmpLVA62a42Tf2jsE3QWPj4zGiEOBA4XagYTNXfPzSxrMlEr6
	 wcF2rAu4YuvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE68C88E64
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934163369.14016.17604467687038505943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fbb2aef6758db3848d543babdc1c5f05c6b29558b1d1da828a6dfa1202fbd3
Date: Sun, 13 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789341633
