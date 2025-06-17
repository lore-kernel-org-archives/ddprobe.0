Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4410D3BBF2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750182594; cv=none; b=gvpOn1bVx4IwpVpoH1rtcpplXpPuciHAQquUoAN3LAt6iBEKA5jrJj/E8SDMM41x+vLlTf1Y0I3JEU2FD+qNB1JrPfgB/MOFiHh5102Wg/D6kYTg6X3CBDJQ6frYvfKjAv76q/IGwpYpDkQaWF6q7QtbjubC+2RtoZXp2R8G/gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750182594; c=relaxed/simple;
	bh=n+o5byu26lPwZNlYxdfSEDVaT9TK67wU57bHkVYUO6k=;
	h=To:Subject:From:Message-Id:Date; b=QmdfHlDIrjFt3udDr0WUQAS2SLCXYzXBtgw9SiiF4utSguJ8rhMTb4ffpj2iloO4QQD2rTnCkcqVMCynV/ku6MN3ax6zuVQTVBxTce709uYZcR0BBdNEblivF89W/ZJE2HlCukeGwWio5SRz16uw0AeSb0Tn4w9uKZa8UuoBF4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWD8WAnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWD8WAnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9110C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750182593;
	bh=n+o5byu26lPwZNlYxdfSEDVaT9TK67wU57bHkVYUO6k=;
	h=To:Subject:From:Date:From;
	b=jWD8WAnBVuYb97vZJy+bbl9RNBVBmfnA8dSkc60ISUgiYeLEz9EByzbY39OxlK5BL
	 whxQsLaSJCQzDhtAZWjBAeviIP3UwjruNFaebmfFpMoSJ0f2e9PfF3iDJPXUBSw4Ue
	 YQUKplRBr5/o2UTvP/fgqTeF0h7MN+WHIrc2MLVhQHaOoeNyetY06B6hZ0lAJwTEkW
	 6cABBbr/TiO72xrf4fw4ASdRQdX3xm59I3yZ1ShkZJ7fnDkga58SMHVRgB0tBLV7OO
	 5ZwfJNTYgiGkoKwZFlMrP9YhvmzQmemczPnfdKaYkQQ6NoVG9/k38CZyWxh1uk1g8d
	 43ScAUWn0cGtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1BC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018259357.29550.17841550871795962137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88e8c49b07d618aacef347408468385eb73e0e503002335441671e08c426c95
Date: Tue, 17 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750182593
