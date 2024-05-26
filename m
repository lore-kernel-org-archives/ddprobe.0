Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D8B1849
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716699263; cv=none; b=N6Z0dQjF86ZtZRQefyyvZtMis9TFI7hNNAzOZ8lp8TjQzzKQnYW6fsgUhWCgKPqmLNvtVHIUSEXhThdNQxLzjyYiklGkmj2RvGpv57Ej3O9+qaNZfRvsS+weTSexLR5mY8/9xVdLuz87vasvuLe545TrfEeBiZ3cAWNVCY1uWis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716699263; c=relaxed/simple;
	bh=Ld+AqOdRz/Ek+417eGzqfeeYvkNhGhHC8SNoP5Kcbl4=;
	h=To:Subject:From:Message-Id:Date; b=AUGRz0KDJ16IFQYAXDv11S6zuL0nKTVTeMMUNgQHb9Z2vh2YFMKph9AlNTO4XutoblQKIeHVtJNsjNd4k0dj3cV0dBxnAJFQWRTAT6z3zQ8LQ6tzAV4xYEKRlAL64rhPiZQ6WKkA0NSRKSSGZMWUZGt1yZ5DElBnusEzeX0hJ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1F71VMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1F71VMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA935C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716699263;
	bh=Ld+AqOdRz/Ek+417eGzqfeeYvkNhGhHC8SNoP5Kcbl4=;
	h=To:Subject:From:Date:From;
	b=a1F71VMxQ2KEEsGNvJtvqm4Pv92xAMY6boUiuLtbTC53lfk6fChNmf+F/wXRkTEed
	 wCXs4YhxfJQj/+YREXiV49noH2eP5+vLJuWkr/nrXnCmxPIno8yQ9GWq2vgsLNK3AF
	 ufRVnemKYlcjScrTlku+NTV30WiWMSvTf6caoFoEV4y5Y2654bWBrNNHlz22iarRlm
	 FUfdSMnO1T2WoVnRuOpXjuTJ+cmsiJF/aPvTCl6hjdbgZOrB4ZTANBhquU9mUIxRtc
	 Ibr+FbZ+xn0gXsScI/7NHZ4N6YVJRimYkkrZYSupv2LFGKcVhHH3PFUvjspdKul060
	 wcqTy3ZiempzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE37C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669926281.2745.17687595445039061585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771b13993c85349889ffd935466c5e6539b43e3735060830e68d42aa3e1ad03e
Date: Sun, 26 May 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716699262
