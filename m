Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0683612E40
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706168297; cv=none; b=t9hJBP5A8xEcUCbBWT8mLTeFEaHyQZD5R96bCTOnHvF/INSPzau6bS9T3ihCPM6cxnS+1fFH5FUPZ4a8ihTHAJHGSRvRKDvyfqz/G0j58H7iIJNohOVLEsizfy2/hm1dFIE4//83jG7uxsX4hoN5qBcULnkD5JNkEB3u0fv5psU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706168297; c=relaxed/simple;
	bh=8PmLiQxbx8N5QMyHi8f3i0oziC1j1lz+mFK8QwRtO0g=;
	h=To:Subject:From:Message-Id:Date; b=UzIL7d4K8QpJ31Qu2gR5o0TFnOWK4OXJ2zt+8W5lrox5NOMsVrIkXpiYIi6D9v046T8RVIT3msznZa1bIWXhZre3j/q90dNaLjXY8ojkjlGjczGnzVUoLDsRMNwtHITDH2SxyiSu47UlLuOjVy6EX7zZtc79kFAdIn9gdyqh5EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t01T0lAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t01T0lAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3ADC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706168296;
	bh=8PmLiQxbx8N5QMyHi8f3i0oziC1j1lz+mFK8QwRtO0g=;
	h=To:Subject:From:Date:From;
	b=t01T0lAOSqeEFiNKYFYhp7UQvMF2KO82iJRrkp61Bd3KcpR63tmH0aeCn1phmMhhW
	 ZlWsijMbk9kNnAdZT7OOYFDBSi8Xx2we2SxNpCQZmicWSFHhZTEAZSp2FfxX75z5mh
	 +/Kt7BiClAXCXzeZpbyOqyAaWDJwOxj3mzzEzQx1yrVvZCtXtcRks93EU6XXLwnPGi
	 Bt51Q0Fyg1KvjVH61ijHHAsa/5z7DVI5Pov1pNZbqkxRYaNKX5xkT/1RWz77TldD8H
	 Mpg+tJjT1RNDJrw4ZwJuHkfyuu6GXde6sG40CwHm7UoUtcT8GbdETF0uTZDodafDZ0
	 H8A14G1lYmd+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A11C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170616829640.10185.13492767805502690932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a070fba572922d1a53f7467534c5b6ede9b597cc1aa60cdfb397d55feb80e6
Date: Thu, 25 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706168296
