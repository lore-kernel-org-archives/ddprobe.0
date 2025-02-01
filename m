Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3882F852
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738446356; cv=none; b=TjUw8BN9eAA7lvyxwDRx2QpfEqjttrEkOjhPIqo4JmoLHzcwGckKXD5YTbJeCc9VvZkzDBv8wuOTSIrsvy6X4PvOAmYoDlOGLXClqOSDBhvVw6t58ZT+AoQNGe02oK5ApHtTIv9QGSdXATDXAUrhtDGM5ZHjXI/XQgYkDZbO3Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738446356; c=relaxed/simple;
	bh=GpLilTUiRv8wNqNdJnfPisdeRPpS6yLiWtNOauwMg1Y=;
	h=To:Subject:From:Message-Id:Date; b=VUxCpHETVX7hL4Qomx2PlFMb+TMsPXL6sWMVnD96ASEzr5Castph75mBPvEX2AxmG4CwfLdavPATvwVK9E+Cegn89VmSmVoZIN3rZjM8Dc8YhZ1EPNyw71towTaGhDh6bEXzqfdFoypl3+IBTLCWwUWtDzjKXIM8iw54IwDTEv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmaD8Ijh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmaD8Ijh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A20C4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738446353;
	bh=GpLilTUiRv8wNqNdJnfPisdeRPpS6yLiWtNOauwMg1Y=;
	h=To:Subject:From:Date:From;
	b=tmaD8IjhcusZogBNMUI8nfI251Wd5aPBBYZT67ZDhu+g09A54CAGGqDgWG2DiNZqf
	 VzFeu4IAFle405X57hH3Sz17hvR/W295FTCd7dNbvRms40f1hOYeWYHN80vm3iHF8u
	 TiDzkWHt8x6qCEopoHEPEjIgZcLTPid3/KiVeJ4p1ZYueQ9Ihvwdse53ABbcwzbszb
	 QTQjTJIi4khmbYCAu6NPUx/xlgAPv1oJwQ2ZDbBrbIftMrfbgW8Q+XeMs6IIgTVt6Q
	 F1bXLa8gJyNi3uwk9eA+IWozF6vNDc85iEILOhSfAySv4ZEDx0CV8Z+hxBv2KgnYvs
	 HIVR2/KoMdhJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C47C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844635362.5754.1328420526802161897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d242ff99ff03d7782cb8750a20a22571bdb451d02bb5877ede3237dc6e62c133
Date: Sat, 01 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738446353
