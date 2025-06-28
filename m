Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D001854
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751144994; cv=none; b=BvMCD/iP9mjBLkBWA3wOVvvifTALjDyNttWO7rGiQB4fgKZgf1TbFe8gwKqblek04RCunAutSHCJCQiExlNYxwSjQ0fLcXTvgxKJhJQUtssfUeoO1oCn3yDtoZAztqWkbU090nOH4oYON5J+7TmoZn40+eAR2lQigFrRplP3/wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751144994; c=relaxed/simple;
	bh=GNza2DFM+PeDQBsD0k5tMi7eTIyYCj5L3Qihx5EcQDU=;
	h=To:Subject:From:Message-Id:Date; b=RV6kvd2NK3jzUJRUmRGfInSUv9ckhtgtEzPv3cpIB21OgGnOlAA0nfi0x9C1ERhgAAIcxSfccUwKfvsXr+GUaWd5wH7I6wSHZWYfcaYzww3S1Ocxezxx8b0PL6sRh0yaFXVyWLHex4dlvOGAeuSk3P2m/+xmF/6oD6L5X8/fJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+pXbw/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+pXbw/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438EC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751144993;
	bh=GNza2DFM+PeDQBsD0k5tMi7eTIyYCj5L3Qihx5EcQDU=;
	h=To:Subject:From:Date:From;
	b=V+pXbw/JuM/2eBlHuwuojOVQ8xvjiJCm6mfiurXNZ1Q3jj0T88OPA6xbbShPY7dJX
	 0xKlpPcoPGtw5mh2JosH/CWjwxU2ECcT3k5m1Z4A1UcpVlyc9LMJJu98YemYw3vFHj
	 /IgMmFezlIB7WcEXMHMFWirD/QNqalZFXmnB6QWVOfvw0d3Z2vAv7zN0uevtmMsGNV
	 /8ivrDwt6pWaakbOIdoGAQx/Ki14M7g+DspXfPErmLjzqTCqYTOSqK9rQ4ypnzrYi0
	 7bfZHwR3Q53VHBMdZZyIAwXQc/BOairqrt6lXrhRxO++p1cBC6MAFi6XQTuzpJeXDR
	 HdStoITEf8RlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB06C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114499358.23973.2750203739927735413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d389fbe86fb19eb3a90d497c2bffccc14169592378b4346108a8fbe7daf8fbb9
Date: Sat, 28 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751144993
