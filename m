Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195E311CAF
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752817795; cv=none; b=AEZ8gZT5HKoMlGONePLjBZniZhTB10IEaR9namzRLKFiUsMMk3FkjnZ5ICkuROie//qW+KZMT46i7NmnXjyYZnPsqPKG6IwyfZbyYMXirRHTt8xjcD2/pbDBJ/QpSJT+I0vGSyvkAW6Spkioac8GkGbSuH+tv5yyyOTX5fW4L5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752817795; c=relaxed/simple;
	bh=wP2z3scB+5j/xhSIqanHeH7UOztyiZNa2JescpVDFD4=;
	h=To:Subject:From:Message-Id:Date; b=dOmRvyMyn1A80fn9LfIZlHCS+YlC9CVyQRiHjsdUpInVo6xdo50F+k5rEbK/ZayEXreUX1J44ujjDiHEYd4/+0Xvsqv0esmoVDfUL+Rc+ISZUTt1Bfyq6orac6Sj6yFQCgqUciUi2tb87nIfFPfuyAMdcTr9Ru88OFPIp8jxv4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKHGG94Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKHGG94Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752817793;
	bh=wP2z3scB+5j/xhSIqanHeH7UOztyiZNa2JescpVDFD4=;
	h=To:Subject:From:Date:From;
	b=eKHGG94YYLrnsoL5urC/QCO5Tfbw4rXVrxrZ3fi0AYqpDPf2EI6gaZTN6uR7xusvZ
	 hqY5ANtl3MfzP9mJD+grlcFbO1LWnVt9AhoiE0LAwqNBxZ52p/drh0GosVztyz0D9h
	 hLb5p5nvZsVBKP9OZU1C5KBWfGwBHSLy5W0cLxNGBDEE61bHMoWquQlpHB+xWmncNm
	 c5C3LcP0RSCGOjFmPDgwrzY+io6JLLME08ZSfaUsTq62+FzJ98k2VpDLsK1aAtFQe9
	 BQsJ7Dl0us2Y+C3nTGfs4e9py5xjHsqAx/h83gqbmHXoibtb+kj/d2ANCB8822Z9zj
	 CVTp6HXvoQrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB72C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281779357.3216.4178758758413032205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada36a8568954b1a00c5dc6aab4f812532537152eef9b91447eb1278972c7faa
Date: Fri, 18 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752817793
