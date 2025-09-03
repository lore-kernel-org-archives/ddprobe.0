Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7A72EE614
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756940396; cv=none; b=W97PLE9m0yvBYEc5yp7AjY94vk6TQ0KPKmV9TLReXxDp8WfT7xykIma07ohwEuScgD1/qdyYWQHFUO4TjtNuLW0tUOTVLM0RG6PdD5zDNwc3ZIRe3s7mUPMaSfOmdITNCsDWHjzYx7CYpP1CC/zdZLKqHGJTy8FDy8hA29j97cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756940396; c=relaxed/simple;
	bh=Kw/pd3inV/PobV7A3cohqCWYHB7soAAtIn/CLl/sgyg=;
	h=To:Subject:From:Message-Id:Date; b=Vb2uqFLJaJxTUQPbe6kPi2pDYqKHHJ5zS1uOvVilrSwxCfePtVFaHRvoWe7JhqblMYu+UE6TZTri4PBuEsVyya2Mpd/ahLzNA68u9E/QRb9AQDkcGmxwQkZCRIP2k2YVwhbV2ZgYhp/LgQr80by+hL4BBXXEX5ICRYh7J7iTZw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JENrB5wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JENrB5wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBE6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756940393;
	bh=Kw/pd3inV/PobV7A3cohqCWYHB7soAAtIn/CLl/sgyg=;
	h=To:Subject:From:Date:From;
	b=JENrB5wgfTIz0b03W1DQHwu7V08kZ3v4rLfr5d+/d4afcETuativuAexk6Ynuvmn7
	 l4VYtmCQoysOI90l0d/AEIpz6Qvtk6WX++itR55n7ZafsOhtE+zwXh1qGTTPgG1N7a
	 +8ydtpFMAK9IK40uXTQSbeJW8r8NOSg1sEPexZ1+nW2n0WXg7E45KPuqr7o9K92z1i
	 dYHBGpEtuk5cfznrwTRgpex+G5Dc7NoOU9Z4UOCEHfNlVg9wJ/u2850f8A1h+fU2UM
	 59+exT3nDSAbjtZ29k8ghkbrzh+aNhv6yrDWpBo9uKd+/WrXd0Pgi88veWk6+P17pr
	 1g7P0iWkrFJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1CCA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694039357.27329.7046173372007342401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcbd595a5b6f834d08a9fc6e4fecd40e31a17beab6e123f1ee92b8bb0185c48
Date: Wed, 03 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756940393
