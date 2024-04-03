Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925CD224D4
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712147896; cv=none; b=XMRboD7OzrJWEHu0fiZkhE52hIWxxKEK0AnEIdPh+NRVFTUOMPyAn5uVg5LnIhG+5nPzdH5yQJOWUYtnmZjd0O9TFkuROExh+OZAl8e42QDMKnFJgmPF1Mx/d1SBb9qjepo/ibbC4jgUptsDowCkRBbey+hamINq5SqT1/LbT+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712147896; c=relaxed/simple;
	bh=xlAawX1oQ64HApFBczqtDfcQLKZiJiu9X4c7QU+EFO4=;
	h=To:Subject:From:Message-Id:Date; b=gV2522s35xCbnZTZQcvXut6LSJ7AMVixHIR1Dec/YfMA5nBToMEbjJgwuCNXMud1Zn9xIMNmO2UWBUs/JKrs7UOrO/zmKdh6PfGmAeicX5XpU5zqGI224E5PvCHxWrXABs0LCRd0SHbidI8wR8Tar5mk3BrFCrOluYcmPFdxL1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iokTG/DO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iokTG/DO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70036C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712147896;
	bh=xlAawX1oQ64HApFBczqtDfcQLKZiJiu9X4c7QU+EFO4=;
	h=To:Subject:From:Date:From;
	b=iokTG/DOlWzp37IVNitxG9USPz2LWTuELXcyJlZ8Ws18jbHE0BFiSLa8Jrro6hJ0U
	 L9CbvhSdK+h2CnRQt/hk43Nf0DwDVbmDU+cWY2LwLkU8WA6duy1qfxrZPf7gj77qtq
	 4e5sc7QHC/KhoscK9vcMvGfiFP79ltXJ0zM2gLgAKgaqm3Q9staEKFsQZrzxRC8TkP
	 J1v8zjxsL97UDIVMkGbYLHMRkrgWnSpEnY4b/utxzmlawgDTL0fHdw/TSdr76MFOp4
	 +nz9jYYlYGrtFM0aHC+j7uULLXRm3onRVCecifgFnjsU/S8cvOJ93DyV5Fua1s9QHz
	 LCNWpvN0XW3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AC4CD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171214789638.506.12511049066703345883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dec817689bdb6f5b441d732c83ae3afed2ea6376ff85d033b3f774651beaef5
Date: Wed, 03 Apr 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712147896
