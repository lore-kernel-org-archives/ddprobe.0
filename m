Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C24116426
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728650754; cv=none; b=qM8Yl7apSHvRtyRYFmQ6ejqSgOmpHS3WA4j+N7I+eSyhIj1YsUsaaXnHGzC6zuLfsgnGURU+qfAn5xuBrOa7R67WV9SkmN8eStIJzUtQO/V23QXixHGC8Kqyo0Sg3m8nHdUlOwZKgzc0dNCjCoYD5+jaUdQQ6MRoYNBn1MiT+lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728650754; c=relaxed/simple;
	bh=4d0RPjj3EQZH0GhoEshA9EO1xxKJBb/+eNQp1gx7iec=;
	h=To:Subject:From:Message-Id:Date; b=EMX3po5Vk29dv37dK1djOj80X+8DKo2Vnv+oS+jdbWO+SeES6byAM3IwlQ4nHuq0p2iRBHWJ6nhUZpg+IlZRJWgs5crWvYKqNeQibvwUAsKP6UvEzeuFLLs3nji41YlhEup8kuofmoR2vTCIUlqkQfYSY3ZAFPFCAkFPX06BEn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fj+MzceQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fj+MzceQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728650753;
	bh=4d0RPjj3EQZH0GhoEshA9EO1xxKJBb/+eNQp1gx7iec=;
	h=To:Subject:From:Date:From;
	b=fj+MzceQs69htXSxGtMvjkOELQmAd4kfV3dtm41cApliTOKesRlSLwNrtjvluqTS3
	 Vm/ACTK5Ib3lONRAazKnTfBPJesttXawFtqijui3oKz6KYe8O0CFnfqnKdqy1Hcmpv
	 aEyAqrjI+VXtRmjSSDoM34wLWV7WImFS2G8Oo91EnHr0vyYI9Gd3PWkCOFfJhdEzJT
	 VSYQgjwLQ1sWAOj8VM26npxTS92QotelqiInXtJ/Jqu/QnwxheVap3aNjAs5muI9Nc
	 OBZm7pxyLfIgcngcQj+uKR7hNmgEefieJYDMrHji5yxxmKmPjoEu2tmi4K/wKZw253
	 yeHPYHtOsfjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9890CD0D785
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865075361.21866.11690128802667025921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0139312cec0637c2e3ce0bee68938730d25234c9e33f383c43100e833628891
Date: Fri, 11 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728650753
