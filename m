Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59680CA4E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791053434; cv=none; b=K8+OedRmGlT6vxWigjMnF+jaSvTAWrZl0o9d2B+T0U0nzMaA9TwtldWoIKm1F8ngKIYhhVhSMl8R6TMCwwZYOvBNwLZea4X9GZgAbQOBNJAJ54s2XcIDYx08vk+h6Q8m9+wiISYq537FYTgFzsy+xde0Nwcp9WQidH7idlVLLz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791053434; c=relaxed/simple;
	bh=4tGUHcW6917F134TPNSmr/XDTAl/N7YBxPbB2ulOraU=;
	h=To:Subject:From:Message-Id:Date; b=mxQeEPCIf6iTi6loy6pdbF3DCgLwqEEnsNvraH/653s95CABsZC5B2H6oRrWen20jHcEaiIup9Rnbp8hrJTWTesuvOfA+T0TSsehJUsz5B2p396jo66heswcbVHlcRrECSSihlRDsLbhxomlE255+yxEMIggKsAIxM3j/Yvb3bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y44vzZ9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y44vzZ9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791053433;
	bh=4tGUHcW6917F134TPNSmr/XDTAl/N7YBxPbB2ulOraU=;
	h=To:Subject:From:Date:From;
	b=Y44vzZ9vLGvdvfRT6rpJnZ1tyEy4o6O9cU9WVWUYviSN9JXvHdiSd/5BZJ/K1mid8
	 q1IC+Tze86GfYEm4aLtpeTDqmB7VOxTWA+YzXodnhGy4aCvdmOOlUNSN1sFPc5HyRa
	 ByC3kLtp08yvXFkyxzXEBO/2psdbEQxNqgdsKl9HUpa66HftrtSNiEN17oEliyYVM9
	 MTDbLS3r2j6ZVC0GSszyth10Zv3+LwMI4cLZlFxFhzr3LvdmFQT6nzBWT8fkzmR3Ao
	 G7maou06vveO6Fp07HSq+5RaYOxnExXDCodJmmi+oy/eWTZZYHMOPeMSAA+idfntme
	 p1bGp4iwnsWFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC647CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105343368.13972.16203808855314511273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c076b0a4b55ffb4b8f63e1120f556cad622b7409ac0a3193df448d5cb9f06a
Date: Sat, 03 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791053433
