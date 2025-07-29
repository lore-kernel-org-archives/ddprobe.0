Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304EB23A9B0
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753821595; cv=none; b=Bo3ebRDqSU2FZwFhBdtAS5cB2puZ+YvgCZtzGNiyDoXWgbpUjMDa/8DBLfJtqIGKMPZseXQb/XWlihZPnOT58odu0rDdAfYBkG8GP7ynD5/Y3IJApQrsCAHKPxqqfTPk2mqU+dbBOXZr7K+Bl8xwQJd3wpMMuO6QpHGFwSNLpVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753821595; c=relaxed/simple;
	bh=dA66SSZYpJpuqHKofneQdgigOtyoWu1kzNi/1W/4LL4=;
	h=To:Subject:From:Message-Id:Date; b=upRfBn9FfCfmB9+mo/Vq4C7G8XOXDwxMw+PiLr/OYm1u6RbkF54CvOGjT7yLJAdyKPvS0djPciy/gXm/fQScFF5bmcK13PgIH3IfIyGWmb2WtX7n53G/ST2cYdC/L10ANkKl5Q4rT/4XNb267oFz6ArGgoTj11g2Xf7cTu92ZNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx/48+NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx/48+NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B5C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753821593;
	bh=dA66SSZYpJpuqHKofneQdgigOtyoWu1kzNi/1W/4LL4=;
	h=To:Subject:From:Date:From;
	b=Yx/48+NBvMZLEWJfQTZ6QGy4x7gvDpjCDPyC9VmLEW30X7xy/a/SZRiIt8Uw8iEa0
	 ug99PRc6Xr8HXzN+Wp0XaGABouRjv/m2scz7pDBnVY8VTvS6htr4bADDcozZNVhZLa
	 yDuy7mY52S8JB5/lpoKbJCgHXm4G1rnXCgTSn6pv7dItVrNCvogzHhYzHH4+AKcWXX
	 WuIQ1MR5khyBZ/fphbrbGHBJsLXx/h8nrGwv3V4KWTVaQAV1HLfEWSIgA+B3Z3orxC
	 6RaBeKdkvOF6Llt6IdzQRTe7/3fvHf2LTA+0jLZSwgwdN+WMQlUd3XuyhR5+20Q0DF
	 Q9KE2F1JDKpTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003BC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382159358.11406.12040810330054415714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361c0b278cdff0455868712c2b500673547f4bfb5bbebe0b17989cd76784d43c
Date: Tue, 29 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753821593
