Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145A323D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753940994; cv=none; b=KYwY60NHS41iUFS7fjAtuMpzVDM2c3ewUnEBE9w+PW12LmUoQwJWASuWy9t0nAxaJcIndbEqRxqOZdwWtOoDVFiW2+9B2ot1n+2dyAznMEgNQ9k6DTOfTcIhteYNmk66Y4Ihkwp22eLvxwPkR6LJbgZQSXMb5IgvlEtzjZFP88I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753940994; c=relaxed/simple;
	bh=IXiM97zNVCldiqRSIFCJDtjny9621sEKlRSRaRQqGhs=;
	h=To:Subject:From:Message-Id:Date; b=L3GKn00M+FFvc5Fniyzhx0whDu1G6iHrexx97APqEmIO/uNpia3ZxWIlpoq8BsKV/skiWYOQfxSNZYA3KyZdW92zv8Du3P1UsBUpzY3LjrT/jnp+MasuO9lpYI7HfoYCEfTfYQcshPuAqPYZyHJuUJNlxbljqCUg9Ql1pdCloJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv9t+S8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv9t+S8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088EC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753940993;
	bh=IXiM97zNVCldiqRSIFCJDtjny9621sEKlRSRaRQqGhs=;
	h=To:Subject:From:Date:From;
	b=Iv9t+S8es1qzUY4XibJyjA5H57bI2v5bvlc9FYtCn3WGEo9l7ruh3pAReltQu2osK
	 ESREa9d4LQxk38g1gGkRJsOmEpUIaKNMw0dThLVj3CDtGS0mVZE50nkMTqUO98nZSL
	 LdhR3kqmGvTBQ8Kqej68z8KNgmrjnbeiKRQSHVD2eK5p8GfXM/zMzxFM3zX57TNaai
	 KIqN6SDPM1Cfn8tu8yt8De6wKWY/Xvp3mr2V/v4hXU+OU/kBn8/AojJo30tXz5z5uO
	 niUnK5GtVM5LqrU4gxqC/lOJqsPtNcc6KvI/1HroaHl3OESfExo4tuWYxrkEzDWjZL
	 4CC6zyj99pVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035EC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394099357.10737.6392790418688421966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165c98b8a38bd96677ca31d415e662b5042600a0e732acc21854b1d939e5acb4
Date: Thu, 31 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753940993
