Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ADC25771
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772093094; cv=none; b=MnashXkMKSklv4+qQv0DA5Wh+754QRoy/2/zBxjkyqGIVguB1gXOgTYL9NbMd1heuehIUAoRr4OF0XpcGkSFHEKZ5LWwlktibkjkK1ZFosvHWRgR93xFnGl2hJiTBzYmCzLGjtQ/3PUdtoDdEXcrK3fsf+4mjeZ7Hib8lc+iWEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772093094; c=relaxed/simple;
	bh=mGA7PeQw1V6VrVg/us0enCWKa0ZMvutVaHYBsROyH+s=;
	h=To:Subject:From:Message-Id:Date; b=Q4IfVS2JdsJ9TUv83aFgTsxN0wmAcIyRibrGBKh3Dib769xiEV63UACVss46EeSNwXGU+omIX7i9x2OlgXT7Id7fl6ci5APdQZbC96jzfdnKHUwHPUw35DB2o/NFVTfs7oaTAKnz3EweY9yb97UgKDabbnVk9WCxb8S743Vlics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3OIjPQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3OIjPQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E23C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772093093;
	bh=mGA7PeQw1V6VrVg/us0enCWKa0ZMvutVaHYBsROyH+s=;
	h=To:Subject:From:Date:From;
	b=I3OIjPQ3Q1ctMw0OrXiEEaEuk/iKUz9Efi1+Zx4qHetkXuyG1zavKSRY4m8mZDycO
	 KMc8ymlN524Q5foFl3GUbMfCPmmiqDqqej2zt+F77oKPbJtiM7Y1g8wVuZXyQhfls8
	 h7g+kp53uQqY9p13TwSYaGDOX/OEeXFJRZkVSwKB39aDRwAejxEcIhE12ahXmzmbIE
	 kNMzHKoKUB9hqRjyEFRXy1K7Mi+WxD34W3Xjiigq5iUso149inieAFft2yVFDqC8la
	 Deal+f5pWlgEIDz1ZheRnfA6G0Mscc4zbYpeCaJB68oPQ3DMDg6mZG0y+cFTXRlpNg
	 qq0MLB2RKxSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92679FC5908
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209309358.17114.15498631029790098297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64c0c11c59884f9cc7aa04cc5d73e68b022c5b6d5b728f1e1aa9ece54c3b679
Date: Thu, 26 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772093093
