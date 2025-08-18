Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125E727E048
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755502794; cv=none; b=f8It3zYgLCmbYhLpF5t6yaQKox9oeQHRHq5hnExKaesArF68v2MUrht/NH/bohVlhpixm+Jhen2OZlWWpcooxMKobkY/+6o39Y8OwEwlQqtuwHa7lemtcVHUd4y6dYJIb0qYMaQDYoim6/UBtd+V64qbZ8fiNAci3injpS3ZceI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755502794; c=relaxed/simple;
	bh=Ektva0ht3CXfnM6HjH+cmr+1JZumZiOKzOM+AiCJ2sk=;
	h=To:Subject:From:Message-Id:Date; b=sgRK8qQDCaAf/gjX0p+75ucLVCukHoEg6h8njECTG0vUFqjIfX4Nwl1sRM5IWw5Jensr3mBmmstK50rO7f8lyGNIxPQeNtbQ6rUvtpxGDme6YniG1yf0ucePISDlTGNi9Phwz6hbeZkE5LHPzDBib5IhrPHH+pu/yPMQa0zkGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdZh2FzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdZh2FzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E880C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755502793;
	bh=Ektva0ht3CXfnM6HjH+cmr+1JZumZiOKzOM+AiCJ2sk=;
	h=To:Subject:From:Date:From;
	b=cdZh2FzHV5BB618oEINjHjy30m//ft8SsXC/9p/1G+yVwPXhhG6So9TnsH6qNTo6s
	 jV1mxTAzYlY9fQxBiyc/NK6JG4pWy5XTdNr43sGKDd/y8SMvxtuWuOlNADDe4exYEa
	 kWl82tx12V1tDKZKL2xXPROBgQcmBnIYz/fj7kncyeo1clX10IZlriG1LwNpe1Fz58
	 hvp/KDMsHjPFOnN8+6gET4wFkYalGM5V0xmqFJNFqVyLS1KN2vLbklCv68kA2/JlZe
	 9lXYrXqmpiIWljP7fwDiGlZaYN2PPQl4vooRqSccFzXckzTPjaBv4i3AD/PkttujQB
	 F0MaLVnQkYsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000DCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550279358.21246.4886435503246311233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4d6651f2c3480b8e6d23710203ebcc5489d9598809036a941c6e303ce170aa
Date: Mon, 18 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755502793
