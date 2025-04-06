Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A852F2A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743910794; cv=none; b=T/qpNEP09a9z8cuK4QqzlYhsFrhSgm8XtnluM8WDN1HAV1rfJikWN6GfeiNh2QE+a17d295sPcdaAMM1MaBEGJ2vk1O19t4HGfQDhvXscMtjmq0HMYWHxb6yzcppDl/Tg/iJUEo2+X8Nzm0pnGlo7LuKYOUM3XFuRyH7rg+1gj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743910794; c=relaxed/simple;
	bh=Vj0vtsz3E2Tptc2qAwCN/JJtZFqqhCwEOntpr9nAjo0=;
	h=To:Subject:From:Message-Id:Date; b=ODeOOTQrZd51q3W5fjROoHk2AwzuTJg3+olp/U7RnmhffzPJm9IYHBhwg4PuoZVcIvS8yqYbzzARiERuiF2d7e1w01zfHzXbX06qmdxUnCowCN5RHjH9mxD1jSRexh6b4EJHvz10ClDPNhYRyVjv6DHaeQve+e5z8I4BH+K3JLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBgGJJl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBgGJJl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9947C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743910793;
	bh=Vj0vtsz3E2Tptc2qAwCN/JJtZFqqhCwEOntpr9nAjo0=;
	h=To:Subject:From:Date:From;
	b=jBgGJJl51CITp7GWebOFn40niWT9RzgnY4g4El8ZBWfNAHumeo3hfouyGoTSKVfRh
	 a2kJ1TbCJ0i/d4/0dnTTpsSTEpVyDNQWINmZ16pXrQZRF0k5T+9NjKxYeYMuoVjnck
	 c444KoYFxjmgWLXddo/GEqWcMUEZjAIFQhG1rGHM0vtOzrngy/mkBuHH/MuG9VJ9jX
	 1KfQJp69HhmRADlsXRBRStR8RZQlrQUtOcVsIX+pxl3Qp7RyLAvdfr2iVeXZrZu8Mb
	 f6hk3s6+GE/vjzImZVDh3uxD/GJCOfOpuht5UPB08SRa2JI0qTJEpvKi5VtriQGHmT
	 HdBkLjlbX5lfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2591C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391079363.6625.11458837395805656732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e090c2ef3e2d5699f78ab3cd85ce8c79785ba434b00d4120e4cb450bd97c3bc6
Date: Sun, 06 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743910793
