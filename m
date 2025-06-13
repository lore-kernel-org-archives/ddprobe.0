Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229562C158B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749809394; cv=none; b=VeraRVoCizHc+cHj6kEa+YUlD9IY5yOF37sHNrsG1/VhrlGmVXivwvOsNGpJhZePqPHMf8y1C8xdWZaNfdp2TVtRL/MPlgrEBb1k0aMNIFCZzjDHqV2JhaoPC8PQYfIlBWHmcbfs0IlP7l21nsrfmWfNwFlrjuYWfZNbRxvjGYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749809394; c=relaxed/simple;
	bh=xDM2Vc5rmTowK52Ad8mx3Vt4y0sP0zUHB3+/LMaLCqI=;
	h=To:Subject:From:Message-Id:Date; b=LxMP+/HthjDK8HS7ka3E6h8SRjUzIu041JXXUTT5w200Pjwhr+ZwnTAIh3j90UDyaBp0DKrMVCAS8jGzAyo1G/5IT3NrXT9g9STF7SwGFi+y1wqYvLfDE3cVrlKyTVvdPwoYNOguIXJxEEt7qLHwUOCpoDeaw2c7MVHiCg60EOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZKC/svT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZKC/svT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749809393;
	bh=xDM2Vc5rmTowK52Ad8mx3Vt4y0sP0zUHB3+/LMaLCqI=;
	h=To:Subject:From:Date:From;
	b=tZKC/svTD3jznfatHWY53ikubVUg849mT0piZE5/NBERQWTUfGzXp+N+IrLZUO5Z5
	 O9xUHWmwV8xV6EpOfzuq9niPyTsOLEpvfI8GLpVkEOqcuuzmzY7ClW0FbYTU2qW+H0
	 8vzBq8KPy1b1SkOIVMMawNkRgP/DoDgQqPyNHjaX9uwkmC6x5C8DxTGxPS/i7JcLaJ
	 8MLgZqsDDCBxmf5n6DMFepLwoVVCRJ9JIY7NeTwAwRdhQxRvdzxP6KpDMNz4Dogj9U
	 qqopyhaC26BrsKbeexWRydKXdFJ0AXto+fY/uKA/404NyhN6PT2RVBdN0rsfALHyfD
	 lLjGRVtI5Azmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CBC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980939358.21490.18009958816494427136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f63ebc040a9dd99c06e302dc1296239353b588205ba08405583486166e9b525
Date: Fri, 13 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749809393
