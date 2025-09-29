Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B92AD515
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759112995; cv=none; b=qdeOUE/GmhGTqXBrwHx21/X9wKTzXS56OwQq7Vrd2+owzgwIRhzLbrubH9EwD0HP34Tq22kBZwJ1MFvlkkqjnRTy6FNUN56O569JTO2l/Y9TPw8j/yIpvd2Wb7ycgTGfY7+17kCMyAoqCmLvOAQn6etBDHZ9xF9/7ivOpIEOm30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759112995; c=relaxed/simple;
	bh=QygBh8/ZZnMFmobH6Aa4iLksnpp0mcqZv6m7RYBB3+8=;
	h=To:Subject:From:Message-Id:Date; b=NlNGAI/YcqEyRh+K0jHV75saJZ/JHN7GVst564Z8444AimxC7m6Ec+bY7UxTOxKT9HSD7LmokpklJdr41dR201I5j6C4f4qJYLsdGv4+/zYKJNV9ZiSAh2HXDPfMOF45RRuVcFyKuMv7nlnFXOWDizfGzuX7kUZ1N+a4jvxUU0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OteyuBr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OteyuBr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4760C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759112993;
	bh=QygBh8/ZZnMFmobH6Aa4iLksnpp0mcqZv6m7RYBB3+8=;
	h=To:Subject:From:Date:From;
	b=OteyuBr+INCsSZVnRq2ZtBaLEKptPn0YBmDsZMGzOHIifphiVryaGsK/Nw57UpvP6
	 fBb8bBqlH/DpVQTA6882TxV8RlJWwseNkfPk+fl/s28pJxLN1wvQbIlGIP1kk8DAQV
	 Mn7Q6Aoy+zeLbRZwdTvVKOf9aUzrko9Nutr+LEm+kYZJd912OWDgFafuzU2L9tM55/
	 OmUVHBEvyY3vSVm2TAEOtIBlH7L0enBe1mLpcyq8lkChu+ntaaLXMUmayEdi35GpLd
	 aWoCT+tPRKvx9MklYU//yojIYxQv/NcwgFCsHgaZU9mOQ4mFFM3O6skWEp3Vg2Z65m
	 JzaVD6W9jfMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026BCAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911299358.6216.14326358602997841857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4047b337302c40c2a434ef111da5ba29859f2a911a09d9910d5fad1d6140cf18
Date: Mon, 29 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759112993
