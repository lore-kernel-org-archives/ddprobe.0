Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC872882C5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764631374; cv=none; b=nLRR9VACP4Q6QklGhUp+AjhhB9vijOSlqU4mOKipBsd6IypDnA1FZK4MxNQvEqEI++61Y+AJ7vSqo5mKLXwaXGaIhoXfX1OeYdPuVygMwQtxZkWThCu7Ow8zeEuFYAHu9FtxpxteHjZ0AG/fMow5O1tsxaIkfSvTELtVfYr3Uqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764631374; c=relaxed/simple;
	bh=Dns2X4B8IKKnTNwPQGszcTQZKiDrbX5Qse3FhuDqe+0=;
	h=To:Subject:From:Message-Id:Date; b=sHRoKvvHL+v009OOAWxPM33LI2+S0E7Es7nxpNZz01N63SRp6upvBve81EGAKDbDX+IG81wbMPrRpzLTCYI4LNW8edki8eoB5UIdREnEnGmJNndS62SszgILfHmOnAYqB3+Sbhmuca6DOGVDVbeBx4i4uXrmYGb4bN1cHe0Q8c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTye9viB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTye9viB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764631373;
	bh=Dns2X4B8IKKnTNwPQGszcTQZKiDrbX5Qse3FhuDqe+0=;
	h=To:Subject:From:Date:From;
	b=rTye9viBWKGuF+f7SBrmyftqLauKjzOcNUTrt7BaWZp01LPEcYcbmplLSzGitgEOg
	 jYgP8pC80M5T25nI21GnPAG/ikgtZuRokJwK8OzvdHDlQrUZo/fCDEyOl3dSFhE9UZ
	 2+sGL2Tv4xT3WRkb0z28ZoC1r+U63BtZXm2x8beog+5ftmz1IuNselj4XAcqz3htgL
	 fVmQ4ykrc50xiEDZPRkTZ8iF52oeZzy2jtqHpT+NdjHlnA+5uEKTY6RGogqbGMns9f
	 0DV93H8aUGOu4hDL4UPWQqhys2IlZxTmm9d3kmcE/Ixa/s2sihtM9YT6vqRK+8XEwa
	 VmmxmmeuJzutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94488D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463137359.878.7227875773886495631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e10251fe5f104fa2f8a06ca4517cb4d9159bdbf6d779285440e6628d09111e
Date: Mon, 01 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764631373
