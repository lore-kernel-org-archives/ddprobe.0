Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126102DC763
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757647194; cv=none; b=Im37ZwBIQIVe31FtN1P0aqxSbBKWLK/ZIxkRET4IuPXoH5mBAU6R5FNNJSZXfORYlD+p/yMve1TiWS2zqvkpuBf2ptOZdeyZLHBvLowNSnr3U85ofWI7spOaDvKn8G2+OGoV5Mafe+clRgChpVUNljyc+TChTG9L2T83naMZmHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757647194; c=relaxed/simple;
	bh=XB8NoETdaAPQxZHoXi1ZTenidl3UMNjRSiY6/q3ibZY=;
	h=To:Subject:From:Message-Id:Date; b=dE9vdiHGinfoa605eqDO44E5OwbEkFU5H0WCAS/XR+MKIycuFCyEJKh7A3+51t4NIZnkmJiVQ1ajqVY7PvhWWDpppLhbenvQ9UCLhBUt8jGzDkpxXAfxjt/lv+m0eaBoVo3EFWAfZ5MA12oE0241jx+Xw4qP0/m0hGIUUNS9GpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcce4iPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcce4iPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757647193;
	bh=XB8NoETdaAPQxZHoXi1ZTenidl3UMNjRSiY6/q3ibZY=;
	h=To:Subject:From:Date:From;
	b=dcce4iPvtwAgdUsjvkBFUB/pwBZaISe8Hf+Z1QE8O/sPBP6RUBHGXaim9FxyhG+4m
	 IauA1Rdfe1jpc4jVHuti2v8M3G7wZu6KYndkxoddxiNo58XA49erfO2huXrhrtnc4m
	 ARksG9et1W3dJ3zfL/GmLpx1NGmyABuB9jEkshpwLOKSt3bFcfrLAOw2Q2xqOBQwiu
	 mqLlvsHc9lo9ZIlBaxCG9QtCT11lBiG1vFtDISwHr01P60fk29KzoRgCLCOkrYlmVm
	 W7sDSipjNhT6Is3ryNgNF6i9IOk8dD1CVildnbjzREnzHwRcLcdci2c7vZKeS6Qm71
	 ZODkBh7xWGunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93446CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764719358.1096.15751850954429573175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec6115959a66a8b7526633001c93c2a4231035e3f8ef36b2aa37d2b56c270e1
Date: Fri, 12 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757647193
