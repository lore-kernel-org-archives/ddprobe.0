Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD58149C41
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744602594; cv=none; b=ieoB5i6Bv/mKANIf5AzB14YbdDiPc/47wPdrz7hiRVLo5ewuRMSZRsC+9ggpOVEnk2rHV78vEsevpcNQ7snvAr8RfNx6PhPZ27H3Paeq2rkWzyKvWOfHT18Ck+ROMgwfSnIsjc5bTxyYA6ChVBTVFh8hst0IZM9ERNB5KHrvS5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744602594; c=relaxed/simple;
	bh=J2b6WCEwlwAgHWSxzRvnwAEW6P2wS3/fM6ZoSRin6yY=;
	h=To:Subject:From:Message-Id:Date; b=kX5GjQn9YOmL2016N729DucEx/44/Mv76jl0ITFYY5cS8CUQhc/fzwbJBoobYMTgZd8jGotiZpwCi31EjmSyLpRI3oKHzPxQ2rZiqAjwNqzDEixQFsFRcIqeezJWvLbm1VvvzI8tGyvon5nraV0P9J4fZ+XSQAchR62i6OC/g1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nelQDyMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nelQDyMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C58C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744602593;
	bh=J2b6WCEwlwAgHWSxzRvnwAEW6P2wS3/fM6ZoSRin6yY=;
	h=To:Subject:From:Date:From;
	b=nelQDyMy5qhlmh65pPrqSpl7BKD0YLnm6EIOaCedAd5xha1A8Vcr3vzCB+6LIZfoJ
	 BI1B8PANa+1ndMnvgoR/jXd0EL/hgSHigGaR2CXDBrfbxYfTVjOFoVN+HG7TKDqcCn
	 id0HnfT2XqPvGznwc9/UapacGy92uK6T5MBNtZ3k1yC+eXznsVIVuepb/zc/Yod8mb
	 1awLFD0CDeaP3OuoLnc9aH9pPJ63Jnay7cJepq4O2t+kAQnlBCtSafsknQEQZVQPsJ
	 O2qUPnXB30npuCB+9/KSUzlguPo36sEafLx1Erml0ZSmXfwOesM8o1cClGHCEFnF82
	 ACbghp6BZIPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1146C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460259362.20253.4470471430245075345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02cb8e22ba0e901425bf14626eec9f92472b853eefe53e5bb172bb461414d01
Date: Mon, 14 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744602593
