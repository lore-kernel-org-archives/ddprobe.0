Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7E73A1DB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750224594; cv=none; b=qP67j+JhJTySMWEQZcQu00yV4YlagEebR3rpI7HI1CDoSzv1iHszcq2AAyIOd1U7VNGLek+cA/YHgLbr+FxPOVKQEPG6m747DXgRUwRMc/2Hb4qP9IHmC+1HpscZIwhc04/3WJLvKBf81x4dHLzXSeE4IildMEURNoHoLFkPypY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750224594; c=relaxed/simple;
	bh=6zRWijJefiBR/aD3GTAa9zK7ECYTN92XTvBCWo9CJLY=;
	h=To:Subject:From:Message-Id:Date; b=abXMGjgU6D0mqI2S4TR5EDNrewBjV6FGhDyPjAgFMoRaSoiliVs2ySltZZQxDC44LwOVWqwk6Ol2k8Ul/OoF+m9+RtbsyCFsxNyMMV/Cvy4S8cm6CI8utL5nd6A7YBJ7UBAup+ClMbzit7E/9KSBY4z8YkcpaG7Z11fjfcFvVj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYcsN84y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYcsN84y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1562C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750224593;
	bh=6zRWijJefiBR/aD3GTAa9zK7ECYTN92XTvBCWo9CJLY=;
	h=To:Subject:From:Date:From;
	b=UYcsN84y1KlJvUnkqmGP2/X5mH26A/bAx7DSMXnW86kaHHhLlbjAI5FddsOSXV6Ge
	 FDkjjhlGay+in25OkbFcSFkurkvfkBn/fT2cP5CUTpYhLroNBpzC8GFICuKbjSSWCP
	 XMK1wsm7UdQfXzcArjOJ9hkf2JszufOzb6HVSGkEwJ9o1nYAiWrl9Rd/8+39+KfJy1
	 wqh7g2nGahZIbDyexPA9/I1fZJblBZkRvLSUQf9xOZNCVaM9+PfJykRtMSmehWiV7S
	 RcbUU4qWFVqXNcdgZIIpMYUUQ8Gj0z1inpU3q+qNz9aoLpSpOsoG98dmHnS80JTswQ
	 2M3Yx/uxPmzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE04C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022459358.29168.1601467966861911989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c460f3c893bd6513635acd057faabcc2846eff601cca9179b14b2a68ef7d5b
Date: Wed, 18 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750224593
