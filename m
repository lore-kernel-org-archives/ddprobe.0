Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D872836AF
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744286394; cv=none; b=PVabK6EfMOEZwiKJvjmQvah6PpUxGiR5WXbRmVzaJHyLR7WJu57ctZIELsGrK927Pa9IU5DqmVfAF1MZ8qC6M4vPfJEsrQErBjpjAO/0yZ1nHQD5pRGdUlOnV7al7lKc6uKSDuTS3qxtmkTCW4tX302sHmPDIpLiiwIq1tA6iLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744286394; c=relaxed/simple;
	bh=UuBOZBN/vdea3E9NP4h6b2swLs4TVgEjhdqbrDpj6k0=;
	h=To:Subject:From:Message-Id:Date; b=bR4HQpB4IfnjYm6+VoysFSeAwUpYXosBSw0XiE8UghBuB7GacpTpauxhvcFQdN9iieXveJ9zyJYe7ii6NZl07K+cYbfalIfpAraiLfoWYa+JO8DowvCocO1HoXFuMYi6bySI1U+A4BU6uPXg02p7tMDGi7GCKLzzNpKiN1vb458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo+wktC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo+wktC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A934FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744286393;
	bh=UuBOZBN/vdea3E9NP4h6b2swLs4TVgEjhdqbrDpj6k0=;
	h=To:Subject:From:Date:From;
	b=Lo+wktC1/ePbn3wTmW+V+qCnoLB79M2Ic+dXHQq9w3v4cLstFnE0JdcTaNYCu71sh
	 zz6xRKkUEPVIlysT/KwBX6XTOcjtGHO6GUFTPi3WuwcaSVeYrX9ckGZfUGBH7HZpHn
	 g1dMH1BMV0BM3xNzfbTBHT/u8sD3xt0dnnCKG4qCIF0uVOtXyDWtoa4lxnuqDUxpPV
	 6ppPZ5d2kLkhySYDtkOPrkg4NoGlhqPILLuf4EXtqoP3+JIZKlnIxJh8DaLqUQid/N
	 qqaLEbvV84f4ttQTqcCjTvLKdF1dd3K39x6H1lMqE+QiEURHalJdsXjfEv8a5kaonF
	 SewWAntjpQgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F47C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428639360.25280.16258724571755436654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941deb1732522cd44a2bd51eae477cfe87a47761579767703251ba553f9a0396
Date: Thu, 10 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744286393
