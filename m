Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE2B242D72
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755690594; cv=none; b=Dklsv4qOdFis9wTTqQKF5vQH4wIHllPAw0N7Ru4QWeaSzx4OjNK2sNi9tNJJZ/3XhWSWeS6wTxgmsqSQlOJjErj9PixgkOlykEFneHTxEkkX4d9GHMIDtL5bilFMSQiTwwNQZwbjlEiFpNn+1qtm1Mfhf85fAEs4HxnpTEIMeyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755690594; c=relaxed/simple;
	bh=UvMgVzgR4IfrWMUde7wF7VfBAZwIXOSKTZP0nM6EBz4=;
	h=To:Subject:From:Message-Id:Date; b=ueYUeQunzmyFJ/HinUYqcAxiUswrMq6Q8iZ9uvyRFLC2ewURgd/l+4nQ1lY1EgPC1uG1qT8QSPr7ewX9n0akvhI1EpUMeAnSO43o4FSVc6s8F7jy5MfVTD53EpcYO4b1DO0vY/aQhpAvtAJ1hs63Ggy+723e5O8hV3CNAmPvknc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1WwWFIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1WwWFIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F422C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755690593;
	bh=UvMgVzgR4IfrWMUde7wF7VfBAZwIXOSKTZP0nM6EBz4=;
	h=To:Subject:From:Date:From;
	b=h1WwWFIESL5cDANgEAXf4WtLR22I1x2xMRuqigowlcdeHoMPPgO8G2wCY4MfFu3Mq
	 MrWh6W9vgUaqALgvK6ga91qDaMJx9Tn8HuhANc0PVXUxOyal88J/3yqCINBPWQ8yK5
	 KIg8AJ6KOaXaTiVkPZabq6X/Xp4ViUOy8PBp4US/YofuG9YqTOSd6E4ZUQb32bbNd9
	 cMpqXoF5ZGAeXfACY8Bvg9Afcgs+F6mLgPXx0sLimKa5+Nkh5kMoTbOC9niXR/8/PH
	 tRXPsuxLMNBVUuYkiNEiR50ONEK6COveOUdvkKHVp8Zwok5caAbPrZPFQd+oKWBfuY
	 H4EW81a+S/Pmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E341CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569059357.22985.11425472519128671592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5005fb7b8e4a715a30551a80d677442179a2b8aa61020edae7da470c2c9acdd8
Date: Wed, 20 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755690593
