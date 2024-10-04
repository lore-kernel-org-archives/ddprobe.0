Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC221D9A65
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728054954; cv=none; b=PFIcoNvmQSdSX6TgvLUCm2HjNEKfq+YQiY6mQawNYFpj/J/Qp2YEOAKZqH+dynDcj2LtkaO07M+3ymOK2/Nxp6TLX4VZDNYjsF/lAS8JF3xszgcqFqO/80ZwmOTkM+QPf8bPpdaOBPHIb7gaDSourR/GP5bgX0gD9Cbo44JZDWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728054954; c=relaxed/simple;
	bh=zA8d8AG1Pma5QwvZVDfv2PKjYZcKOAc/WQEgHDmi3HA=;
	h=To:Subject:From:Message-Id:Date; b=ptWObS10UFSOwWEMQf4gYjzaYuKiYRqBI/miCgXySlB9QZ0W7m8pdjDmGvwyX8L5mhEDS+a7YHh7GjfuKIY5qSWCZvXRPuD+lyAlk+bHf85gPlNtLE+nZWLBfZUN4qY8t1cD5rSEyzHzt2cCfLoEy4sKUPmgVcRd537EdP0TJ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF0aZqHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF0aZqHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A4BC4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728054953;
	bh=zA8d8AG1Pma5QwvZVDfv2PKjYZcKOAc/WQEgHDmi3HA=;
	h=To:Subject:From:Date:From;
	b=lF0aZqHoPEVp1ID2IKlfnf/ZiR6HNOAtB+M8mZp4UAdpt/tstCuVnmqPhbP2aHkiy
	 GPhajRDH/J1X69wwxWeAFiBR1/jl2xybAQ06woEEuJLmE4cll6VoapnVWF5D6Z6awx
	 D2XmjdKzyU7cCFIyvDVz4Rjb2zGFQwZBCq52JLWRlQfH/xt7PwjuDD1jB9GyN1dMsv
	 4n0qYVqfiWboY+w3M8LklktO46M03nEB4+BX1zERIkWbr+MNQ28WHQo/chPJtRlghi
	 J3+4+mc+9F3HD9NfK8Chk47gSbwyjF1yhm8/M3LXr6L9KbZSuHLvlMP0FCdpg57NQc
	 CCTJu89qj0I6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F5CF8844
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805495366.8826.12200068418867859008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80781b35a438ed3a67d455bb4512df0fa024be119d1f9a2a35ac77e25c3d83ee
Date: Fri, 04 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728054953
