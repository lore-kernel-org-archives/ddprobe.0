Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962F31986C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781802394; cv=none; b=i3UvjRLKxMfbSHaL45Qfy9ElAOnWBvTP4XEtflgyx7oEnzpN6pbqcwt2IlDYF9X1DWabX6yxIExIDg3SLAZ0jhFYUoAEjoiJ3jLHCIrS7mwFhf+2vUjPI+wvrR3rgSqZLetH0ZvCOEM24VPhLv0nyzhgMoiM0+vVggf0I73NTqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781802394; c=relaxed/simple;
	bh=3fJ0M1aDdo9CTNUynfkCH/PCcqd2TLbr6j3S7akISto=;
	h=To:Subject:From:Message-Id:Date; b=UA5Vxll++GMGwAfdNFSkxJqFFwZdcr+qe4851TDRRzyZJkqnfFaMWU8yBfiR4/XXKtRmIYFoO8mzcehqwJc6I5auwzkvRxHF6+CSnxBuAOURxW5xKdEfnIDxEsr3jAvvCk/nNF4MHxHwnZyDfGrZkhklZ++7XF/jIG7hqaZzNGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYX07kaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYX07kaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A31C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781802393;
	bh=3fJ0M1aDdo9CTNUynfkCH/PCcqd2TLbr6j3S7akISto=;
	h=To:Subject:From:Date:From;
	b=DYX07kaDY6arRFtNoHpe5cyCN3ytzUrj2bc6Y4mxaXz4WU4KvWnGkBgk1pPISRMqn
	 8s2/E2U0YHOpY0+5loshBWHVA4BmGm3sxIeWRFR9z3kAuu/5qJJWIkMQKnvRDqGjIe
	 NU5KBFNdUDPUPe+MkgxHemUETyU3oXQ5q56PPjFpTbdmKHb96peRYXf0VVK5Nnfkb5
	 hgne8fVsW9Q6zpvVPqThZBO7R2Boozt64421g6zXzTb213GQJ3f5WWz54P4TcEzLZs
	 8m6BdHms2LQ0l8E6HFJirHS+vbpycUWZU9YGCp7yTjlOWZMsiGNDfyktcOMkUVDts5
	 oI4+S38tmrOTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE147CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180239370.32215.8104322637942553050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f16f9a893dc38caeda5717ecaba11adaf7e3a7acc90c10ac48337fdd57a486
Date: Thu, 18 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781802393
