Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A348BA33
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753859394; cv=none; b=a3wxp8TRNJYPx8rXdB+AAtwvoyshFQwcrTrxFQfDfwAJCijyzjpLyWsFLKlRLqXze8jp58J5Cc5yvNXfqg+S6pqKF6VuS52KX3K16hi7V+nuivCUePnQLjEhsowDg/SvQGjxOfoUMrznxTnELiizpBC0OhHKnUodCulZwSC7eIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753859394; c=relaxed/simple;
	bh=qH38PFphZUntE07Wq9tqu65OCtHiFe7kMUbPd4yQfLY=;
	h=To:Subject:From:Message-Id:Date; b=kiKlbfnaezihtpSVV8VXFTh5UlNZUnEngic2cSaLjsY6x53zAs16bRvJpopopG00cEj2M9qOobpL5R27/OwKXha0Por6M85bS39TlOG2WI8cjQFnWQdyFKE5XBsKRujAZM69EhGrhlftbmco8m6/7ICBM2WGG7b6sglrRIw2pak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYiiZrFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYiiZrFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753859393;
	bh=qH38PFphZUntE07Wq9tqu65OCtHiFe7kMUbPd4yQfLY=;
	h=To:Subject:From:Date:From;
	b=KYiiZrFzbftf+6zIrP5M7Nb1+6nd3w2hDoBn/WN5pfPhpuVd64fEvmR62QUn5vMGI
	 3zHMbf20RVxSejHhYsGi7KO1uKDBTbYK9RP4p382l8yF6XVfnT5+ObrOL+iJr1IUEE
	 4qPV5OmAevzHaPjFm7hYMl2CLvmGVxbPVV0FSHxCLiaaiMsPmmkyXJpYZeuOUCTuLH
	 WlnDAild/FFUVH4yoaou/RRyv9NuY6D0rzdeZyhsGOpJpouq4oDXV4O0P6pH0uCydP
	 kEneK02fMxuAiA3ACOQH2Fr0S4olzrcCpVcxnm/YcxHg30VLph8SrQGQQ+PsEmPvn8
	 rl3/kZxZCjjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57BC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385939357.5115.15025917186178104799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e25ff74cc511ff087bc7345785cc99c6a1e605639cb8532d2b241e94c25eea
Date: Wed, 30 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753859393
