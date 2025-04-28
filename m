Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689C4C91
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745842794; cv=none; b=U0OdX6aUXTTiSk3LUNmRbvF/fHjOUsY/gyhUR67qQeFU2RXUiXMc9MG3PGpPsv8lgJVmAkqTZfr3foxpGwGN0NTSWU0bMIvOLwlq2ib/tvxhogu03VekzIb9C2Ath9L96oRcjel7gwvcQUlEWbNQ/gvspAzXp+QM3BSNpyFM23A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745842794; c=relaxed/simple;
	bh=AdxIs347FXcZ4AkqSzcPyzk3o2hrcnvhvEFnUk6/enQ=;
	h=To:Subject:From:Message-Id:Date; b=Ogt4QoCotBcB/FvtRT1Z5fBJGLmAAgsixOnRIP3/Bgvnvmi2hpDJPO7n4lzEL3EwdRuqJPUxiufv2I5PrQ1dLaii8B3cyjfIUlBD2rS5ILDPjgoUSNog70sCgSRbunXvrzDqw4lbPnUPvPKivymQYN5vyIwaHo+H1/vehE2OQgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBC9l4VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBC9l4VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745842793;
	bh=AdxIs347FXcZ4AkqSzcPyzk3o2hrcnvhvEFnUk6/enQ=;
	h=To:Subject:From:Date:From;
	b=NBC9l4VCn3d448JU2+J0Mu4loZEc33jH30SnoVJQRNWyO8FhWVccoxPEJ5MhpvTO0
	 hD5vVJxx7aVZ3jeprkz/faDv0AeManaCcEU/TaT2jGFGbhlbUcHuz67Q4BX1Ip2YSk
	 eJFA3iy+BCamNzblj9V3MzI1JYTnCr/fe4gRXq8iC9JA2offsypgvuXlNOFe+H7Igh
	 Qs5TO7wnhE6uMCaw/bSwE1HqeCgwEtCcRnD/sTO0OzX5jbPBOXLN4pblpwDEcAv4zw
	 OARHDKSWKrDRm03weXu61wRkcupDxpvzE9Tm1pArpcEbb+BITSsPgxZZVl3sN2pTxL
	 rBFKu8TsAoT7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE18C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584279358.16780.16343201854570565189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed057402a1d4b85e8b47c168547709bfeb9c73e1307a2527972677d5b3391ea
Date: Mon, 28 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745842793
