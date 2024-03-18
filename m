Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CBB952F86
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710776896; cv=none; b=jCmVEi6s1UBoIl33VUPkZZieCGmgIYyInUUWnqAFw7NgfGUmEsTytGsfTXJqoJOlm0Y5uQG5iPUmJ/Ed6R//V4aE0UHc2aYFBAw/Zc9mpHeZ67OVs6/gypja6WEZUsycQB0AeTv1Yx9vtpcw0GDyZaQBlldsupF8ztVLiz0i9TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710776896; c=relaxed/simple;
	bh=l0p4iE29O6tR8bnbbFGGJ6Q5KFl5BeCLAaWiBDwbIEc=;
	h=To:Subject:From:Message-Id:Date; b=Gn1kBJZNJhyqLN52wBzVHDl7Iqt1wNwiSzGmyZzSyy1r1nYPmRMGqo6pl4hn51qC71jTQeqOplkpM4NiKG8kLWcpVlgCQ1c1GGA97VyGLAjXXFiokJqoYRbaFHp+m3a2Fp/yNVTgZGBdJR+sxsQqTcISUG2EME3r9Y3lkkEYjMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZOUHzfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZOUHzfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726C7C433A6
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710776896;
	bh=l0p4iE29O6tR8bnbbFGGJ6Q5KFl5BeCLAaWiBDwbIEc=;
	h=To:Subject:From:Date:From;
	b=gZOUHzfxukQH3BrI9J8tGxET5JDEDGuse4GaCmw/067/lqjZKsUd3lFATJkMjSLSB
	 ElJOFn+a9cZ713tClAl8swW8zl8CjGXcoXoDwqCxSSJTTlL+SI+NrOFBiaQpgPHubG
	 jRsSnRvkQmdUVknJ87Hqi6K1C/BKpfDLe6xQFpH6fc6wEPTdPUYlRlwmM5DugMR6Iz
	 h7UTA4hl879vSCA/BcK7g9h8R5EsHm+ue++jvYYN3O/4LhMiITFlyH/2X5FG+3ipvS
	 LyxqfpRpqIZW3eOhTYkNby+D/HtosoD8qQ9y5KMQFZDRhhjJfIfzlugXTLa4+heNMT
	 /3PVwGKLHGG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643C6C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171077689640.25291.4556824985031088522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaf2a1e1bd4effe0636c4e8a32d59d152776593352e8bda72c75049ee4c308a
Date: Mon, 18 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710776896
