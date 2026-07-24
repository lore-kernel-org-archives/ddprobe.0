Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1693DB335
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784905235; cv=none; b=Ljs8GAZ0pmkgfDDFYnCDVrDBPIbE2bS7ph9nR0/TNkXhY4c3GNAKCILgMv+XQLsty/cw6Y1LEOuGHNB4HiUX9fM/McYlWJHr8rPleRleSpBkR1JALzf9rtDM0KOMQJmpi1isf1NramXt8y4xkj8ygQgls6GcJl2a4Qb9mKmBBFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784905235; c=relaxed/simple;
	bh=KMsemWl6xPlN6exyMw+Zo2Z6rv4id/97OsM3sFUtiSI=;
	h=To:Subject:From:Message-Id:Date; b=sgGpfpXvmZQ4dtTPyxmiH/mPaXjQ789helHwyMPKh+mvuhnEwWE63m0aqHaTqfQleYraajixxxrJh8Qi9sZUaXct80m3HsTXlmfR4Gyc1wyebtqZ/7/d8rTbYGILi+tnbH/P2ohfs8vlJwIDQDGba7SaRQ2UwoiBV6wcfOyaUjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjmKv0tQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjmKv0tQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8912C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784905233;
	bh=KMsemWl6xPlN6exyMw+Zo2Z6rv4id/97OsM3sFUtiSI=;
	h=To:Subject:From:Date:From;
	b=OjmKv0tQEPvq09xE5ckOxqup6lf9MLDnfSITZFDjecOoR+J+xnwKmuRtsJptx8aZk
	 7MZbzkFzG0wZj9A2KiIO1ZpC9WYeG3h3urc8SrU9GlMAzDHeq1/IJX87pFAYwQ6WzN
	 +TdaFAPRKGxSV93n2KK5YTUWnOcwAVg9RUjfRqejHlOSOaWZCE/lrMLMPW1wsj6y2G
	 focrmWL5wXEQ6P2fVQkNHWnjbt04Oal0zzChqdcmztp4BcT6sRTLupGhbkgY0Oy5En
	 azrXCrigRhOE1rWcea6ZpNqu2JO79F5NslEdLHWL5L+YmnYfvpsOCXs86+1YBRFMGQ
	 7wDLxDhK2EVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8EFC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490523370.17954.15319140011747488469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079f719e813d9fea135124dd0ec4021688f196a0abe76e11a74f2e914707fa65
Date: Fri, 24 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784905233
