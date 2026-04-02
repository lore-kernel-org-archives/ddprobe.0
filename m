Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371F630EF92
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775147134; cv=none; b=in3AuxvEWN2ax/j7kFWvr2+gi49EaLNowhjtYYaf9jcmW8+11laIAdy4RlguXUuEhHY4l98hu0qZMTLpPCt0SZOHxDxc4KbUOq2oluMAXcx6Q6QytKf3NXrp0lF9Tnx8qRVjhef+OyZ+A5zJBkTs2vP9mABaUdE8Pm4Ah4SY5R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775147134; c=relaxed/simple;
	bh=oRyL54CUN+XRoK9Z/g/zkORMOovzHabl552IhXppCzI=;
	h=To:Subject:From:Message-Id:Date; b=ZlCFYuZTSb6KAWF95UE0Rc0HSwycBhZUnfnLnGBnoG8IM6fTLnrz8QG66dJ9sGF2ErPur9MzFTGRApGTExeKWXqAdZHT+a2Rk4L3VkdQGFh+vgI3vGYhnPDDDpXr/910jdGnjcpZRJGIo51J3SCo4a1k+C/3rrtsyKSGHcmKuuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMb1dCkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMb1dCkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA48C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775147133;
	bh=oRyL54CUN+XRoK9Z/g/zkORMOovzHabl552IhXppCzI=;
	h=To:Subject:From:Date:From;
	b=fMb1dCklxryGiiwAzz5ZVan6LZYIhsje9H1Ulns0/kpW+knfMxXMUStV/k+MIE724
	 prRUNw5QQZXgraY7YTGZw3HcmQG2i/yADnIqSCdNiicIL83nm7oAdnQPulMGFotsKb
	 aQRu50Ih/alfeNAeOpz31iAQgQn6v60gGAR9FbdoOp0gmkNJxe20JRbtdrjjvZeR29
	 c7J6i0BMztqpYh4G5XfRsejPniA3OUiEQdOD4TtGQXEM0dbopnw/xtjqO0JeJ9MYxI
	 13yZqPegkBvsuUD5urLFoB/6voJavQrlIF0iKV2v1PdyX5agbP303ho+qk5z8pBTN8
	 kiATMNzneXjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD5D6AAF0
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514713370.15803.12366348078044411418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffdf80688015791bbcd9f6e8b2de9b3e85da24d7130bcb365968cf8bd0a63acd
Date: Thu, 02 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775147133
