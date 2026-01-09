Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8E27FD48
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767999834; cv=none; b=M7g6Fumhi68eDsC4xkPREdkMUFehHJY4ge9rERX4U9LnAmNgWVmgv08XfvYUyKbCzeUUZ/bvwon7LUZg1luWM7Dwykc7wr7iJ7vOWfS09QXkAUAm0a63mRE5NGgRiIIll7PLHZVh85PJ9CAdSqGXaREs3oF8Vtcw3EncYMnAasM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767999834; c=relaxed/simple;
	bh=CJNDNVBTQfZmUeUFgSmZ0NAfPVtVQtFzbv/sAiDyJTE=;
	h=To:Subject:From:Message-Id:Date; b=MoUIzXVO2/FHcX1RzzueyIKRFe4NSufOhSx7l9lXVgpacpieoJMKlhPMMYZway+5LH6NCzaZi3N7GiQwz+RxJ/ZNhAUliztCeOMJYyRvFKvqs4MbEUeVdGH1aEo75jaPhHLq50IXxOKS+SrbRMpTZVXZHUMPe6jaBSx4hE//NLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8rcuSo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8rcuSo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E8EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767999833;
	bh=CJNDNVBTQfZmUeUFgSmZ0NAfPVtVQtFzbv/sAiDyJTE=;
	h=To:Subject:From:Date:From;
	b=X8rcuSo+eCbtZS5ZoLBMBn8AYGrnw0BCyT7aLCP+06XU8sGwaZTy1oAQ/EVFtOiD8
	 ORJJJhwWCnNnz0VGagTqR7qE+8bgVX34HeJBUrqhQm4otnNQk7ieuXGjUV3dcWS3WM
	 KecfWk6+cs9+gDcs1sfkRUG9QqK/0o/LJChPAWRolnR//b8HrtJqsGYd9UB6gHDpJc
	 zlzB5DJnKvfUw3cv/tPsBVJRhtOqnOI74fXQbgwOfCuyN+vcz347yYoVJrgcu9M39j
	 XGl688JwggU/0su/d08yPBV8CsvTubATqqM3qVHuPKwAPSZyIwqVKA7v8hi9Pp6+xT
	 UiWty54flpGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FDD277C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799983358.10805.9190595036826783406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f11e3835497c4479d127965aba825f773dc19af05f7b1eac96e5528e14fd86
Date: Fri, 09 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767999833
