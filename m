Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B39174EF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734036954; cv=none; b=VqqNRDe+2J8P41CTyYMm0rtYWwJURshpL7+2Mu2JpYYDkfx1lgSkB0jonp3hzcW8MkANo+GNotMWKKvYPpcRC/k79EDw9RhXnkSQkeKIcpMszmHtx0zsDz17ge3yFMkkZY5h0jGDe92WEiRiYUjmnDBmIiRPCb4yWvIKr80tW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734036954; c=relaxed/simple;
	bh=6jEQtgQXyiigCViMLcNz7CUmirfls/Mn7ySujzZgamU=;
	h=To:Subject:From:Message-Id:Date; b=ISIWXOWXT8z/wmF/en+PowoWkLtqdFk+lomxhJciDNGf1J1SeZq51veZcoQ0DONq2FMXzdI327kfPt4dutEGQDFg2dk47c3eAtijgUjT3cmJ0zNIDk+F6zoDnzup0LOxPvzBIzxLBaC9gIQ5hHR/uEpmbz3BuSEUZZm1FNMw7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzja+FBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzja+FBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3015C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734036953;
	bh=6jEQtgQXyiigCViMLcNz7CUmirfls/Mn7ySujzZgamU=;
	h=To:Subject:From:Date:From;
	b=tzja+FBMLzsKBxMTkNhGmP8LVy7oPTl+TqCJv0c+exYURvcr05OPlkTp02HK1pC2Z
	 csAKipsgiQplpsVIUhJdvxKVHXdQubZNHFjvClX2ka4N+hMznNCmOtj1jkQdAdQCv4
	 VM7wgeUEtXaIfkgri/H7kB8bXZAISH6ZBLdNExloYLMrg5GHa1yRwF0EGCjYwHcKM5
	 0PsWnXyrIJxIQK4UtwXprBu32z808TXzJk6CKRS0y52zupJAVQWHZkTfyctGRtTyaA
	 CC9hi/De59cXBWj8qUoyM9KU1SENjgJYyGcWgcqSVGux5m3RxTlJq/y9njy8VKmJqw
	 0KQSG+JyWg8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99438E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403695361.22706.10897379617562869652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b5130e27bc9a2472db6336f00581b5061a7b2223a5a502c1873e652d64b2ac
Date: Thu, 12 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734036953
