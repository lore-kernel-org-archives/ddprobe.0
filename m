Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7A22086
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716354803; cv=none; b=QzKXDUVY/hTLLXs4k4b3LtSs0oNX+VcFLXfuF3pC+I3Xo3cnVkX7WuqbviU17i/AuDuiKiKGIGs8jmDBqOF+6pXFtpsE2rfUTS1kBKI0/vHeNpg5G/dbd3U/2o+cAq/eGjqEt9wVl7kl6nBepv3PC9nVLNOsv0zgt6wP/EwMXtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716354803; c=relaxed/simple;
	bh=VBEh0NaarKB92bHQRcJpsg533mx3iSSp/6MEvsDF/oU=;
	h=To:Subject:From:Message-Id:Date; b=OWfHL/XGhAlht7TXUiX8oqYzk9anqOi2VG/cPfHcYmyjltbd3SsedkI2wmSY3zHuGM+A8IsUFRiL3mzzZgNvU8ZuCZHFwf84GUMIaHversaskoVclA/ISiHXsnOL0MGtM0bHU80cBlSdHnNDLfxaAYRLfm6w/D3oFouH0Cujedk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cvo4p0YR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cvo4p0YR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6752C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716354802;
	bh=VBEh0NaarKB92bHQRcJpsg533mx3iSSp/6MEvsDF/oU=;
	h=To:Subject:From:Date:From;
	b=Cvo4p0YR3fHx2D13GblJoXIyRoGhpxwUEsb5FGg66Ww5B5tf7fuR6WPhJbpEdXp4l
	 EjIu81Lf1aVvg4QS1OCra7UUY1QbqVvP8Cg3Cq934CPcOh68n+oOelM9nMdCt1k70C
	 33hRo6heNf9EWRwwX++wGUugFk9xwXof8geOklTm91Ghq8eDQnnOemb1OScDEivsRZ
	 a2AEgGxrEB03Tu50mnNZbIV4WEp07xIdf1uDk8oT6WOQiyIjLiX88SeWr5gMk491Ig
	 LWyIZwLXzFh0Qq3AsTh4Xt6lbsS5Ez2ZOcLRfAJWbv8Kc5g/huvjBmy24ewbo3s0AY
	 GWMNBeSML2flA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC76C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635480277.13873.10723610344037039706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780da3c06128fefb7c919262e652001e42caab099325f5212c32b298ab0f9170
Date: Wed, 22 May 2024 05:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716354802
