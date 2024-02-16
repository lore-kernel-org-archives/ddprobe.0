Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D1643687
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708102097; cv=none; b=cN+xjjn6t7d4aTvzyZ32xfuHccFqhVmX18c3S7hGQuIvQS9UnyAqfpDGVXf1M4Nrj4ZFyJ6WFJqwnBGX/YsnjmxNcRaEroAV5t3/k0WBAKBFlJFefTS7qXam5okFTpHF64wj0MZl6Wlq/dvmZzcdUvDLFC6rvxOj91TeIfQrf7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708102097; c=relaxed/simple;
	bh=KFw457QfqhZ2ODj4VCoaQSAa7kRcib/htvbMSo9cOic=;
	h=To:Subject:From:Message-Id:Date; b=gmUUoRRDgXP/195IzhrIBjf1/8OvesFj9RNN/J8bAR9jC21wJvZfioprZqXJdac21pWFUIbEdJzEoqisotrTSctJJ5qdlxdkKQQIyITH0IJ8whkuzAlOXmVMLgSBngvZTtZztSLiNVKGKkKVo3eI0Blf/Q9qv7a0pAz6iHKVQt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fh9NIcF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fh9NIcF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B06DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708102096;
	bh=KFw457QfqhZ2ODj4VCoaQSAa7kRcib/htvbMSo9cOic=;
	h=To:Subject:From:Date:From;
	b=Fh9NIcF5n/3D5rOgx+tMr0uDQSHUzK0aZyvidDWrv6tfjzKprOVCNUGpf5CaSCAWS
	 6lcpo1FrS19uaczEbdSH8DRpnPjo9YR18PiFVvzNu0JCYr3+09bUvYNgoavAWbix/h
	 HriuiQopKWKsrW6xoy5C08A6MQO1H10Mm/ojO53asuIgx2EoHvT796F2dSSltq2pwU
	 6SdC5aVS5T6DhgSWTSWCW7hMyffkuZYvYSNRDwQFkfsJ96dhI6GQwcUy26akcH4mcl
	 jU46vEzYlDAs5aOHSC/37Yck8SdkAVlnQyQ2jGWO3r4EthklxDxUUov4JxmObE587g
	 34OM7uCXQxDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600F0C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170810209638.11656.11334754911972013449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddce5cd4982a995c5892ac021708ff0e1fc28a3582bbbc8099f3e0ba94b609e
Date: Fri, 16 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708102096
