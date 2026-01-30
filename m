Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BF92E06E6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769785434; cv=none; b=kOyihiAFu4iKoDbhmfA2aC7DvzaCLRb+t36U042BxgtkOs4Xgf8Z/HX10CAKeKc9S4ulQec1ziYD/jLNsl6Tk7VMQXQidbI+ERUbmp249MWj1aGzoc7FGgZosfbf5zws6I4tieasgARLtHXPvnRc3FEGqloFmASVhrt/+fOTyC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769785434; c=relaxed/simple;
	bh=hMWHaoeMtWTteIWbHQ3Lqc9jV7BHm8Q92ZRgELX7DD8=;
	h=To:Subject:From:Message-Id:Date; b=d7A2PODwKd2z1ikU/B1ZfKU0nLVU0X51bhx7drS0QtxQrC+Zyh0vGYduAd/2xNIb4i/oDDsn2/1PJ2G0rTG4XshcUsnI0AyWXJykNiYmmrZzO7UoE8xqtZ4fWZU9R9Gq1zTTiKgZvGnIkZUXEhzKD0u3mlK5DYVnbC4G6eLUx+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO9gabvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO9gabvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3CBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769785433;
	bh=hMWHaoeMtWTteIWbHQ3Lqc9jV7BHm8Q92ZRgELX7DD8=;
	h=To:Subject:From:Date:From;
	b=sO9gabvDCH79k9TJuRgE2dgOMHDXnPSLqAO7ryIst23aa2OwlSc/y7U+glC98YdW7
	 TWQI+bmP2g3mnImvchPhT1+V46UmQWG4k1BIWnCeAuMJvRxx9gpf2xiBvQScrrsYXt
	 sP2b5fNwK4cyWPh2Mbo1a/7+JLtn5U4GniVHySDPZJJAVw6arzl4y7vdEr1NHI9uDJ
	 LlJPjY8gLCfjscMTENI116IVcdp2gQCWphckEVVfqAlMKpQ65oGfLpbNWiJfweD4EU
	 +Lc9yVFp281/NDR8HPPTAElKiZ2GtrfJGy4JrkL3u0phnxgqrZS5FwhT5Yr9KJuMWF
	 UiVqXJQ4Jvvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC1E6BF1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978543361.12218.863774252899974624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078f11d00d7bf1e33c0a5a67c4edbf7653cab8af26590fe506b0b8dc1ba29f3a
Date: Fri, 30 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769785433
