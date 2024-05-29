Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594161D68F
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969263; cv=none; b=Q+xrmxlK4VQvIZ6Sio7ZJzCuLUW84lyrqEKySCAtrnh18CAHPCjHGRmrWPxUtnpt4kipazOczkLCYT0ld4raGZwR9bDqxSGT5AZ97YSSFd/TJFNf6PmcH46y5Twsi9mWaznNubUZB8ColqTIpoQsRrVhiPiLPiu9oCojIC63p58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969263; c=relaxed/simple;
	bh=kcwLl+iziuxoyraKm/nlCOls/PEEzj+r1Goik9TXx6s=;
	h=To:Subject:From:Message-Id:Date; b=aPTwc+qxyI0w/icRi/IzjDKbhEK5AQMOAIh5Ae5eDoOpuSufeQa711Kf14UtgbvAYHQXegXE51mb/7PPKm+6UWonJ8KR1DGw25QAz/PXYNM9Os0CLhnFOfRZ0JnW+KDPhmDFidkuOFgz2ULIpgnb2oKJslWrdD0NlNybiBdd5uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adsb/qjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adsb/qjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45ECC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716969262;
	bh=kcwLl+iziuxoyraKm/nlCOls/PEEzj+r1Goik9TXx6s=;
	h=To:Subject:From:Date:From;
	b=adsb/qjLZMr8qG7XyZk13zpQmoOxfsF2mLYU/A7nkJUFNT8STNd3vDHBx5NCAyhGF
	 /Xtz8/fW3kBCVZsxRt1Yv6w6W00/knssc5HTarGm48i70EkVTjY0XADYdJx8jlgk4y
	 ztL83iZcKhkxixeEwqwWX2Aig55OnrhX3LIh63eI7KWUZZamFAP153CFVS+xLrXKJV
	 B+7tKw1Do/WIReGz8UC1SFN/frFuGXDBLvtIEoVynHbwLEe+yTjzyvFjFkS+F+QLoA
	 4stLnjRZs/RXwHf1K2fOI/dFuTo3dAhmGO2E3hZAWQN2JcSzZu4vnGPoMWgL4Odzvw
	 ZV1xVUFwThtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE670C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696926277.29646.6991096600543896804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b9b3cff95691286e72b02d4d6c162a6d8e69cc95b92faf6c91b02ad1a6462c
Date: Wed, 29 May 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716969262
