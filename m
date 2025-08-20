Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C510194C86
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755664794; cv=none; b=TbZyllrfKgjspX8oYSoFH4kTgpP+vvrU9INAblVHOrg99zkm7zxaf0vGtvOH73fP7ltGd69vDdieL3Ew/D3bw5M8TROAwoPupZfXUcJ7oeRoUdnSAX0PWDc1zA3wANGb6ngx0B017TJBM7PbM2yuDN+LBivoK204T112+Dx2Eqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755664794; c=relaxed/simple;
	bh=m1P1U/ZlORsLRXz64iqs4j78HpjFzDoKbHWNYnJ14n8=;
	h=To:Subject:From:Message-Id:Date; b=GihadMg6v0hsWD1A1awDgog6kKugJwg1bMxdGSrRhsFO2O/GY7dDScc+/Wk36whRWxCKM5RG3iPGHpfYHcmd1VtS6sfaAqLpf1s+r+6tWTC6+b7BdKb/ggcSaLFdjSYsjaS+grIhrHHcheDJMfu7b9EqzhN+hW+NbdjRpwTxrFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNDgSPBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNDgSPBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755664793;
	bh=m1P1U/ZlORsLRXz64iqs4j78HpjFzDoKbHWNYnJ14n8=;
	h=To:Subject:From:Date:From;
	b=lNDgSPBxMQENHg91wsAeUblyEZUlIwDwDS/xuKHlMG/FN3dOzoCjxQV3Y0D+xgAYT
	 kjvaCKZoxTsffFc4A5SAtUJYQt4iystbvUA8+8clQ4rTnSkWluBwWNKTb2u3nD+vU8
	 bc5cjHUt5xq/5TdpVMQTToUvL0SAcxZGRqytMG+t0Znq5uOk3gY+H0yWSP88u9+ceJ
	 wYDGpJGYDrf/rKLw1RfKOb9cfk/RPowrgPiU6+/HL2KyUjojfCDenFNbyPBmcTq10F
	 qVPvXssOerjxNW3wsFQVa5yj7Ng9vm2qY/7zIIEHUkAe1lnUSc7E2JystVomsn5KcI
	 TJKyPtqiDApew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA1CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566479357.14776.5076205913945259656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb410784458c599aca5d087cba78c6742aca49ff22d08d677bd07307af1d902
Date: Wed, 20 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755664793
