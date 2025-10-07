Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4E7464
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759803594; cv=none; b=nAmU42svxrR7Gm+k4JJC1xD7QXRFmnDSFfTvaddFqQLQ1dn3yFyOSJjEB9gBq5VR16FZqU2fD9Dte3SdMwW1a7kBZanJyuthjxCC+Q8oDmyhhLgxnD6XZia0Qe5F0eGYFNU9rJyPZV1PFMQ7xaB75RoSCFP3D67LO6U43UWbuvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759803594; c=relaxed/simple;
	bh=PPmv+izktjHSwiilJsIL39A4OtYXbR77Vuyb8iOTW0A=;
	h=To:Subject:From:Message-Id:Date; b=k2bhRcKqLrLxW7PWRazgnTPGaeNjR2+JTGX2EvltfKD8OEwXWB2IIcMxoF+C/mNV9kd55ob4ItK7V1eNX7xwclAloOcasvrMcv8JGBqrqemlVvBvBcUTSpBK4qoDYA/kB6yi2dcm9M+nckKr9y3FdmhRvdwk+yVQYZhRJSAF04U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWw5hyYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWw5hyYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9522C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759803593;
	bh=PPmv+izktjHSwiilJsIL39A4OtYXbR77Vuyb8iOTW0A=;
	h=To:Subject:From:Date:From;
	b=UWw5hyYDQ1a5P5X4IXOLJ8nLm7ixbNkzjNcM3Nk1H6BgmWKX3daZnni1ggdTkdvrF
	 edunZ6aENEGuarCWcyw7NgOeM989b6DkUqfClLrrV/2pVXOXAgqeKW/n772OOv5lP2
	 B6ZzGjltyIZ+T4f5pqCdQ5CDNPuR15tR0iaAZJffBM7TwgA/oQl1tPQAJrN5wNyMuW
	 NVQAKCyyLq0BgLi+4o9r9BIhIZez+gqan5iUJV6ZhaXhqf1RyTJs/GODRM7v8sGVhC
	 9K1OTqj2huJ75SUIuuHDQiIh7wHKs7VZctw8OTvjE4ejcGKIRwp0M1gbgtET1CyTZJ
	 IrUhbGc7rJXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309ACAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980359358.15799.12922367024492978717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182876caea9a4a9d6b5506808ddfb984a86b2269ae42554e7caec7eee4a71343
Date: Tue, 07 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759803593
