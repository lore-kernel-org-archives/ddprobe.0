Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E84326C3BD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781727994; cv=none; b=YL5nIs4N31425Y8pnxXrJ08K685I3FPLH+fb/7EJliWZCx2JOGLHo4iilNf2LHNTB6BxaoTvZVOuMH+zV7HAIA93QV1SV96kISHGqtqrM1uk8CQpNN0aF3Gt4c7B6lii0jwNGryP0ocz3RqDQoFdhwiZbp2BAQQxc1pelcEcCTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781727994; c=relaxed/simple;
	bh=A0ioCIWc9lzf47ElluLRl4Dr7bGb68OATQQJ5Fsurpw=;
	h=To:Subject:From:Message-Id:Date; b=AgSDpwI0l2dp5J47hykjq3O46VVkjD8QlaVlLIm5y6n22fCiy8gPTY8196c5Y4Cz93wACinm0Iso2jRQlGjpDnpWIyJWVYvmcDN2IwDIUPPTi7xr6ZPro6ERXHHmfR/l/+2CmkCs3O9wM+B3krqMtxSVOS22vT/KwwRIWaa0M4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOEApgPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOEApgPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DC6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781727993;
	bh=A0ioCIWc9lzf47ElluLRl4Dr7bGb68OATQQJ5Fsurpw=;
	h=To:Subject:From:Date:From;
	b=LOEApgPXb1ug+HniPa7X/sY8BgWAGVs/ERHWUpJ9WIdTmRvlEfigdLkrUxpWtoh4O
	 Rh5F4bq7h45mQp/b+QftGLIirmdpiAHyi1xKGwyRg+qyYSx+d2woFDTxsD//PhA/Nb
	 SclBT0/HTeBUnoi7RqtJVvwavf+BNiy9r+iT/dcmwjF2uhCseN/A9we3Q6JcLqloL/
	 zLkmqs3EsnsxHZImd5XtJIy6yUzDeQtgXys2DQIe330H7p0hffoHHCh2HDMqSY/gFr
	 ko87BHtc0NlYqQgae0jq9GvBZnauMy//sjbHmdT8i9+uVBH7x5JkAVgoOc4StLxdnt
	 MGAU1epg5ZEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CF9CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172799371.14607.41915850136986956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e31e4aa7bec1ce9a76c20c70591e4901229b0552161fd3aafb8566b4e2ef44
Date: Wed, 17 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781727993
