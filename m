Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1E52D738A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764862373; cv=none; b=LLzO8iLeL8+D+PHwjrzQ1C/vyp0X+JjK7+xsSdSPGk5KY/cYWww228Ogd5SBp7hS8kSj4UchxYT8f6rWHRK4hTpVv+3su14RPEQ6lUP8sskaHto5PNN536t70jSzMowM3/Dt3MUS0xanVrgLK0wyQ0ejc8HNDBpSx76G/4endn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764862373; c=relaxed/simple;
	bh=14flj0uezrNhnflqxkoQqlgjrUG912V13l5Ho9JoscQ=;
	h=To:Subject:From:Message-Id:Date; b=dImn1zEHkusTh3bpKp4ifOGhEYbbOPw91p2+3H8KQVHNnaVzbFTW7BCfVxfY76YJUBJ9bK8iwK8vbTp+0pR+t3ShZrIeJR2L+zdZjCCQEEVs6Y0hMYVTI6XYm7xw7UeI0//LJpMap/GlPnPy/1etzX1BiUjLiq4zBrsxyF3cGj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSd8nPXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSd8nPXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CAC116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764862373;
	bh=14flj0uezrNhnflqxkoQqlgjrUG912V13l5Ho9JoscQ=;
	h=To:Subject:From:Date:From;
	b=KSd8nPXWQrp9hBSQAJwVuh//NDMdE0LjWJUw35DeN0RB+kHy5cQrh15iHX/5pdm+J
	 sbktdqQcDXFG0vJZUJ4wP4SYUIaUxPpoBvb5YiCx3EuacHLhKbDFYN5of+xbYPML19
	 KZsXCsP6ZTx27aM6/7dmy8XszuKS0Lvw08DxJhSUG5pzuVthsD1yxfPUMp1JBpg5Ek
	 TB5ZdwOpXdjGSWopSGyn1LT/wWCidu6OuQKZNDhUw3ITlIg0kLSk3sW7txI/Uyi1Y8
	 46UVT1RWqOPLRT7v6okV+LntESrJ5wEMhaTiGnPLRuKN6Ew4FWN0vc+WHkOnXIz4yk
	 2XelBRN8hsENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C09D2168E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486237359.19133.10419768101200813526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b124b0032679fd83a739c5047bc7696262cca4d7356ed119cfb0633eb560b2
Date: Thu, 04 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764862373
