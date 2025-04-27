Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494511367
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745777395; cv=none; b=sMFnRbHMOQEmG6bAlM6Fk0cPseWXLt4IHrZgJUmUl2hDM0/AJnZy+LJXnfgwhXBNjiQ4qykUtmFm8aZMVj0Bxp2BJr3QK0Cry+FHIXedNS93oNK0h5RAOEcampHGtA2pYKI6K/Co6AvTNj8KIEVI/BVzNznG/4lGqIQystR9xMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745777395; c=relaxed/simple;
	bh=/anvmKKouXdse9Z11OxbNT7m/SRQbN7UstJB6aX1uiw=;
	h=To:Subject:From:Message-Id:Date; b=e36z8gwfQ+R+maAXve13eZ9iGd/vlEXB2+1YW+fz1fe7TlhdJwRlsqM0UD06jfIssoCHBLjERw9/pVAsh5QtvrW8X8Z9rXvvcS87Pvq6wAaRM5B79CrblcFw7S17XE1Fb/lmV1E8/18Gd2NwNokPnalaj2SkZf7vByYRRHnUdzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYwOXODI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYwOXODI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745777393;
	bh=/anvmKKouXdse9Z11OxbNT7m/SRQbN7UstJB6aX1uiw=;
	h=To:Subject:From:Date:From;
	b=LYwOXODIPns7hyVsalSli+G94dr1YzldJWj7pd0xu5FjreJm7KNaJoViD34GJpnjr
	 EyJB6Eu5NtHPbWAr3Ks7YNqVLHtdIyP8ntWMJWESiwFj0SLeJYlF42KtxHtAqftqq1
	 Qg+ctmvc8FRnbJr55REpIK9TiiYVaXbN8cRJqwF3dN2YHC7LCt72jANytJoOdmotBC
	 FybtTinAphAzPncack5uUVhuY+BAUG8Y6CoTfLGMzgoxxh8HphaCvcgBWjBskhyej9
	 Ct0UXrx8iQRsfJAM1p6J6mcCcjlFXUVsV5PKHwb7vam166I1pDVkBspOPZnaPj/kfj
	 CZrb4yHGsDTkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310BC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577739358.8220.3963042242615181184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5498ef8973aa366436172f9c0fd1203826491a91e80579c46e0d595a91008d6
Date: Sun, 27 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745777393
