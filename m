Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25967225A5B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753655994; cv=none; b=JV7/GMwqvw0wF+WnsdvIzGHhWh/UpZIrSD9gMjPQ4U+V+CkgLYu/nkzEO3t/YB13I4KuhA8ju/g1u0yKcjzQEvkdmbqAr/RZLhcpwZMiQ2HAeSwZCvww/l8Frl5qwJEpj7Z0vDrplxnvVHMXlFvK9xYSH/KaagpCOC4sU5yKyVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753655994; c=relaxed/simple;
	bh=blvFkDHGrglvsA374W4Q6c82CqLDr9WJhg2muwnLE68=;
	h=To:Subject:From:Message-Id:Date; b=Z/02HkPrYTPLqC2llgptiUWsFSQphXslM5y+5reOgDvS4P5mtQRlAvu30k0riFf7YAwSton95zWAE1DyMLCjq7wsma7Ex73cvLITcnKiFj1pXF9xIoXoqILd47f/ZPhbmUHYJr4wfWVx3LZBQjfsnbvoRk09M4GBcFFNlp0YfJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m73nt5QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m73nt5QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9775C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753655993;
	bh=blvFkDHGrglvsA374W4Q6c82CqLDr9WJhg2muwnLE68=;
	h=To:Subject:From:Date:From;
	b=m73nt5QRS5EutpldL6//b+4GAWLylQuoPQ1Mvg36+ZBuxIvXRhZA/u/ljtlxPq3YP
	 cwPr3cHbn8RtAqfNM5neUXUk7YBt2jwKDvOIq8r6Z0qOVp2MA+YKM+i9vApFQxdljO
	 1iZYxpltL4nN4fGoTQTYx15/Qw8Sob0nR7KZ214HXhKrDcatKmVcq9paO5YzZPoAuE
	 n/ETXAimu9qiaBBrKb60KTt/+qSklPZenTZiRZwupX4OTvKvek4vu5CxCtdPBIQupl
	 ea/yUcLMqfuIJCUmQvn0+27ixt4NO5CpkGOkF0xSjKTWtR1FK0YNh9eadtcUjydTdk
	 rDF4lQYizQwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95817C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365599358.16517.12755053393820536229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc762070889933057f53247d2076f24c2df5ac3b69fdb234d6d7bbfe1f110c9
Date: Sun, 27 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753655993
