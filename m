Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E904208D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777282054; cv=none; b=bneEZGiKJeLrR/kEn2MvU8Ku3U8S5a3WSmXY8lRSKRbphdMa55S27DPjFiC13oJpeM1rSsCVlOysdTG4ZSBs05y0LuddAvtkwCkQ3/2nFFymo+Wpi0xZjNKO0BYMwL6tc7Im2Kfz+93U++fDAmpqLZrhFiCyi3NdvyiTPRQBcqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777282054; c=relaxed/simple;
	bh=FJuKOIV/F9cTpYlAeF1jS88vFRWHDj0FoN6CuitLk5M=;
	h=To:Subject:From:Message-Id:Date; b=gis4YnxnskMvjKD/6CMBLg5RsjZXFJNeqZlbrw5gWripSzRkmEfrqw+67RPaSizkmFpr/00mcWgtwpUZv6KZz3GRV/3wxtSroWVtIRTOiZmgT4PaHzQ2VLH0mMj8zhrj3z1HNljLlEe+KMvoU2m0UVdH54Wl0B/Vy9XQNYfnrjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3GRE7vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3GRE7vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777282053;
	bh=FJuKOIV/F9cTpYlAeF1jS88vFRWHDj0FoN6CuitLk5M=;
	h=To:Subject:From:Date:From;
	b=Y3GRE7vjWm+rB1JHE7/ucHYdW0UDRjh9UMk3/ZlB0bby2ItuBuYBziAOn9XUW/6vV
	 f3vUefJS1ddTnu9qh1809/SaDFI8lZjlh2gQQcui3cyHTaeyQKaQLKyms1rGcioFXr
	 dQaeP6+1ucswjT5S4tyUP99CIn4Jq0ni4x/eQIj9766+ttHO+QO9n41vmsTycW21rx
	 Othp1Bz5hI1nxyZ25Vgurihb0TIGyzR/QEG7QSqadrGPa8WfgdzZ4lNS1ZaEDcy08m
	 1ynqcvmpUyxIV21/WTIpZsyeDbcFaKkuw2wyHzKFRKHt0IQR5wXUVyOUeFLXytDFmz
	 2WrAfh89Qfdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC0FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728205368.13978.7990527614380269356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8500ab26579d8303da77064f1fc09ff648ff5b4154ef5e4571a6ff2c0e31e124
Date: Mon, 27 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777282053
