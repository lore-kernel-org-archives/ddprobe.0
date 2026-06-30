Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A793672B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782787114; cv=none; b=TIlhmG1VwgzMNszHINfHl34x/POo1UAeAfr5+r6L8RCH2jp5wWcNigkZbCHR0hY7WZNhDAIGxAUmaEwaTU/kyJV4pJJjFpCjscRiQQxK1XPp+c99NjswZky99NK13H9i8JM3hv62cbP2oiFJLZQzLamISdaXAzTrWlLab3RfDAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782787114; c=relaxed/simple;
	bh=dz6s1vCVXGW/fEQfOtTOtGrvgJYs44DzoJyqZPIiyTM=;
	h=To:Subject:From:Message-Id:Date; b=Dm/uDG8H0p2M7IsQsqNgwEMwLfgRAYFC8GIwDB70cUnC3kdY3dYSfygCrqZW6JnqBCLRGefgV3KvcIwXX81LpZ2rVTPXzSepgL3jrLl8n+4gg86VJR8Y30e/JOZ8lB1hZEPmz5+HsBABlDdVAX/4xs20PVQm0CarDw1JguaCEdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fanaW55J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fanaW55J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF715C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782787113;
	bh=dz6s1vCVXGW/fEQfOtTOtGrvgJYs44DzoJyqZPIiyTM=;
	h=To:Subject:From:Date:From;
	b=fanaW55JoR6MOIv7DrV1D6pL9lxXKAIqdG9sG9X3c4B6EN+rzJqa1KANagRNghu/v
	 EGfFdalqBgHXnqejNl1txf+RdN6Djtf02ZUNR8A3stjUp7gYOe/jb+iPFVA+IdBOiZ
	 o6zdjeHaIpDBLnvhkwvRifVeR3VW0S3wIfVmmoFUStTVoJesbJGZEKo6YV+fj5DQDS
	 O6pTCynn+Ey0etMDep7BoZYK5l0MyiIW48l0/IeJ5O0HHpWwvuNmKC/T7MrFdbpCUH
	 4HGJ24II9FQxRTO6O9T749hf//3ckp0O3Qs6BzhbDm712DqhqA/2e3CmuIfHcwQ/OU
	 qC2tehTWLWDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278711368.8278.11430742520032498420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a908bfd492f4c040fc361daf94619c3f95e6166a2dd819312aa261d35d0777ff
Date: Tue, 30 Jun 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782787113
