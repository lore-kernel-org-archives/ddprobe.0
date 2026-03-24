Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD940DFA7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774313694; cv=none; b=B0YDBNJp+n4jg6QsNOIbSsOnQL7FsFafhHupx4ftmvMFmkjV/Nk+Pcp+fKY80bXt3TaA7WmbbYkWTXXJu/mV16rSZjaHvgXj5cvk+B3XkCQAO6GhWvCeVHlSeG9GmmU44XGXYZAieRUQWKA1A4PdZjVZGJWVG8G9kT/5rxXRxEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774313694; c=relaxed/simple;
	bh=VjwWs3Msb1CQ0HD9iK38zVx9bWXMEOEjBAlUnQY3Dqw=;
	h=To:Subject:From:Message-Id:Date; b=eYTV2L+tCEtDfSbBLit1q1ZQKARIHjSC9bfRvvPUjVXEsvM33Q3rhyWkgwoDMmPF/IhtAGysTV7VzWxkquhniQfe+YwTsmX4VsVLVR10icvU+0q/MziLPz5SgfCCTUYbm/geNAd1untIblX5zW0V4/LgghydTfHH+BsVFNfJBEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL0GAeSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL0GAeSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF9FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774313693;
	bh=VjwWs3Msb1CQ0HD9iK38zVx9bWXMEOEjBAlUnQY3Dqw=;
	h=To:Subject:From:Date:From;
	b=gL0GAeScj6icX2GzZrcFb7BcATo/gFEzDCCurJk9QOGf6CuaBLne9ps1KAKVG5OQf
	 dzYb6xhTUhqq0ZeDaYpx3MJuleSZLSBQS1YctMuvs5Wb9BvujbqmEQOvKkDXgufI3i
	 3HsrOmuKlPdf6MVlc6Jpp+REAtRsWUEIN0WJjzAbfJP+fGeRiU5btAMYekeCgm7NuO
	 o9ga5xj2K/AiNbM8yklJaRrPhd5y6/KtCN/mfPBukFtK47HVdf9yStcBEJzath6TUQ
	 jiVMGOauza3Nt66Y0Zs31u8uLLNBKBSxddLPWQl3LDd1EcFkmywVSnF+cQdOHSvD4f
	 oQgF89f8jnjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796EF532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431369358.2585.28661509168128128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba84dd35fe5987c85eb3f6337179abeaf20e90913917f7e2b75bc4434263e0b6
Date: Tue, 24 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774313693
