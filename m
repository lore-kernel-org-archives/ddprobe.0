Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F548225A39
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741604334; cv=none; b=paHMRXjnxnn5UUEqgsGYbFHB7QwwplsN3gyqxwDX1ouWLgZXm3lW+lICOJSqSrOt8w66V0tAUISPQRwv/Hj0xg2SvFL7csRRyat2WEGAR+A/F9IaV7PIvvVQEvt6icL1dNIj9NeUMMesTkSVjCZRIDpMlidtAxwE4ocM5qqGaxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741604334; c=relaxed/simple;
	bh=KhI+viE3Aq6/du9ReicgtRlqdhNEFCg7AyoOaMdqlYI=;
	h=To:Subject:From:Message-Id:Date; b=FmOv+RNC9xQBgrnmXLFdd5/9SzwtmUKMDrhhN2HqiK3hOsum/i8BEz3w1tTT5U75R4aVqT8m2JCv7kFOQS4x4vrb3RxEqdNJG0EQcwiyPNr7uYvqHewQQfIFzZcaXqSo14b3JH3B8ZCru8p6QEu5liA/PCJ6WJpDY7AHrQK4pUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTPFnjYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTPFnjYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0FC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741604333;
	bh=KhI+viE3Aq6/du9ReicgtRlqdhNEFCg7AyoOaMdqlYI=;
	h=To:Subject:From:Date:From;
	b=HTPFnjYTurZGxh7XjacbJ/im8ztjkUro1jUwCX6Bg/sneEE/ScL5XZmbRPsncGNbl
	 mZy62+X/cvoVhNmyKMOR9V+ppSJlgm14bHIIuIRZ6Nq5ELUZl7g8Tk/ncgd/EYm3NX
	 MGcM05Ue+HHoJ/ghZ1EUCAqsOLEMed4f5JpIL6+pq7TV+XolDp2wZXhol8k2nLtIOz
	 NrvR7sSYXOOKViHZ4noCJdF1z/5bhodnYXkrouesX3Q/yM+WDsuBz7B6bi58D9II6i
	 2cYYol4YEkxs4v+bc2/4QVWgI/x4c3LK774Xfgl1usfwRMQFJHztRvML0GXWxL8He2
	 K94T/5i902ajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D3C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160433359.25543.8900807221223444074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733f80c60c4ec6f8ddd547759bb93df1a17a62ff94407afc5530e27e37725952
Date: Mon, 10 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741604333
