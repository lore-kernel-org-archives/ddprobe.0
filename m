Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3B14502A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737542154; cv=none; b=Clo1/1zcNCjOjjRlm97g0CCNgb6imXeCpZLaUtT4n8IZTKRMrzKVHWUhDlafQ3mYARNYoS4CWbwbqYPMLkmkt3vyB44sv0dtiGcGkwlTh7Hr18jaikecLaNAQ1lN//afLUKaROuLwj5LjmrT3acrRnIRbT56SeDA8IP83eeN0rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737542154; c=relaxed/simple;
	bh=VYoeW0rDWJYYTe78WeMXE6wP/Y4+hRcNlkKgo+5BzjI=;
	h=To:Subject:From:Message-Id:Date; b=VUt7imoE2VfRKdu1YBoJCXbFCDqJZ8JHJXsQVuS03erNkZoLAUoIMFSC5T5rTehKNeEFLteiJyKOChSPPiBmoZT59syD6I7FGk3HTLcPNujSK2vcvHT960cAQII2/LQexAtHSWYZrdrpwuWLFr+5L/UVemXcOwVTFxq4qFNbag0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXrmUXPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXrmUXPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB465C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737542153;
	bh=VYoeW0rDWJYYTe78WeMXE6wP/Y4+hRcNlkKgo+5BzjI=;
	h=To:Subject:From:Date:From;
	b=BXrmUXPVSYnvMCP3Z17wB6MoU58UPK7ADye34YLQB7Tnp5NdVgM/tFXqxkBRTXnRc
	 2U5mK9cpSH+rAzFas5/XDm3bMNmzybXqacNcSh2cKlomgzz6LDLeuCfI3/EVBrp1Ka
	 wtuUDNvctNFqyJ1LymK4beiBuJFM51jmMZzipwfgx8jG/BN3bFRa4if8s73BLuvGDS
	 HdpQL8aCd+LPpfzhsNvEjA+yPHS34bs25PKghwdJDJIXeXjDPPBJ3+qrjll/n0XR9X
	 GpxoB5Te1SV5Y01uHY9kP24X4faRl3pHZCUZp1hekAyTIoe8Hy+GKSAvCQ2pJCNG3O
	 1vDpRXghyIlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BB3C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754215364.25083.5093596026599078370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f045b45ea91ef591987484da98fd2bf3279226c4651c3c69747c594a1e0b72aa
Date: Wed, 22 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737542153
