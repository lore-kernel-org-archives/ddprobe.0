Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F3F2236F7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747979394; cv=none; b=ahvrKEU5Ba+wrv8E/l4/A+8OLAFWlf1tn3MG1t9P/Mfqwo506Vf2Hp5FL/MDPjKOJ8oZZEVayLGpjIjM0vir7sTS/hI0L4knq1dgSgrmFpgC9/NGvkHBWyXwC8Rk3jTHAKa6xV1EJcBfDVVdPSSDNfvvvPgVg279Ici2rl+iWWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747979394; c=relaxed/simple;
	bh=G9Ho6YsjCJUZWgST13PK4XMyM9S2j/g5WgwUI/71vZU=;
	h=To:Subject:From:Message-Id:Date; b=gPLLe5tl5hcWr5WxY9nZeX/zijfXPKex52hScAFYZ1znPlJy0KA9bGaLPZ9ysKZ+jwSFURTBZ4UXnjr1fpQAHnEsgXssXWnT33iMNs9xOFfkFj1ZoJ57vQehWhrwyDA4HkGJjtVLcOwFzP5LPHi/tL0odlgJa07JgCPhRkAwKHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jgcgnueg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jgcgnueg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F775C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747979393;
	bh=G9Ho6YsjCJUZWgST13PK4XMyM9S2j/g5WgwUI/71vZU=;
	h=To:Subject:From:Date:From;
	b=Jgcgnueg1tUMUglXSmq5spkNAkyGjMY12iEizEHtqq2i3wRfTqYW/vFHPUtlU/sL7
	 tz1EzDF6PBynePpNFT5MHAoiqO5pS5urBoE0iybpwG62DbW6XhAYwvf1T/rPrurwIe
	 4Gdmz0Uhc+0tdSDaGjQBL4H2EXCRY9+OU80WdBX7Wx8TkxgrFYr5ZcSz4mhMeLVsv9
	 meLt++ia9Cxw9+RjKPS2ajTutdTjbj7z71nZzyci7EEP6haQ7cuzPvKGA5Nro3m6wP
	 OWHZjORvNS+SHXil+ZpFJRHcVbt2ukH4St7StnUQUOOTPjGXeU5VAsETeTfZPHODvz
	 qNUWAjvyp6kdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70CC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797939357.30295.4363233909322699982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94dcf52c1a8ea49166154d289c7e915072dc25df25ea3eb987259babf8db9c2
Date: Fri, 23 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747979393
