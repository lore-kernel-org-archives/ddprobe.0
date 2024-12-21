Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242571F0E4A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734786954; cv=none; b=nZ7CMr8ZyZzqWJbFO7jTnR68WXEgmWt3P+jGe7ITrdk0lMipd88e0K6abHE14nFUUiuFdhhwXrao1SDbXDjrvGYUToP9o9vUgUI8XckhEzrFVzY8hzU5bGXBIu2rrFc4DrIStnMvNlhLR2riOsTdqX4ENr384YKx1vurXHg2sbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734786954; c=relaxed/simple;
	bh=sKg4B6Zt89APUOBJqFT7YrNjPmE/x3QKAvpJqfPG35U=;
	h=To:Subject:From:Message-Id:Date; b=m7PJxDVlKEb5R4BfjbWmbdPmDGSBZFabju79uwp+SGFEZE0IUVdffOpLsgRkAzp6QhmY8VEEcQmabxgCejPnsiutNPv77lFmEMjyMtlb63OE6FmlFmxnPTRbj4j75I1/C5sXAxRnkTZ5n7mgAbZrGN+/GLKn8khEvj5NzH0y1/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur4lffp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur4lffp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB07CC4CED4
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734786953;
	bh=sKg4B6Zt89APUOBJqFT7YrNjPmE/x3QKAvpJqfPG35U=;
	h=To:Subject:From:Date:From;
	b=ur4lffp8ugFv66QRcynIEAmY6kyWtCHAHOaIrGrbMB6W+EB6+GcFs7fifSWlFqWN8
	 E70LF1ZoYiSjGsF/iy08+ZvejcShLeSKQtDrQn1E44XD68tLzimRUmSHPWRx6RuR+m
	 OKA564OPDoZe4glTyrsf2GvY4sqdBjeN1KW48UtygCuGKxE5tUa7N0q1JYVC5GnYV4
	 5MUhe3IxqpXSM8Ew+mUN3/SGTDbwew2z5DesP/YLtO/wAbch+ZLI/w5An2WO9tixZ0
	 W2I0wcJp4I1nTR3x1yeWOdzAor01oJ/JHYOnYu4umHqaCdIgGjjFGtVrgOozo9idfX
	 u5/s+2DAF6lYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DADE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478695358.20010.6908932325789049395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ece0b403c902218bef1c2c62bbc63e7f2b43d29b31af362abdfa0bd78125ad
Date: Sat, 21 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734786953
