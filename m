Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED103C00
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716525803; cv=none; b=PNlkImFFs1ao9BWSz2+/vcJgu0JSrHmULLToWEN67BVJ98g8uFSID6605NLX2X526aX/AUutKfESUu41FjYgd9qNPNHU76d7DxKonsnLPyv1r0DL8/7kI7tR3laE3+CZ+taKSE2ekwxvx7isJY09RCAWDJTVYFwBCeYXV5YY8kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716525803; c=relaxed/simple;
	bh=NqEYtXqcgLgwJdmGSW53stpDndnNNPQmqf/cnpqds+4=;
	h=To:Subject:From:Message-Id:Date; b=OG7Ds1FDWL6S8YMvG4EpOe/hhsyibM7rGxCws64xl5VyGQWKm1wVJ6mKdVS6DV8ZToRLh+i4jALu7XdDFkPeB2/hg7nYCzpwH124CGAdod97Y8/3jr421jWD/k/YmJ2qW66vD/njzh/gEO3My60WGySKAy3NibEvs2bOVqGAkeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbdY9/Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbdY9/Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43A6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716525802;
	bh=NqEYtXqcgLgwJdmGSW53stpDndnNNPQmqf/cnpqds+4=;
	h=To:Subject:From:Date:From;
	b=tbdY9/JetWKMav0hhFTjTfDdxPvZud3BrGhqAx8ynaix1918EQRQwq8Azvb7kx29q
	 OQ3lnfNxn/viRbYWk8alf87ZPP8nkrYFHnc/kiviviVzcEfMgmx7sdwDospViehXTr
	 HzvUrpNPcdq3dba3vtra6XTeSMbBg66JMJKRK0q2neiDAkv+OBRePMbkq0SHWf/Zhk
	 1jzd5IjPsJWosJf7PdL8TYrTCinGnuB4jkJ2dfEmX9OnFNJl5ru9bBAgAjOEcMBJlD
	 YF7oi0/Q8czTi3DyH+w58heGMxugp2mCU3ymimlDaYt2fPXoMOxXhJ/79TDmwd7CjI
	 m2Z52cG/WG9VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFACEC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652580277.7852.4239348886051560911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab03643d2227b5aa825215cd7897e68280f3a3d89add2d11aed6a43781a66dc
Date: Fri, 24 May 2024 04:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716525802
