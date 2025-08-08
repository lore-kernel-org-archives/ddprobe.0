Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC3B156228
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754648995; cv=none; b=UtR3kVDIOL25s1oIviA8AdTMLVAskOeg7FjwX6C14R1LHFDTY3sexInwtj3CqMCCJI4M/5194myxyRjWc7OjAMnxcR10islN0U1tzOx/yamAfkm9Ul8P9GlAJn6rSKC8L+kYGmYOyKYRbYXPcGwHpGxtwR1XKm4OMN2B737H6RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754648995; c=relaxed/simple;
	bh=T4OXkQlp0/vOZOV2my7B6sROJVWRumWZ5KK9u01742I=;
	h=To:Subject:From:Message-Id:Date; b=gAUVapjA1tRLOEpgpnLmcymVgfiSHqS2Iq7gA5I0rg0d0G6A6ibgirmOsnDV2p9aZMKS8+eOLYMvh32rkD2lJlH4/lIjB+HLQn9mWLMeTRHWbU84VGXu6GkjA2KQ8YyPmbiD+Hd9lPCq6LotDw2ytJLIOGxCvRGgfY4oy4l71IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm13X26p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm13X26p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F51C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754648993;
	bh=T4OXkQlp0/vOZOV2my7B6sROJVWRumWZ5KK9u01742I=;
	h=To:Subject:From:Date:From;
	b=sm13X26pBmkEb481F8hX6yZpIJu5iPeTHE+HLKwGB8JMN0VUpyAesw9R/efQ4RpbG
	 EPj5sEt5wSnDzyY96quO/P5wj18vcsJrYzW5RYHBUkdN37Jz2VnrXneAWS2tDikPsZ
	 2G9RmZ65Vkn6r11BlOiIwo+oWVtWQysa/IQm1amFI/yznrXes9Bc3fIZEeXH3I7W5L
	 ulIt76KuEmXRV2afZSBqOPdGcw5KmjE00O2LC75pur+W3rcJdQG4SkyPrWJzSE87uf
	 K6dHiS7QbRrvmkTgC2kOxX8q7WiBkWs5W0CRIukC4/S4GInC9HOjg7nydFhAbfNXeT
	 M75SajmlL7hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B30C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464899358.6975.8813232128521185493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5d7546e0c2e53aff55d650351da4671ea2aac41bc7bf97f66c1ef03ec6374a
Date: Fri, 08 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754648993
