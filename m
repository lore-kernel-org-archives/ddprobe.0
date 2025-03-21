Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA11388
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742525395; cv=none; b=SuuAm+3sCAUBEM56rJKjXWavhWGQUUwvVsIg+aRWyEDiRo0ArAVN19oy866wdxPMRFqFJ5O/9RGLWQRY+as31JMRnuLphy6tZqOcwCsqydGtOMaIpZ99TLN+rFxCeLjQ7hyS8iplRPjhIpeGrOXb9cBAqcXc7ceDLRCagQwyk7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742525395; c=relaxed/simple;
	bh=HV/5+7uHneaqzSfXBgliNyr8MxQt+cdxDESMLKpebq8=;
	h=To:Subject:From:Message-Id:Date; b=hIhZDL2NzPC72QK0kp35/78E9pHUkBf8HowxYNTzzHDKX/gn16zmX6XFKflL+bCWtOZu/VRJqgTe+i96oWEmLRRpj3FGXdLgg+0kN+5vG9qqU1e9AqIDkx+6+bY/DZOD2Weu33CaN+5CTn5U0jRv4ODj5bVaf34IXHRzWZu/GAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAkcut0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAkcut0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1044C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742525393;
	bh=HV/5+7uHneaqzSfXBgliNyr8MxQt+cdxDESMLKpebq8=;
	h=To:Subject:From:Date:From;
	b=SAkcut0b3wJKr1f+zZ4tYSx/WLGcRecejZVY5c1IQ8+4vnHv17hmrlbwF4raMO+Mh
	 0nxM532hlqu+HG213lj179DXlAAceJeCaFX7YfLEMrNKiMVApH4Pj4lu3K+t7OYChX
	 H1pjV2F00R2IwhGUscyw27Z8DIgVKplMxVBkHvt2b+hw4LP5U65fXFESOc/cz75mfB
	 jxhaJmWD8COrweQX1p4AQ+1sxpDHBTzBy/bD+ks+lCqC5XY2v7rZ50AVP5RLsMm3GX
	 JyEsp1NFymeAVG+KXSKHRYt1XOAmRWrwVZNJbKLL2WNjbhAdotB+1CJGlULueyLx5V
	 OMmNW18BufaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97070C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252539359.2584.2083808403728712071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5224ea8da689dd6b575d959382517343a5d710e067e5352818781830b86406b1
Date: Fri, 21 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742525393
