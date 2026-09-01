Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDE842CB08
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788230436; cv=none; b=F8qU70tQcnxEKTHBuuj1Odme/hqPSq9vDt2FPHCpzqg/WVR2/NCOjHRqateG7nuenjUyxoWfqs0C4uN/DYu03EI6D2XSlhQigPq+dxABQ9gEeCUYKcYwIX/E9x9IOMxvFCln9+rW3FVXoyT6z5YiWhAZeJN9evYARG5mhe3NiG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788230436; c=relaxed/simple;
	bh=rGdTaUpz4BmxJ6/JOnS2PEPr3HOA3fexjkniGGC5e8E=;
	h=To:Subject:From:Message-Id:Date; b=Jsg+bC5Icon6vQKuP81HMf7dSh4wQsZe90F6LNOM0KJHGtNtrf9PnbulP1DxkoeH7mq2x5yLjZo87oyADYX3AhMU7m4hh966QiqnGXp9EELflpByE03tiSioJSMd9zLJDR8lf4p2ypqt19o0jmL9hUOJ3WUNmhcrF2H8voEB71Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaJ4yv3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaJ4yv3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35FFC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788230433;
	bh=rGdTaUpz4BmxJ6/JOnS2PEPr3HOA3fexjkniGGC5e8E=;
	h=To:Subject:From:Date:From;
	b=HaJ4yv3NvDD2DrUuwBdYwsEJMWPXveQcef+GlEB89Erfn6VWWbLJ6uDM+nUL8fhrD
	 fwTtGIbpVaT/h2xX90AON4UWqEpxV/5oQPMh+wWKno4OazntYK9HGWYzTx/KUPR2Ky
	 ghVaxvY3Sqh9jz1sYkaiBvpR+QHFDsdOx3yiA2csqgHQlD0nuJmcZFTv/bF/gwKMLN
	 B8wztcNPfnfSfGuxfL8oBeRDO1VsmCLxrKWALgXyGca4wAdTVM8QWRYW5aH0i2pKj7
	 93jFXMJJIAzu9bEhJCwQODooPXwhYDDDIoVlc56VdoFiTOykuM1cFlxxXE/iwnGG5+
	 7zejYa3mSgMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77CC61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823043369.18738.18437249309723206507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b6c11eb7be80b58033a22c603dfd549694c8d6a75aaf6120d80726aa077684
Date: Tue, 01 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788230433
