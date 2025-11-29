Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E581182B7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764399174; cv=none; b=OSwdcDL9+YQJF+gg6jDBUTCWMaE82TCMala4vRJX2YuEgY1cDnnA2G3d0LCp1r15c+5eVJb4BkgjLBJX+ACcUBy09VOYNCCjg1d1c4KMppWpCa9gw9FwOtGmj26D2i01n0YPmP82KnpsuljYa5GUOZOVjA6UZ9Gm1nbosaa3454=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764399174; c=relaxed/simple;
	bh=JvdS++8a/R9fKwtngOWZksaBlLxtb7mm3mvioZ8zxxM=;
	h=To:Subject:From:Message-Id:Date; b=k42i4o9lGSwOurWV7GUo2ZMtqPqW7WRlw4p4Zy7Td3Uti9+FvlFDE0Uxn8TusHku+WFBaIPbUFdirNE38MHcqEYljSr8kmcdI3PcVZJD3aMh2ktU1WZHihiyZ1dG3kc7U37/Mnrgmt79yZeEOw/Jq7ERTxR4fQt9suCsNGL39tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5GSuXJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5GSuXJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4970C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764399173;
	bh=JvdS++8a/R9fKwtngOWZksaBlLxtb7mm3mvioZ8zxxM=;
	h=To:Subject:From:Date:From;
	b=X5GSuXJb/0q4yovJGcUh1U3ZRV3qtuUcOf753GJBgcJ/eZppwzQyTWyk1BogG+3jA
	 tX8LQriO4hDXEDQbb6aXw6ZDLz4BGrKonxsDjlHtprFtMccte8wlHaPbChtDAKqydk
	 soIduUT4WKdZheRNBbOZxqFG+l/KXJAaadjaJd9r5ugYKD16cjFcJfE5+R/dxB/kOS
	 Pg2fpCLkR0k2SpSH0gPED22j9GsWLKnGIquxX9RNDDZOE3EFEaNRb19lKvP7VudKn6
	 Z5/E6OopzPyvcxvV0eopH7Zl8OKvswMOeZaO/kcxdG5E0GenAnsOGPtivU0QOXaRqM
	 S71SbYpLO14Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB4CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439917358.32312.15877321610089387953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f8fefc2e175323cd1175c3dafcd9bd62636eab02af1a14f8b3ccb7e02aaa93
Date: Sat, 29 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764399173
