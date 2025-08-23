Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E98188715
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755922194; cv=none; b=jUj2fQkDNMf/3H9MeH9kV1dbpx/7l2WHlOgiGYW6yyulQDWxUkWgSaLtg919NOHEh6xdQEFkzg3y9g/X1uVpiGeTINo7gp38wxjgl4a4toQra2rg1fZt1rbGLfwioghA052iOsC1gGBquP3H2BTXv1Ow3Lreydo8iCYTMGGW8/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755922194; c=relaxed/simple;
	bh=7YZLM8OhyjhK+FzIluh+ZJzHWrmGwL7WKH18GSiWvtM=;
	h=To:Subject:From:Message-Id:Date; b=WE0B8AonkGHpGu4r+ywq8Iw6qEOl0npoSOilV2zRH0asp+c4D9OaN8ArN1/ZfKxzK/H4K0hqeLNrEEW39xajC3NxR9cWCX5fbi+GVhGb2GWAe84f8U5ZEHCD8NUdlq9Cm0FgfKisOA5g4GDTDKkwpgcwLOHzmMEN7Zbs/Kr1M1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFbkkW5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFbkkW5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755922193;
	bh=7YZLM8OhyjhK+FzIluh+ZJzHWrmGwL7WKH18GSiWvtM=;
	h=To:Subject:From:Date:From;
	b=HFbkkW5mGkMEXM5hLcYXXRbQuB5YDim0m2bmLmCD/YU2HWilAjz9I9kQ9LLMYciSs
	 f1TLda5ze0Z7q9NGfuJ+VPl0vGB35Pie4IODWaMtJ1Ci2lO82+uqBUg6dMRz3vQWKU
	 k9hpLmrT7oyfWN6+hYNBk4bwa6UdoyB3md6QQRCc8g1uLgMgWvo/bWDh0VO7KmYEAJ
	 UzJIEZIZRm9T7aPtxnoIrnmLgf3cy85I4Ro6wAjy9//xqdqccowOqvbF4E9A0+WlBT
	 zjRrqQ4D26Oesw5MNZmnCLsbZW9AsIrC9FHSBFLrOo4LCT2wl4VILyCaczdFb0nfl1
	 RxxkVxOrHrbfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939EFCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592219357.19916.7893956030126481477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697f004ffbc8a5dbf195d5a6803b5fbec3b4a2b36172622dfbe05e25cdfcdb33
Date: Sat, 23 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755922193
