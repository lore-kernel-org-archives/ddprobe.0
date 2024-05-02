Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C59C8F3
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714658543; cv=none; b=YBKrOg8EMqI8SvvKnu3GwhKo3SycACMDp68DYdVTLWIC0NhYW4DrvWI078R5OG9Pserz2de/FpRizmiernRFs/SIzNVwORWlLm34MwHslK3xkkCRHCmk7BMwCGmH2X08I+2hV7ojLNRg3IMaRy8OpTwJut8J1coc0bolsgoSLAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714658543; c=relaxed/simple;
	bh=29hVaX+bkEV+o4E1TdtAjlq1s3ccHWgCZCr8fBmboZk=;
	h=To:Subject:From:Message-Id:Date; b=ThH6gUtTDtmMzy0DmeogYDDA1afqIsGbJVjMjl39/UlxeUceU4bc67VkKHjPibrm5HXHPG+yN5CcpUON5HW0DlIOP+gjdjya5D3YX7urC+znkERzM8bfwkSVp7S1N25YRGc5NM3DzD+nEag1/FPG751MdxvHN2MiqggpBS+zsvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsrzPbCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsrzPbCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF007C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714658542;
	bh=29hVaX+bkEV+o4E1TdtAjlq1s3ccHWgCZCr8fBmboZk=;
	h=To:Subject:From:Date:From;
	b=BsrzPbCwoNtAhCts627XWw4QubksfbqIzQU/YFi1Flm/qZRbJcKIc27f1jChGBr9m
	 RE6tYfwA5nJrUmIg2zY9nKidQZi5xO8cQRIVSVgrZue5EsDHAZSbsTagU/lSG6zMXg
	 ydfVnqQ0cLcIvRYK9jjv0ERQw0lb1QSrNkn70Gx0+rHovpSAJy3oGqDMa85vjkYlub
	 Rpa+g3SLzhJlL6vZtzZ79CVohQHQeRuuTNU/JXjdBqzwfnbIYpcE3b8G+R8qOwl6s2
	 qESu47DzBFsOt8AG0wtxrgEEFEN4jEMlL1zxKmHYKABbLQDvGdvz9XcNJV/9S8fRt0
	 wGXH2Pq50+eOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9D2C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465854276.18210.6280762564438891915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b559dd65c8d3f914fb5daaad97e68eccd058a570fdf62e27ec38a9f512783187
Date: Thu, 02 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714658542
