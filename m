Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A232E54A0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758007794; cv=none; b=gENLRRzdjIUJ+VGC+3LkG4Rga/PLDkhFlnQj9F7+AiD/cp57R99rP1Sijciq4Br09pRjEdonVXH0vbPbMiPGFXCb++xO322oheeYP4geNFwZQyRy62o9iPYIZ9ROdZlwmed9nlU2roRypOmusjZn/78Tk7aU2mI/3313DPdNdNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758007794; c=relaxed/simple;
	bh=kVD6grKIBiesO4XGCGDpNf/VpBZyBbCCfmSlIQI0f48=;
	h=To:Subject:From:Message-Id:Date; b=UH+AGqteNtzSmWerz29njyQYXK/m5c0I0zfWj2A3YYz3ihAKtXEPmikMsjzq1VpCOQBlQ6BJNBoLLxUfyN9uVYw3rmNk7+XCFfprDAmrOgdI5A68qttx+rdag7fHGdl0WsNtL3er7XHlK7wPRSnXHX7q8ApbYROJw8lrNSfQBXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSLreTAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSLreTAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758007793;
	bh=kVD6grKIBiesO4XGCGDpNf/VpBZyBbCCfmSlIQI0f48=;
	h=To:Subject:From:Date:From;
	b=nSLreTAOAJtFdnc/Fz3MP/+pLiCfGc0JUcoHD8x+7X+gfEISjUDH9ZUNfIRM7aSZO
	 3M3NCF5loy4BxXMh6zWwCFCZZPh6szFcJ56loNmZ14O8ifLqyhHf1EwHyG+6Fay6VB
	 PZe7duHoz9cszJRzalYJ5/bX94pndLZ+niD4YVNLJKbt8C5xAPI9v6bK9m/0BMTimk
	 UeLas/7BThSloT3j1YAoFcfYERaNoCzGlc1vBLPhPbCMHlJw1JCFXBx1z9NOVdlNur
	 e/vLFxAcwP2Q2yRzPf5EhbUcgf8A4n7AMAesrg6dKxHh82sPM1r6PBq+OCzbBI9U1M
	 lC2Gf425KTYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054DCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800779358.13677.4056628899375340652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3699bceb4a7e79e2971dcaacf2f2f91fe1c770cdbcaa2059d6dd696183c2e03c
Date: Tue, 16 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758007793
