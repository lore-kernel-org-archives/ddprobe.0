Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B9934A32D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756216193; cv=none; b=PQwp+WI4Xmd1dNAgpppFsjOlR7p6G91KOEw8gQBt7eKzTzQ02OYDYcLynqY9sIUsYAPWTz7leXIqFKit68QKvceRovkp13QwLWcmSocMH8tbwGR03iVcCcUvOUcYSGn5+rN9Fh9Qr85KIGBMfM3KKtTb5GSAb5loguknA+mlYBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756216193; c=relaxed/simple;
	bh=T4y1UctIpqGPBBLMstRZa75Cz2eeeC4Cu/UoEGXTDtw=;
	h=To:Subject:From:Message-Id:Date; b=Y/deICX+0o0U0xvpgkrYLCt1CgG5dzMht4QrVIDBMIkELI+n9VeXvxWriCNUrNN2TVi0BucMfg579Bq0Oq5FFSw+zmHuZ+euZA0ThIEAsGg599HMtyjqMfauCaLwxbC+0LS3md0rdaFJWgIgMin+Md1PvHQnlloL4Nt4tfFywL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6yELbuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6yELbuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA55C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756216193;
	bh=T4y1UctIpqGPBBLMstRZa75Cz2eeeC4Cu/UoEGXTDtw=;
	h=To:Subject:From:Date:From;
	b=f6yELbuJk1clNV+4t16F1u07gYPElkacNL2uVujF0HWSY1/4h6mwnDUJFTAjOdPGm
	 EhTKQ14/rjSzk3oiJjA2QW1AI4Y4dD9cpt/lgq0JvjF9MQYTdGluAsRAwJ/z0qA7ux
	 DOji4GTSbVIXGGMZc+NRzcUSxyZFs3d9Uo64re9hHEaFUk87FPih3QY6dXl+tHN8Tb
	 yTbEXsRbYUfSDCuv5StSmnRSHYAn1Ag3aLBvePsa9gwYo/RPCS/J/5WvaHxnDy+GlM
	 W0uJ7qEvN4aOQV2C9eEbBEeiLj5kEBfyl6fQ5yfmTv3nmDKQueWIjS8rKPP+jr/hka
	 XpTjUt7y6jNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E592CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621619357.20192.15230647261719522471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a94a80f5d15f0e4ca1ef5ec9856dd8c0da676bb6fccba6ebeed33dd2e16e2b
Date: Tue, 26 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756216193
