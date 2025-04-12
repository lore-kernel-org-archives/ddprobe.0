Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C97C19E98C
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744447194; cv=none; b=s40pN7H536lZdGOaVuN49oCvTUpSRYfdJr+30kHlpBlGeWUyrUgDi0X8IXFt5gMcFuWJSD7zwSqgA80LX1ZawRU+aK5pHHQzQJrUhr0H2Q1weFc72Lh0WYNw7BxbhvvOBCeEVXWoF5zTu9x9+eAwpJmdBuzXhBQBKYlmsCMvsqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744447194; c=relaxed/simple;
	bh=qf8tjaXTsvjZau598ZjNxlZC6TGLWhKxGtmnnzQWDkg=;
	h=To:Subject:From:Message-Id:Date; b=rPokCt2OwrIQv/e8PTeZjJNcRPNBrVTuHdnenkLK6jJzCpmZUbmAWe4REx3566dC3sle1pxEd9n/04i3fqNs3EQ0xYxRdpFJx1mQf1n/55on7Si82JzEuaEMcuzJN+UcF9Q9WplKqlbUGcfC+WPPTLHGdcLRBxezhirOxmo6eCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl14SasM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl14SasM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08BAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744447193;
	bh=qf8tjaXTsvjZau598ZjNxlZC6TGLWhKxGtmnnzQWDkg=;
	h=To:Subject:From:Date:From;
	b=Fl14SasMxwSDDNv7kraxwReh8Y7z1Ibsh6BaOgyQx0hqDQIS54c8Jw9mlmy/lfYSs
	 PJ1zPh5gWp+wLeg30jj2ZrtKhTbnCtT/OQYExtYxhd70nhgQ1agFclfupH0FIu2Sxz
	 Vb/6Ef+/mkCPgo8m/WUke51GD8B0E7mlGrX1TyaMFxgp5V+p6141niL0u5dGMkAPeA
	 mPsJYOR4BCbhpM5OCKmVLYb4NJd5n2ZEHmk0f2mWlKmzjHECXWh+BhHtV24eePY+8H
	 +dsvxzwGz1C5w4J6IyyBaTJErNf0SXA1uAG+eWEoWCKAcGaQ+w8cs+oPSsQGx9TsHx
	 1zCUvXRLmzcsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A047BC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444719364.27525.16228257246444263090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00001c513b9050760d39aa50583a3a009fa4db6a8d56b079adc8b4849a0fbf95
Date: Sat, 12 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744447193
