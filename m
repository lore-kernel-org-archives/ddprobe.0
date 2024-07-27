Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A143125DB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722054954; cv=none; b=rRjNI9JIwIGwc5jzk+QAI92oZFuvh9q0ylKmzUEqPK9fILv2iUFJoSIjeOwNFMBjJqo3R53vCRsN3E4aWrEThPUiQbFvSXxxnxlzh1PMegXauKWXZkTomEGNEfOFS+9Jv/xy/jGao7g/2sIzGcimeve2UaItyYu8iHM044XXR3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722054954; c=relaxed/simple;
	bh=NQ1R8f5dsfSsmkmbUoH0S0i7wlLSLayuMrrR8mB0WoY=;
	h=To:Subject:From:Message-Id:Date; b=MznmKCnNjqACo/RvgwMOvlwT3Dubdv+PFuES3shzlmII2d46iVsxJ1PZoHInOJJ3okvrx8U5c3Cr7I+ziTUMBBiM6nFim3JjT2botpJ2h15itpEgy0zZBblzDImi3MQfO3WlPcB+okndUsma90GPYShJsr60haFdF3cLPXl+xDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt2bPNji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt2bPNji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F01C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722054953;
	bh=NQ1R8f5dsfSsmkmbUoH0S0i7wlLSLayuMrrR8mB0WoY=;
	h=To:Subject:From:Date:From;
	b=Qt2bPNjiwYcvKWnd+PgXbaCssOr/PvDGVFjWy5mKqdJBjeM2w4quHaymzuVoMxrYg
	 B1awdNCU43KgNlUEsimi/ddKCuygpYQ+CjDmTHzcg9vKfq1IXq2Dez1LdVFyHRILeV
	 79vYorwMavVz87xPV2rKsfkMR4A8udwgldnHB3DGrQnvFVM+H4RmYAsDGaUdHrVysN
	 32h/VGRiq+Bu0jLpmaB6L5aS9VGBpbYyUDw/72neG5FLPNDWl75v+b4sJ13OCnO026
	 U9wgGaOjr8cswEe3RHjz65OLQ7441sPmlUzUGqFclmEGUEB8aF5+r8eLt31CVdtHYH
	 yYwfLTIrTi7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB13C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205495359.20118.8447216200035366699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca10ae1c2042486106f40dd46f550d1d1e326808475c42f2164e8eb112b2c59
Date: Sat, 27 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722054953
