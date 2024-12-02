Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8901F8AFE
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733122554; cv=none; b=KVKYpBcL7Xy0BtengEF9E9pouzSDI1xiRoLS/ieWIK8wH/CGzOfVT2ZXD0FKdt91ePMVbf2XQ/rei6rNsNbCD3VrhSS82MrJNsQ1eLcyh8drlR7MzlYhObn3rMbNs7Q4P23EbZONbiX8Zol7Pfqd8nUp7dxbP8tPKnxwH0gM7xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733122554; c=relaxed/simple;
	bh=3zDjHvaEXpVghGry5y2fXJHjLlbi+4SmgsCMCPRsElQ=;
	h=To:Subject:From:Message-Id:Date; b=JgJwPyGBjr/703rjM/s2qJnMkFGnux+UDUvg11RmfXDc/ib5ZB13ZIc2w3x/9OQKFkGozJGt7GhNk4KcHGDi83OijjOvIzq2aKdBlz/hRUjHOE8bIv9FARb9LKJx/TN/CDPP6UgI0dF0OeQA1d9cOAEEmcgRiqijG/UyCQqSmng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnKNDTAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnKNDTAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00B1C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733122553;
	bh=3zDjHvaEXpVghGry5y2fXJHjLlbi+4SmgsCMCPRsElQ=;
	h=To:Subject:From:Date:From;
	b=mnKNDTAK6bIkp9ixMnMKNy/yyHExKKzJYT3A8wE4V+QyJPcsv92u6MSVk8cotul0F
	 GKpR3khC8sAJj8w4EYd5x9Tvz6cf/g31+Tt8QlgugjcDYpxZ1g5eMKXJZH1kfgrAIH
	 bmuZF0J4SSoUfl0kmV7i06S0MtaYRnhO3qIvPqIyLDSPlXDcE2lR6rwPHMS9LUvCO0
	 yij+tgBWOVL0zuPplEBmQDjhmkU4jAecEEx2H4juGLq7u/1dVXMMG88U6VGChjav3x
	 JHRFSGnsNjRMMSN/346YOh43VgkdJHNM9TG0PCR4piV/DDEISzn3TgW7KtmHcuLs9U
	 OHT9ZSab3XiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B067D4979F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312255360.11384.15144642807927730438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1ab349c892670e01b8661f80003cc843eaf280e80f3157fd9bddd7dc8edcb6
Date: Mon, 02 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733122553
