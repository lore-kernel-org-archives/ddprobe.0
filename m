Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E319CD01
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747279194; cv=none; b=OlbNLXMV0/BEc1FOAYivRJ0TQk9XgvgbVPZAXhBqhfAnQrE/P8KSyIJVrdyLtIrxP2yYin8sdmbpvi4u+hY686vMdYTFcxzZapaVTxEn4mrd4kIN6r6pYk82x0JNT0ZhDCTNEHV9bDWvyIQLhLKhtwl89lXNDRDtkE6AkjomETk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747279194; c=relaxed/simple;
	bh=jjRcoy02hsTRui97I2d9njL8G7nAz91a+ypwe6+7egQ=;
	h=To:Subject:From:Message-Id:Date; b=WdTXf8YTbPCWi6B8r3Y6YRgOdd6IMjAnTI5Kx92TKr+XEk5E+r39OMW0XKVbfMtp97jJl/xn8HjduxlKa/RxeJ0aVSGjb0AhqquH7u59dXjKgNdIZGIuGv49Qr4dokddEPqfPayd4Xxj27Qr2wuBUuAnBBiJPmTjyOet0Mt8ln0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzVfGDMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzVfGDMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747279193;
	bh=jjRcoy02hsTRui97I2d9njL8G7nAz91a+ypwe6+7egQ=;
	h=To:Subject:From:Date:From;
	b=bzVfGDMjBY5Dpj9nqyx+qnpPJifyA8bIilp4MNGcAA8pVRE1Ar+cwSiss5Y3jZzZ6
	 /dj9aCyq8oZz71T/D8aXJVg87CJcvGIPKD7bh9TsWyQOuFHgWt5lhyTrgCzVNyjjKg
	 KlG9tN9qeq595jXwhfh+EA+rGAoqAs24d83htasyspAUehiVZkmkOmNnXewmdyEEOi
	 N5H9l6QAbdjaIkWQn3ckKzvcw8RsVLDexR8sORpKJo0lLGfjhtb77WWNMupWzeIdnP
	 b1FU08GChFko4yxKefAjQdCr5jdcDWcPbabWTdUhK7HJHY7xWwmvzu4vHSvv51L4yD
	 AFB6UtQ6nZr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03DC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727919357.19267.433791084821563429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7cec25e5cbf61b559ae91b0619163d64d48dc6ccacced0a5211d8ef30afefa
Date: Thu, 15 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747279193
