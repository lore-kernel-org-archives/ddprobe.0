Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9DE25949C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736313354; cv=none; b=K+N+KMs6kBEi0HU8tn440qP2T+won76kIL1qg4SEMVByQr8pleJ7SALwwAuqEKubqFJUhyKypTSGOohVAUbYt6bK1F/3I/+zVW94r8PGMYFRsBZomGER9hjdTtEnKfT0QsBsip+Y8DyoaM9bwlokVe3gAfgXKIuYC11gyWophN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736313354; c=relaxed/simple;
	bh=OU8O0JjSQO/++UbEgEwuvxGtdCVrdbSRe6tvvx5wFjI=;
	h=To:Subject:From:Message-Id:Date; b=una+m/YAF84j1hxlHJz0XCa7/mybeK/vTPyVzu9QK7Z2AaYI2BYyIfBq21dHNDVCuINAuIcog9XNtm1SSRQn9c3vSe2u4M23r9+91troGPa4u6Jik4EU2WqQ95/mUXg2JNp4tKuo52fwa8jSSJ8GoW46aWuNA9uLdNd0lP/qEOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4dr2tk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4dr2tk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC3FC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736313353;
	bh=OU8O0JjSQO/++UbEgEwuvxGtdCVrdbSRe6tvvx5wFjI=;
	h=To:Subject:From:Date:From;
	b=o4dr2tk6RkcRKNmwIaKxwJy2MIJcXM2w6tlm708RT0d/NowZZTMOn/2DwKUelDjnn
	 hAhesKfOnpKjDpZD2cOTXoV5fuR3kC80jPLSwvF1qUus/7B+yIHGQCmyly2dQVBswF
	 MfQ+Sz6wS2aKE29OUvydYXmVxodUHcekJUImAJggUr34WuiVuD6v2g6S3zyfaYMRvV
	 PG7DX0Gf6fBKtGj+cLPAlYu8V99fDvQhRZ2MN4P1bzYLjHzeSwtgJcS5BysJQECOEu
	 fV3+Lb6RtxNwBxO3BgDiMcKvLhuIKxrmHDh9AMBmgN3vE9sSe0iHvR9wRETVUUGerX
	 m0U8BrWs0UlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83C7E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631335363.22388.10345198474669029133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6e9dca7389e8778c63259eb47f5cc818a4f408d85eaf9ce6ae9a662d426351
Date: Wed, 08 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736313353
