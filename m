Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5A21E495
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718777963; cv=none; b=C8IN2MaFMvVSAT2MUWjLTyneTncbFokzblvfvrDSIZVS4gMjafWQikeMjWJWDApDKjB5GUzTHxY2u9jCcCrMPYmzZv0Kg/C3vOPBNTQ3a2oDtH6FoGmYwq2rxtyrlosLA0WwhDUoniDSSyXSIW0lO8TEm/m4mbF6ImY1Y5t+M9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718777963; c=relaxed/simple;
	bh=RWoHdW8HuP1eoMWtSIWOgNyD6mP8uw+kQMv1iqu6ghI=;
	h=To:Subject:From:Message-Id:Date; b=KozF20zQ08gcQP2UBON9S2jee68GjxXn9sjvoPVwuzKPy5WdWBtMdRvTiyqSSkviHOeVXRHuCOtXVr+kHsfjDjjGfh0eYwqXH8qXSFourBZwgH5/pEW/UdGdylGnU2VF8x9YV7J/a8ISqa29K74Mj7deqjwGPJ5WQF/GaCp8rYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNOR1dhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNOR1dhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2BFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718777962;
	bh=RWoHdW8HuP1eoMWtSIWOgNyD6mP8uw+kQMv1iqu6ghI=;
	h=To:Subject:From:Date:From;
	b=ZNOR1dhqXcoW4lOCgIrGVrTHccWY8rtw/lWTTyEayRh6mSyFfsXs/kp7zqUrBOoo8
	 4SxgFTfC9XLc9Qudk+QZ/Qm0e8NDSvM+DhSOsmjdA1lhXZGDt1mbLj3ILXeLJkBpi/
	 rbVQYYonsgsqPyZCde9q9WKg0iWbmntIoKwFaH5ds6Jru41HNfSTxzSCT6DCdAFCEV
	 0wyYFiHESiy61HOxZNB37GDwgCpgUYPCZrMy8ZOQcZKLhQdCuUC/YukRM9UFfGzmBU
	 2dKlwAQpwU6hPF+B1dzkSln8pNfjrWRgZC1ih98SXKqmzhIy2NejtkIuUqh4yrcwWP
	 rKxV3yH4iR5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86F3C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877796277.28816.16140160597726199009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84bac25c2f926ed0133cb6a4d02c16cd80127d76678edbd6402e3c21d0c7cea
Date: Wed, 19 Jun 2024 06:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718777962
