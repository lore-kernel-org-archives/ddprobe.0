Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2057B1FFC5E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749830394; cv=none; b=cdZwEfIS06nC4zkGAwZYozzvFYf5CoRO9kLhdPX0+B8EQz9AqRYhZ2ZycmI771wsgMpNpwDgJaqNxixbeBnfZDjmx1V2lqaQSFL01bE8GRoBR3APcVVRdT2WVweticw11RzXQmh5cauL1+t64/J14Pb9EgG2pjfoDRHRwoQvFSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749830394; c=relaxed/simple;
	bh=DNq35xZua+BTM6LJHrdbftfgSUy4eVEFCBdWOqoGxuU=;
	h=To:Subject:From:Message-Id:Date; b=mT68DZH6V40ukmG9HSKs0uXqM9Rs0QFdQnDM1/FA0cmGL0WVa9mo64rTaDNTAH0omr40aHHYX9nnx8TrNa1C8Gmsb8+frR2BwJDQaqRB6baK6Z31+skPRDSV06RmoNfdH7dmhFSFj07NMM/+CCEcDbUso3kQHUeBnPv+7sGdT5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZBmxzfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZBmxzfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749830393;
	bh=DNq35xZua+BTM6LJHrdbftfgSUy4eVEFCBdWOqoGxuU=;
	h=To:Subject:From:Date:From;
	b=gZBmxzfSKOdAYXxD4kzstP3YxqNBGv0Bj/uxBYQfyGikfYcIKXoAIWT4ixtrXNL4C
	 jw7WfBqhi5dvFlfy6Lwajoa3MGa/o+q53hdMZsYVM1qLqdFUVk+JA+N0acFMOGGloK
	 OOt2oJEyTg6SswUv6CW4sMrepl7kz12qGU1FKklKtquPrBEJrr1sMtTO+7ofYUUKak
	 sT1B/D6pH/oxs6F+hTtpc5LU4B0iWJggtAKT9V9Td4HcyQiJmoLZs79BtD0G8HQ6qq
	 EHmiZfcFnIJ31pMloqtmpiccc4gsmwEpu0iaL+7qHIBbVrb6CkssGK9DE+/pA5vpSG
	 D5gQsr1lDeRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4CC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983039357.13158.17200694089670669982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4deb9e7c23039fa92819fe2faff9fa1bdd63c858ace286400138dd04a37c2bb
Date: Fri, 13 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749830393
