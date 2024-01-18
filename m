Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE34117C3
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705539497; cv=none; b=srF7Pghcdtc+Mvus07EId8WopSIpwGJn5Ocw3e8Sex2VWqxZ5Q5MrZ/efkujkp4eMsIlJa/6JkovtOIlwtDR20hZk/JZZNQp5hzq8YDycBMNUlnJ697uq5IxRTMtv4Gx/7Z7anhw8RNC1uj4sPlAn8FasAQj5fCLbBYIrBuaXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705539497; c=relaxed/simple;
	bh=ZtTkFwlQTCWjdQA2FaamXRU0ZtjTuwaqqCiIyR3NU6Y=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Yl+/C5McH1W/aWfC722M+lGhfC5/zFquuAC8jo5niL4woQ2FGbkWFzlWA8nmgBow0nFtDG8ZzGCMo/NPkdPmcXU2aMDPqbYdM1l0x/4netQnDcFuhaaZn5qjg4D2VwFm2MZgXbTzrUTOarljDoVt5NXvBNb/rSHzG9yvxuC9cHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+rs36fA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+rs36fA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF7AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705539496;
	bh=ZtTkFwlQTCWjdQA2FaamXRU0ZtjTuwaqqCiIyR3NU6Y=;
	h=To:Subject:From:Date:From;
	b=I+rs36fAI5X2p1A6TJXPxQrxlQ8hR7doWN69Su5p4e6Fba/DnMBjNFrje2LYcJc8+
	 H/SoE2xY2ZhDQvycvptGm6dOT2Z5ZOl6yoR34ntqH/OF5KI72joTIHFZ660flbx45L
	 B9sp8/Hn+upoTD+NVoMgTqIQlFM6EkaRC34j9sQxN7njKv6FZimcbcyhl/q/Ss2KNh
	 Q4t2cQvNNT6r+e8KAtl0YVRYdH6YuJSckdyJDEWNQrxZWZGH94GqIfLf51oD4J9UcM
	 tN1NL/fls2C+RRtXm+jTNyL/suloMz8xKjdRG/8iSJmIdX6Zeo8vO/dhf28MUkPgzD
	 j5W0NulY0l2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62060C4725D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553949636.5108.11175189513152349708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e548375f6824e0557a05434e651e88489dfab7480cee8204209e4bc3ed586a7
Date: Thu, 18 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705539496
