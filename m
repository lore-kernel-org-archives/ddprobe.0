Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C3B53CA71
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788870035; cv=none; b=TsGfqYIHt/uSCB7taqRUcNJpF6vY7nGzhSsj9fZ9N3eQuOOc2IKR66iPlRd/1YtleZ2EDvn3ybHxKLdFD+AJYqcu+5DYIVhaB/feAWMqa+CWnfIJDs2oUwZWCyRHeX5IWaZQ/YNAK+3iYM206ulpUaR1R0bLaRVDcx3NgVaYrvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788870035; c=relaxed/simple;
	bh=zDLUxt8vZiwiY2y61zEmu3bncZNvvLiRzzqFQZu08nE=;
	h=To:Subject:From:Message-Id:Date; b=sjUOtY1Z1lSrkDqkUOifaGdTWREOYYj0dlkgEVb2j8dKpWF876kcGXeZvy2deHvDGR/DRqYmCtN3eR4eBMHERK21lHG9PDM/ltmBpu3Th7jwk3N5VYpUnrbAjzP61Nb6H4KrC/c6XUqJdLcQH0qPgU/HhfP7Llfy4fCUZ8cfiTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHUa4xFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHUa4xFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8538C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788870033;
	bh=zDLUxt8vZiwiY2y61zEmu3bncZNvvLiRzzqFQZu08nE=;
	h=To:Subject:From:Date:From;
	b=RHUa4xFTt9/lMgaG/9+9sjKHCWmnqafLAGHEut8/3YWJC7ycF2ypgJ3YRfrFKF8gL
	 xPopfVs1DoXEfbTLO/C/J5m8RoZpDQnyC2QjnVQeuiuznj6mrybjykgvZRY0KSs6NM
	 OLHzq28LL9ujhhyRBI8i3OdCGhASXRH4M+0oTgVCsprXHoq4AnCiuDUjQT5IpcWJQx
	 q6yaOlxVUMBBh7mWJesStRStP/FxYm2tth7C+YBpQ7VMullVzckjdAgdObaryU3nFu
	 EP7jLr60bOL4Icn1DpKy5HX7gY2TASg0pbYxG02hzGB2C/ZfcXMNFaXq0ZqeSLPqlJ
	 CYQY0AM12gMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9ACDC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887003374.30381.14006569252469365373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a81c95ab93a327e260e05d710bc245b5800c72e158c212872376be130b5710
Date: Tue, 08 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788870033
