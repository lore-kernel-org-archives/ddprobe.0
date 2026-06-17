Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44553285C91
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781662594; cv=none; b=fG6S/Be6m1hAt+IstzEPAAE5HPBh3O/3CFmB+bOADTsQu1PUCNR22XVjoxY5OCz0WHkevPXf3OEBK0zyWbs6NxoD61x/LY6JKnGddqYbjJqNiisZvK7gvTGyNBx/JMd3r4RwKzbHWBZrlY6cxPbW4tqBGPa7m0QlbZC6LnEw4cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781662594; c=relaxed/simple;
	bh=8LvSaly2wynVWXpCwAQxZT3ZwFTuto0I/4/DSMgIwrg=;
	h=To:Subject:From:Message-Id:Date; b=a+kBltP1SaHrlttpjNSatQLHPtv3LD4oVyidMdumMaEuWeezbbMn22L6vzpAXFkJHN0yzVwace7UTB+FF/iU/esv7sdDCS4esB966BWK4D/Dk7hriCK11xUL6bpMAocJWfaO1BBDnKJZ+Gqhowet66W+RrdQMq2pyD46RWgIZIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swQRoMuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swQRoMuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DFDC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781662593;
	bh=8LvSaly2wynVWXpCwAQxZT3ZwFTuto0I/4/DSMgIwrg=;
	h=To:Subject:From:Date:From;
	b=swQRoMuEsOZLGIMZ4Di9jqIwM0iboN2dtbHJ52ThirYPAO+DOZ/0N8+3MqcX+TQMC
	 9qypz+Wd2qXJii3e1b8Q2xV4cZGIhLY2lFKvF2TEiQpn95HJExPcEyLA3RyDCdWLqn
	 BOoTQIpny5tEsYtMNtkn0CbQdpPqV24bnc+a8Gw9ghmnI9ML4z9AYIfE8SUipqad9D
	 +3R7OgIW8/0k57p7qy3lTd9lEJYsNifWzICerCccCDTmmnZYvaU0Y2uYPyOl8pmFFC
	 wAwM7Aw3Gts/TPDnfFq4NZEBZOztm9zycFE7ov1GrHDzrVerR5BSjs8UYCzagwHlWJ
	 r2zldaNKFA1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45C7CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166259369.3829.2472290943486281266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3657d9e149bb1345e415c4c169065fdf94f2145ccc85508840b84bdddf9fe17c
Date: Wed, 17 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781662593
