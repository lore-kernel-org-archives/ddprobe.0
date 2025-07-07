Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AAD1E22FC
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751891994; cv=none; b=JKidYZcAnVZxIryLawg1iZX27JerHyzhc2h5jl3CbKh5AgTMz9iU2nNAclpjSCwrHEQCmb5ORJZJxj1Xb6Tgwr+JLcAnmnrorLZAJTPyKA3A1bULuUZGmUX3jDNMpAvBtWyDyHsQseHULCOv411LR7Qgg3VU9QWXOqLJGDRbDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751891994; c=relaxed/simple;
	bh=hEAsENs76L4XSFZiT9Xh3KvqMLQ5g7bP++NUIefOw5k=;
	h=To:Subject:From:Message-Id:Date; b=fzPT3UPNffdhKMNPPQROrxjDuUs0KMnnn3rc66C8gBFENdqsPr7mZQvE+v41GpJPHLsU5HuANvNaaGPMFTA7QfRVj90aHiNa0lHc7e5/39UJtxqf86dAx0PwdS2w0dFrrry45FUySH8dnR4/Kr1IjMwXUyA+Iid8wWHq8fujLFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfopaz8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfopaz8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0492C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751891993;
	bh=hEAsENs76L4XSFZiT9Xh3KvqMLQ5g7bP++NUIefOw5k=;
	h=To:Subject:From:Date:From;
	b=kfopaz8jWiXKNREU4TdF9UycctxL0aj86krps0wJQxIF9UDmEJGSiRblndhQ7JWEG
	 Ows3eiFcw7Y0R42Aqpj+umPd3jxRz3CXyChr8vdlSvcqhnwz8IAJ1oSoGf6PxrxFyk
	 JnT60A0XkWkDKOEMNoo3re+pWzd+HJzIX+914AjsaaA8U/Zz2G789XxAwRaX8mBR07
	 BAaCEK4igS3sQSWioZnJXadehu6a0hN9UW3hutjD7BboXNuqgHgysUKhsjB6RNY2fV
	 Ex2W0XLJ0IpGW+DTDC6nvX2iQcaUjc5O69TOHXHIM3IRY6Svy6h3+5j+M26q7nT6XT
	 UH4Cs95ByKisg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D9C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189199357.19006.12216204546894008999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e52e25ed4d4c864e0e9ed4237757a05692becad8a8156f6a7e92d2c027d660
Date: Mon, 07 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751891993
