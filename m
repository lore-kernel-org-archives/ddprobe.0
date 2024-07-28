Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524F31DDE9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722207954; cv=none; b=tz2NdCqDbfK97YahqIN0cNzrir92QuskjI5baZuDy9YeA0DNZcRe/VstLmk75mZ8XshTW9aQEOkIHXPUjVHHTRqKZ/0Ls3EdsOctkAtLxp13vb+EQ/sIeEQzfMOQy9QUvswkjazTkGX5Ru7MGwHiJ+YBJ2bCrVlbVnffgDdlRxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722207954; c=relaxed/simple;
	bh=z5iVJAZIPpMwa1bEsaJ/Xre35k8voJjTllpDur0dlsU=;
	h=To:Subject:From:Message-Id:Date; b=G47clDDMWkEjF6s3VIPFQuctt4xVbDO6D3KLLtYhd+Dzj3pzA1s7xk4tzI/Tb0nIDUkLe2nv04Haao7oFUD45FEG493oM1GzsftqhBenITOciy6n4BK7dC9d2DOAB6YKClpW+gXhMzk5VKf/HRs8ZPvZDGQZ4rR4CRCILx7PwZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBVkYSr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBVkYSr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16BAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722207953;
	bh=z5iVJAZIPpMwa1bEsaJ/Xre35k8voJjTllpDur0dlsU=;
	h=To:Subject:From:Date:From;
	b=GBVkYSr+kiOh3cmOLZpDIVnnlzHdMkgfN1kUugA3tuCPm61skQkOJ8sI3gn/vpHWt
	 7FQF8i3VLoiTpZFzlOiEUgrsEWg9gqQwZ/b/lpYp3bCcSaO+h2hWaEVcvOUI/SGf+g
	 au0uBXnt99TWtH56MGHGsDDFXcz/T7yIVvd5Dd9uTLHTZacIP5rKTsPbPuQxzaVGhU
	 F6/iYOD3yZsEyjPRzIAH/p9UPN12lZBPLRFA9eKIDPgOo15xOAbPNaguBXQq7Sc1Uq
	 5KgYFGeMH3/0NN5EqoxEnMwAH7g4Ex8oCoHAqYbgoJL3C5TCUr3NCfF6F/WQFOAPSb
	 dvUvnebB2P6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D187C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220795363.4572.6596372600987568466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54520b6125bf45d4f410d5226b02501dfa1deaadedf5aa36e4eab494e2a3f79
Date: Sun, 28 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722207953
