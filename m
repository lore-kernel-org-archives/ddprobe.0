Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B013FD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721948754; cv=none; b=K6D38L3hpExEgcSbZdc5P3A3igtBaeCjPYbNH+d2ES/JTQL6Ea38mXPogAeGhaPBUstAWdMAZ/jK2XWYx8zpmNJ2osCcHzo5BoZu2JeQ2nGogURgoG6+vMbGoga3uVUYXRSmnNa0YH8DMAzUt8Cw062zku3zUpLgvXJJAVhUBrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721948754; c=relaxed/simple;
	bh=dxxdvRv6iEsHOUgUIlLePDWSngl4KJsTpp3GGguQ/mc=;
	h=To:Subject:From:Message-Id:Date; b=Jqf8sLKZXhuEMgCBgpO0GwEqCswyrJ7+BHs3ULgItGeJFcGLq5M7XGS5NpXK2LOd3xiKauf8lENhDMLdTTPBc/1D+TyD79gdack1C3gpYqe/dKRRb8EiGwM56+VzE776sNV0szPGa9F8ucI4/NtQ+AkMCaTVVpmjHkaYRcvRm/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyhuw14P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyhuw14P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC60DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721948753;
	bh=dxxdvRv6iEsHOUgUIlLePDWSngl4KJsTpp3GGguQ/mc=;
	h=To:Subject:From:Date:From;
	b=Qyhuw14P+JWjd87nduSzddJWXVOGEunJIIpQ7//81X1Voi/CpELSIwoOjoKzydlmC
	 Hx5lrZGji4aoysVDEd3dJMHAuwqAfxOCJMwmIPewF/FIV7Gh8cJ+ZlOGfBHSHDOH+B
	 +0Kod61qU0wMyJ4r0BEHsu1bWoPjXZnAGMGv0XqryhESq9qk8RCpuAPnduBOt+QzeN
	 X7+v4p/0zs6ey1MZxbO2hsDILmpezUS8eE2Ub1QgI+cpvNuizSJ5KVHZVGXw+DjyEE
	 aGPvwLc4/tI4QuNUvhF0xoc0B45RXbNkPVwwnuke1d5X2Qfrz9B7u3kW3QAaX3Nao0
	 FbXA2TVSjhmPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D5C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172194875357.22887.17904114287901549973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d65ab8de6e430da084615732144ceaaa6927d59de3fc7531410d50db24ceefd
Date: Thu, 25 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721948753
