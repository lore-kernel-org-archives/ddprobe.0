Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2418991E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754114994; cv=none; b=ETQcYgHDFKsS31qz921QE94Q3feKWy8TAkpFq8PNFbP1PlaVYTgNMBOdwvKEoJ39rv+boviWm5vBhnlJ8xAV2OGqB4Bc7WplEk3pfpH3e4XrfMuWg+A6kAX1gu8yiPQIEA6Syi78LYGUtePTVhXvFeD5phKWQOjk82vWjE6Axhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754114994; c=relaxed/simple;
	bh=7lSsAbB6wRg6e60PIWMxsVOJ9+oC9YGW/+1F20M4T3c=;
	h=To:Subject:From:Message-Id:Date; b=khG7heixrVe9XZRtYKVkPhAXTEZz+s3IlwmgFyJ+X4K1LlW4V8mdmGxtxNzGkODfe1eGW69K2M3584eyU+6JueBXCq1h+2vUUoInlh9I3EVzmOEIrxQn4DBwUl1rvNIOP+0j3/M4T7qMGwmhlsMdcHY4sZjesOsljaGB1PDgdlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOr5XSuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOr5XSuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70E3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754114993;
	bh=7lSsAbB6wRg6e60PIWMxsVOJ9+oC9YGW/+1F20M4T3c=;
	h=To:Subject:From:Date:From;
	b=YOr5XSuRt6TfUMOoSOL/1n18kJjmeQC9TwNF0wNrWFdpydPgNdF9y55tx8aJE6kBb
	 4ujXGF6a5gPCI00+IYN6/oCk3cXSGFisNm6YWH0rBZSEe/8TePrCD/n3ztgFhxmO6V
	 gyU1fS0m0lFESIjYKUp1gTWiBQXZ7z4lcfDc+YA23+nCgNBI0DfZ7KnBRoRaAEVQ7q
	 tV3S794wCDZD62QdZA8l9diXa+neSgiMPLNlk9/UAK00HkDhlLnTtH5bhSNrIsfFCp
	 sWFHZUgLazZKjDxbdn+pX+IEjWzV6aBh5uGtf7zOwsawL+8VAsgxlxw67UIbMyWj/A
	 PRdQlVI1WnqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94094C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411499357.28063.9784360276608517194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed347a64e7dbf7b741a339eca71cd0c8a3db6af5c8d7fdf40799823082c305f7
Date: Sat, 02 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754114993
