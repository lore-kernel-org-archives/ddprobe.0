Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D22332917
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777057654; cv=none; b=ZJ0zBk9+C94QFGfFLSboZCQ5GRaRIa2lF+K6+taiPwxTRA+ct2OJNf5ve/GUT9+oAKN0OcE+bG1rlTDb6x6QFAyoiSBEciSBtjWHyV3vodyqx9cXYkwaOXMDrMbKJK+r2yKdafAQEpr/DWv29A/mf2zhLBzKzHhkjMThQuOP6u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777057654; c=relaxed/simple;
	bh=+4bBs6Hdl2IOyZPmUa0q7ad0/Cdg2wwzAMu5FH6SUdY=;
	h=To:Subject:From:Message-Id:Date; b=VpDzVVH5Xpv2WEDZlAzaoovwWvy5VxHgQJOoWVAsrV5bxnJaCcTxyKM20ynzZU37SkyqR/GD24JkJp654Emqwxjd1AtcBnHxcyofAdPtLm95MnmkrTEcKyLUvsw3KWjleWqgOjha0Na3eLy7MJo/qr/oQxAcwVV2bNIy/6KzMLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGNNFvRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGNNFvRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B930EC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777057653;
	bh=+4bBs6Hdl2IOyZPmUa0q7ad0/Cdg2wwzAMu5FH6SUdY=;
	h=To:Subject:From:Date:From;
	b=eGNNFvRPZMaImbiTm9iU2nVWvmWRJKAxFaVnFHiKDDHga0hSJHpBgAcupHx+Dwk5x
	 +961ZrjyivuhgOCalSyjgidRXQTLY7n+KIrl6/K2zWVi5KwQimQRg5DLZJpQqbPaDd
	 IeUMihGM4EIAXkLCVYhR7mf/Ny3/ANZY4W/NOuKFiIX//VIc8h8tmgLMGQIVn+4Gr7
	 dHV1TIh94dgObxDENMNBNh6C2OS0+19lyXi/y/86iZPLGm5nyJqnDNfanPltbZ5uT0
	 t/ZPyUKT5KjLuCh0SFtxXGmC5vqBIaMNN6vLj673YwVvs/M0wVg4bugrRDmDYHn4Rg
	 MHKHOJOxzwJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954AFED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705765368.3345.2646026829051235987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a237aa95a677b861789a0a7852321b8f62757f2b0562af1a5d886d974410fe8
Date: Fri, 24 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777057653
