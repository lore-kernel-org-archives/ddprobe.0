Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9EA13541B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729285554; cv=none; b=obIX9eB15MqwgnWD0xmbUTXYkVnAIhMQw/6tZdiTCTMDpXO00DME7xo+YO5xXZsfdk6teF0gtocwZybH3J581zmgVoNn3HywpMXeoGTkbhd9hQ6UirYTwIWC5wqZnRdbxHoNi7Gzm1GejWRHmbFX6yod4xYjXlqeWVzOqWGHI6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729285554; c=relaxed/simple;
	bh=rfeJxoLXB6YCD8BbI5VOOQvVGj6JCuQkyzNpD5uLMtQ=;
	h=To:Subject:From:Message-Id:Date; b=MgeiCs0HWSs7QyjUDU8sy1Z3Hv/XTiLQEl2gIrJMEFT5hgcLtyEe9h68UDU2I155GBovQ4+NzN/J720AGvkjsB/pE3jKX44qQiGJKUMSOjUuzYcWcQduI+8GKN1yRNMBclYnoIyPRHzmG2IAvp6wugxC22cmo9GngpwcYQy13hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJTPrT3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJTPrT3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF3BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729285553;
	bh=rfeJxoLXB6YCD8BbI5VOOQvVGj6JCuQkyzNpD5uLMtQ=;
	h=To:Subject:From:Date:From;
	b=jJTPrT3wt0I9Ub2roi27NjiY5N2jWm8LD505gvof/c5fsOVZl3gsaQLGY7GhoFHTV
	 3+pm//1LajEh2MYR+9dymKWZWSg1qpkK/3t4wMaIgKUqFYtsU10sy4bJw9oawo5wSw
	 jaGHkzbBe6X3Wp5CBlBftNYDjxNvzMuh81McNToE24gSlzGJynPRpOn7Ko+LE3CHa3
	 gdZ0/N4q0j4r6kMf20SCkRERIRdEn7HMww8CA8+98QVy+aMuz0DP7RUM9W3z+UlE0R
	 u2kORLWNHFVDB3+IpQIeh4aBrjbuyT5cUx0AZnhADXYqSg6C2cEmZJ+839X+4dgQtw
	 AK/me2r5D3ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94537D3F29B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928555359.13363.5372803469294572654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4051635f1ff6180b6117410750471d03af4dd14328ece16f89a1552562123c
Date: Fri, 18 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729285553
