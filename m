Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5A91FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768749234; cv=none; b=u42EPkbUnuuFcbBtuGBKctrym/qb5fSEKejIi5pbPnX5PMyu8UYL3fhGy+CJT4ugGdX9Motjyu6oX2Dk3UHxLZlGUAlsIl+iXdkOQZ6Y+QWxyQg4wenwEll+0oGuPYUs50w5jFf3WgB1XYPyVUFAT9AF2HNdwB4K1l4sthfVlx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768749234; c=relaxed/simple;
	bh=3LPguYDxhMzHIEqJI3GjrGX2lunEGSm0mZ28ECpmSKo=;
	h=To:Subject:From:Message-Id:Date; b=GsqNfPrnm+b1tHYal4JMbWd7RCzdzuCvlsrnVZzMnL5u4NlSKQeP9PhHOkhmloZVq5pPRbmnkWpFFtk1W5eqlMVzuIDbqCbLkeq2W71rvvTGz4dhapdVy04grnikFbEuwVg4N/nyRsEP7VGdi8iazEaugVZEztcucTaVxwCdDVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlsMRH56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlsMRH56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B33C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768749233;
	bh=3LPguYDxhMzHIEqJI3GjrGX2lunEGSm0mZ28ECpmSKo=;
	h=To:Subject:From:Date:From;
	b=jlsMRH56oiMuzQK1OwW48+3tlK1J72tVLD1cwm1GCMScHt519wxdNg9GM95CWT+3j
	 WJZD0PPkeLF+0CAHmkgFJTX7BZH6/oPaLNFRrBMEhzZsfNdQbrFUn6JfgeLqjduK+B
	 zVUZuynrQrlfxOr6ccjeohCXDvwYF6dQ6okjZGULHzjyRZvu8PfO9dBKkclLByQfh2
	 mwOlcMr+tSLJPzWIzTQBJDbt90Y2XenGZ3/OXDhJMTFchPT1sJQgGmKHVmRtL7N5XU
	 nf57Mpz80HL+1ScM/JFoH4bI05Wn6c750M7uNvbl9MeOHSgHIBDX1+T0xajuj3tIpX
	 qcusvu9IUNLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FFD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874923357.25837.4100236306843655033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e34506c1ae1f62c07660a3ffdafce430bbb7cb44e1443393a827742cca59a95
Date: Sun, 18 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768749233
