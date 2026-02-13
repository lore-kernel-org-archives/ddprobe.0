Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D60272813
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771007693; cv=none; b=HLcnEDxRORZZPYaCt4wtIwZ8rmmquQmnbuYba3B7M3jaPR/J2YR9qYIsHrVaOdh8ZH/jlHGeciJSE63xPcehgoG+SmLe2Zo7djAizYoZIhUcqYJ7ZiXNRDPl8WkdlRlYj++fI12yu/0eoMnv5HxzXUnePjMR6m9E7pc4pEt2++M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771007693; c=relaxed/simple;
	bh=w6SS0qr1STWEzYXqA78msYaLJa+s98Zb8WT9ipCXfv0=;
	h=To:Subject:From:Message-Id:Date; b=di4csW1alBI4b+GdPz41n6WVDzDr6/RtYr04B73ySatndsT4PLNIZ5qW6mWKrrfBOO+P2sn/WSX/9uCpqchjklsR2pBNBLlapkWUQE+ATNHLiciRR4H0JaXDQETbbSsFWwcFniUZsLiAdsWWyK532pZTdG+8JHXc0FIaTrontPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhwsrbZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhwsrbZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771007693;
	bh=w6SS0qr1STWEzYXqA78msYaLJa+s98Zb8WT9ipCXfv0=;
	h=To:Subject:From:Date:From;
	b=EhwsrbZtpNcj8i2IMufh3cA3P5Y4iKXxUaHRYHDUmJ8yw5LM/tBR0YGtcfDwXFX1Q
	 ecnglV8sr8nGHv1Cre3TgBX1ahdzDGxb63XOZwuCRamSG15MBWzOiUrDuw5VzfIfCu
	 SRoW7MVPkvfxig8GW1Rm5erpbsd5vQXlbRy1UHjfsEV5xxfAcnWERqms1nwRj7UW6F
	 9BXYG3PYBJJxKxKDg3u+5OqYNiO2FD8iGoiQagTwshbaoAshfik3oJH43Hj4+2ifrF
	 9IXpLavLLcJ6amck3Tkgeg78lo6672Oyqrd3JNa43tnN+xrcb1WwITppyCm7DCmgj3
	 qhMssROfQJ8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D138EF99C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100769361.19896.8917314205239563087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4c81368cc488fdb8e18e7c51c3df14cd29c8481782cddf78e63a14a06aba3d
Date: Fri, 13 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771007693
