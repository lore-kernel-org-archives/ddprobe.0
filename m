Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38451443E3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791528034; cv=none; b=KARR7iGGyfRXckr4n57tXqrCR6yFBsw8ZK6lM6X2upLKZ3Nv3SS/5hz6x9sDI925FqEfSkrAM3Inxi/mye8rCNo4mVms45S71W46LnWFango9HT4G5TMSSB3NJEnQKndYbZNvGfM+8vt6lz0En8pEQJl4aJ5b61+lPulQ+HcTYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791528034; c=relaxed/simple;
	bh=Ywf584cq0EIM6N9NVVWf29EZCUFgUA0mkVLpf49hftQ=;
	h=To:Subject:From:Message-Id:Date; b=JqXGBfmThuMroKZXcs3TKxaWgGiqZhmP5GPSNR+y3nTG2AS+KIMgLPFJLVSYoxjgZ1Pc2xHe7pqB/ACI8RKYaTNbjSCXT30Gor6VeF92ZNkEuc8ynm38TJSIh4/bc4AN13lcp/u3HgLzfClEL8sAjsVn6Jlzamh5Q/4WhbXqIkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpfS5I6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpfS5I6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9DBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791528033;
	bh=Ywf584cq0EIM6N9NVVWf29EZCUFgUA0mkVLpf49hftQ=;
	h=To:Subject:From:Date:From;
	b=cpfS5I6dt097BqKVDx/FFELA5bxoUeVSAoZDAimsMlccnJoVnuNiIxAXAFxppPNxQ
	 UvuWq4J+5Z6B2nQLp9ck9P9k5yPbd61/GkmL/QYakvlzbrfBBFW+seOcOZsZR2WHe1
	 9ewWej0EDKE8XNU+XzF6DHgl9zA4p8lNOKxNhAZFRN9PpbY+kf0WNb+Juk9NO5OuNU
	 3AeoK22bCNH2DtvBH/uKlN3rNShaCWpUr4T9j5ET0Qb3hObbR7C7fSDaRK/IfpHP3f
	 vRG3ReW6Ijz8dx71MJazNDE0e18LeNrKeviyt4j9eS8MXmnDb0FTCzXzNTnTOYgzHB
	 v4nePF5xjEt1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A61CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152803373.3552.11957356640026348120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6914908edc7fedde7d5b352bf309e1b8201abac84115b2c4f6e8acefbe83e110
Date: Fri, 09 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791528033
