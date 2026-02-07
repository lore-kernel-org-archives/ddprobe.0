Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F1F30E829
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461633; cv=none; b=r649iVMx4O4w78onksVrxgHvK+8yurPpSdUAljSYW1gpk+b4cnM+tMkhARamxYza+jd+ffIXEpE8FGbylmHZcAg0E9i6wCdRAjUciOqJUrUUrfAM/6TnmKBrDssHeCl9IYtou6eTgkXunQfXiINmWA4wFhIdPYFDZndEV7/lNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461633; c=relaxed/simple;
	bh=SpnV868dfzYwnfO4+HA4XNpF08Bvsi/y3/RE0/yK+AQ=;
	h=To:Subject:From:Message-Id:Date; b=CBsFh31bH16LYsFgf8TyJb36qlTE2STna4H3tP57+P6tbmpIM9R6laoXcn5ankgKJvSYubshPeP2Qj1mx/BZe1Zcp2Vuj4khSSG9lTo0pqOQwR0tF7na7wGFYHM4zeFBN6MaOM7xiSNXo9fFWmB3zalrmoQMGEJX4+1bHLR5wfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx2im7rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx2im7rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1828C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461633;
	bh=SpnV868dfzYwnfO4+HA4XNpF08Bvsi/y3/RE0/yK+AQ=;
	h=To:Subject:From:Date:From;
	b=mx2im7rTkDHePWqISw5xAwQkFTtkhPlsy7h/ZQNgeyS8m+pOInrkHoxXVf1MF/yR8
	 ooLIO3v9wR+dG5hpfGl0G9d1fkrcmnask/dRTQj2kZJcgM80b3gIX1s3JUuRrnn/KV
	 ozHU19EYlrMyDMe/ElDCUNvtgRH6nw8mMeVqCjQ3Fi2lAmGfESG/P0Vzv4NycKlvXg
	 Lulg4m2PrHnUl8NF+bM+PBxPhIojmQAVXaxW3x/to2hWWSlFaPqhR8BW/wq8UuRrMy
	 dy7cepi1A5FkZoG5Mx+ez6OmC10j2K8IL5I6tAjMquSTOxbaw8WPbKkdl7XQrormNs
	 llDgPBgwNiIMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBEEEE0AC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046163361.7663.15387307248267733051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd370b81527344a79eda66a7f8cda95ec79081a36d2e57cb39c4c55e663cfb8e
Date: Sat, 07 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770461633
