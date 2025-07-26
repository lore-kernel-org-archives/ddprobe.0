Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2530813790B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753495194; cv=none; b=stGAF4CrIhaIh0j2wGTHQ6IsUrE5r+FmFCH5vnhmUxf2nGPwpfNAouZa6ckF5GLOUDjkSJi5uRurWcpmS4yUyp40RNZDzKSgjOs13pSeh2U+g6NvufeyqvoeIeGi/cf53ts9kLBkmGtS71p/s7HH0iIjJHyH0zCzdwTEQ/bYnRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753495194; c=relaxed/simple;
	bh=aaJzz8W7r0N7lCiW6tpT2Sx0fYsissZr5Jyw/4xh6T4=;
	h=To:Subject:From:Message-Id:Date; b=Kp+n4TsfOu1PilmcHNY/o5bSKb6dIkbEJuWi4Na0r/DvDk1ko67YuOKHAORr71T2HrM9qK056gmbtZe8hliA1WyqV/eKqsIXHQhH/BAK9j7BIUpnCwb4WlMo7r1GqHFFyusdWKc4c7xkdFBBPea4qieCmcop/2BWWy+MIOiXShc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ1m/kXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ1m/kXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753495193;
	bh=aaJzz8W7r0N7lCiW6tpT2Sx0fYsissZr5Jyw/4xh6T4=;
	h=To:Subject:From:Date:From;
	b=lZ1m/kXk6h6qayYE8+5G1I47szM9QgsALhPM2CLX7tudPm3Jbi/hmxrQC+y3skbpY
	 n7/Qs7qp+MbNuk/i1uHYQ3FqV9NSQ7x9fmZQoZcuCjLe6X7Wi481+tzux8iq6UIKen
	 /lquR++srbOY0v964L5BXBpr/UaHUTJaSBEATgo+5QRkv0yDdYI4aneaAC3E/Whe7Q
	 WrY9yprf2UL/XLkwYlpo1fRrgYGD3c42QYkgf6j8KiitHBcBKbsClACQzpUX2lH9gG
	 letg8ai8h5S02zu4Pxw6MdryXNCK0C1vl54JpC+bhUeQm1qQyalhojTFaPQ2bj4F26
	 8S+NE/8ZmpkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E25C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349519357.28685.11127023471498675056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf8e4461b8736e13ca7c91bb7555daeedd84e14b0d944b4b7e9d182ad7df78b
Date: Sat, 26 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753495193
