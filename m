Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD601FBC94
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754596794; cv=none; b=FidROzmPXElxHYujRZnZtziHJlseiJoS151V1cOT1wtcnFUHeU+O88c9I5r3fibyW0I1wfQ0BOQBTM1fhhcX12jXnbOSnllpdC8Fp4wZFNjTlKxeiIFWul/kh5JUpv0yoBLZSW1dsCeidv+6h1gnqSRjqJmRb5KWrBXUg55fgVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754596794; c=relaxed/simple;
	bh=Qj1Vq9noHG8+BvaFLZGW6Z3fU2NlyQNakNX469zkeMs=;
	h=To:Subject:From:Message-Id:Date; b=Y3f1G0BMXFLlw6O0emJBufKHDFTATfVHhwmUDrE1QEUTWkqKRIrwU8zJiUfJ46uD+E1OTEflRtYzM5daiUTfeRfA4XZyTbsjgvF+Q6zYOGK5bWY22ChAAQgySEGKQR4YlYRLIyDV7yo0szzgJCxn5C6iTTpUo+PEbnLQaDrATjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK3xNS8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK3xNS8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FEBC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754596793;
	bh=Qj1Vq9noHG8+BvaFLZGW6Z3fU2NlyQNakNX469zkeMs=;
	h=To:Subject:From:Date:From;
	b=eK3xNS8p4Uat/pwH4CXrDso4QmYWoohOzzI//ie934Ni3OmMKjthcGvoKgyf/yYrH
	 L42BOrJMfDaDztpC+gt2prW2ulzOOU9MkwRP7VaJfaPFHd/C1X4R1jq1jLN4p1uwnW
	 y0XCWe/CVi97/HYNFbrkONxBuTJeupWqyTSZAD5I/1AEnBC37New4PlE6PyZ/lcUdq
	 yOCsXel+R9EBk5xTWiPtRoaysr3eC/5NjF5/+VuPfNLfpV2q+Qr7MUNZW3CPCihQ7o
	 2JsFP/aD8OsNkyWFph7B3Ue58u0+lSS9ln3ou61B6sl3ed2Ew3gZj/QWgXM+ZlEXm/
	 574WKGIUjWxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8ABC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459679362.32204.6513019191316424835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0227e99e56a14604058d27a0d6540fd3876b26b48b7bf001795221946c6429
Date: Thu, 07 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754596793
