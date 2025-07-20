Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217A919DF4D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752985794; cv=none; b=FWDebNKj1pSiqq3xhq8h7vdMtu0+K1vvnbMvAV4yrH1XMDuTfIQvAPdJV1YtPjMCccILC3bGISagvrg6fgRK1p9KSC+sNz/W1sutFGiH5R/+A4MOio750INRmFQUPtn4FuVb/O6weNy2rFTL8t5rEBiIFXqbL0hZossA++Q63Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752985794; c=relaxed/simple;
	bh=8xMlYMeAnijudzVe24a80VFXVM1Elf01jeISjeErMiM=;
	h=To:Subject:From:Message-Id:Date; b=FgiM+NSJD1Hzv8dL7r8hqVJx/V1eO9J3eYiFUX+fYL3OalDUkqhfmb+TqOpIFOEKmmEqzwp1xKm4j/wpFulQxP3tBmBOavjcX71Gy3iS4XOyOyMj70vBP0aEl6ww3txHCiXHIp+Ki+HUoIGFGBXF/YGiOWUGLi5I6+koxnpjZGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh4/znuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh4/znuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752985793;
	bh=8xMlYMeAnijudzVe24a80VFXVM1Elf01jeISjeErMiM=;
	h=To:Subject:From:Date:From;
	b=bh4/znuCaQ6UrLh7moE1zivltZTupHXzkOTbTE8u8FSqJK3ZvHM/P/cYxAscmsnOk
	 qaGjbj+V0KbeLOeDPNlNBp/lHB9zpkYjG9QpWf/qIVnR4BK/lHlzKBPrm9exx+idjZ
	 1rQTQBRO52cD8lyXEwTLPhtscMVAHBpHWFDc1yG02V5hml3hvAg7cGo+lW1SwdWv2f
	 KTJUVW3f6j0KwBFOqyFzeEBw5OLtDveFi+KXOxDvWFt3NpDPxfAbGMSF4+oh71ldG9
	 kbWF78klslmdG7f3D1wyQtQCYkwC6vArSP1BIMvCLqY9X8udMEiiV7gsleVaAKsDGg
	 87ng6CeIIK/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91257C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298579358.17982.11745213904696478426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb797ef572b6c5eab014da85dc7843274bf8d692309446ba2aec6ceedd486a7
Date: Sun, 20 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752985793
