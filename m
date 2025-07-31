Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7BB246BD7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753998594; cv=none; b=SohWGyfdh3lr8VqoXUPKHK26w/Mie/jlVHXlemsvSKLxW/RJMKvkXS9YxmKr0tlR5atZ8YzddsJZWpSQoVHxbetg9VFj07y91ISmjmp7qV9mp6w6WpDtdyFDIM63pUAO3ti5Xaueij5yMbyM8falJkhHpEgWKvXIRKrv421JWwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753998594; c=relaxed/simple;
	bh=Q5W8FxQhsAyJvgDGbp6L485rWr3Kd6Lxq1DjF74oZGQ=;
	h=To:Subject:From:Message-Id:Date; b=hIVIrIURzEg+43Na4MQ2W4wLJfNS2wVJxgQgXk6z1/FUJuTamIvjC2zlT8dtwm47lAYja8fwKvGf4PEHETur/dB60/2CmK7A6a+f7Z+73S84VPSFewmYeUOvknptrs6bmeQmzEi+JkiE68Ko9pW92TJFyKTYJmdZqF0edygw5qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4hTAvys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4hTAvys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A1C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753998593;
	bh=Q5W8FxQhsAyJvgDGbp6L485rWr3Kd6Lxq1DjF74oZGQ=;
	h=To:Subject:From:Date:From;
	b=Y4hTAvyskPH+hb8beALk4UqI+0ILZTzSIHEVy7VmCBZcJhGdKZGjmM3y0bMccpaun
	 yJ0DSzVg/WkiksL7Yi5AYCghKuNLKqmyELVXrEyvZW/FM4YWGRIAJLOMa/tDqKFpRK
	 ebQVEcycwBZXpYOyKXfn5QBs3GgMGuPnLNsdjXxxihrBKxPKXBEnUbZKeKUdHfZiJV
	 v91p+7wnoHl5S2S5laPo6xdzUVgOpE/m7V8iHQlg4al9s4Yiqlk0e6Ew66+vafHiS9
	 awU2y16bbx54gczl1DsL1nQPc+gl1L9rsS0bxvQ+TEoEdL6ZzuPQ8nhwgWjweXUoUr
	 hySaywvTDh4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCACC87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399859358.5709.4028454268433522179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d4bad92d578f7e5e634665e9d936b56cc48f0b0c7ba109bd00c9f906c07bfe
Date: Thu, 31 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753998593
