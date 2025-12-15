Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B9346E62
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765817574; cv=none; b=ia0qDSl2xj77xe7T8KPizuQzWXgE1FdKh+JrY5vvYWjkz47+/LdvdlazQxUiNJHWIpQ4QIb4jepwBVg+su6KsLqEz4/7sFdMW56ocwr8RjUgwSeNGNLR02r7608An/d4rpV+pTFku2bgTlryq7tOkmebpdoBvAQvHFuu0UzC43Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765817574; c=relaxed/simple;
	bh=5ynz0oihtBthsaam6tpuGxq+ndYxywpFxr4pbKRUiJQ=;
	h=To:Subject:From:Message-Id:Date; b=CKI1KA5q2PooYbOSaFeKrB0/edZtyQ0E0C7M1UuxIumbTMwSsSsftA8WiIOrc0XunU3GeW/92AmVyjLpryd70ftD3NCRvevUHlIvGkmld4CrH///Dbxck8Abg3X8ZF1XRq+7NN59QVDvaNFLwDw80nIAjINn+/i60ciOCbl+zWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn8CNewA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn8CNewA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D85C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765817573;
	bh=5ynz0oihtBthsaam6tpuGxq+ndYxywpFxr4pbKRUiJQ=;
	h=To:Subject:From:Date:From;
	b=kn8CNewAxjmz5hyNnaHpRaY/EsTNH8PZHGNFmgyvK84bbEHRorEDqi0/9k4KVu/Cy
	 hwA029FmFk3swhBD8zfgKnae5W8JaYWruZySjeO3qXZ6sbkC51Z9JNops+U2POzkNm
	 +MOyfrqW6SGbU4j0NF4Tak81Ckx0rgSoBxUFrw38oUvUty3YXPFbMm1mXeezy6tyGS
	 CsFpOTdLBYTqtL0dhDFJkzX89q2KO7xVHEiIO2TIQ9NgrF3pY7Fr1TOom+N9rpYGYv
	 EtMqgu2TSILgNL5TH7yZeNWM656mdWucuQ+Is+N2sXTdTdEAJaq7HwmqTzfjBMd8pk
	 G1DxVTJpD4wMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB52D5B84D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581757363.29754.14233014401480022935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bc2ce5cc1f6b32277b4af79ce735b9f8f84e9650c1a30e8a0fc290d0dc6223
Date: Mon, 15 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765817573
