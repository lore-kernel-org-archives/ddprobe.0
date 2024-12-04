Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9532500D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733288754; cv=none; b=L1+s/X7MgUEV3gdSk5ldly/FvxF42Wa39jlXWQLmTqgH0QuWYgq6nIyBANI+2rjBtT1qmbGwyrFD4tkrnK12NrDVjQ5pzndFzFMfqrN1ARv8NstJ8yEwTuUsvOZ/KVR+2TxGEGnoAjYTnKL50TIwiugtOfzyvXrX6xMQM6VNdJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733288754; c=relaxed/simple;
	bh=P5d7OJZ/LoVDcH8u2rWlj5b0ZjuTtdaHxjAVzF1MBBw=;
	h=To:Subject:From:Message-Id:Date; b=skjGNYk5u7MR0O9rq7rgzvn1gHmwI6KjgT8iuHun7G6uxu2hVj9I5k8B3Ch8eN2Ub3It5LigKGKUVkwGp2clLFyVQOR6iHlA9S2c1pxAEFkJPbkD5SnZOJv/Uzj6YPhv4FWP/2s/ddh4N7IpGiGx3uBprKXieZLdaZy70VEmDkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqTP3Frf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqTP3Frf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C8DC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733288753;
	bh=P5d7OJZ/LoVDcH8u2rWlj5b0ZjuTtdaHxjAVzF1MBBw=;
	h=To:Subject:From:Date:From;
	b=PqTP3FrfHJZH7nY/eO8SlC/Dht+okupxeoZdJRygN9KyJRV0bBCWDLh6YVTwnTBDG
	 oph4W4ztaLIDRAuC+chZgiqZ3XjB/tkcMbj2JpnIhfYnBh3kb7DBwwslSkJx9mfk98
	 piz9zkIM4OE3wJgokCraqNgWydTg9nuMEoeSKkcG3pfOwbmZgFmTg3i8B9PdZJy6yy
	 wVDZvovmU6WDdlNdWlLN64s8/XzjrCrKpVGzGLCMyTb1W+cLO+A/FfdVvJVyIlbGEb
	 BBQgAAIHH7WLv2vz7+fKE9EBnSui9G3rflXUNZgTa5OsvZM1R5+2pIw4nwcTZ7UYc3
	 dDFDci9Njal5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B54E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328875359.9625.286807215544150001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036181aa07a597b6dace83690e54aaaaf41fcf2ac46e36766325a5ac2ab83a86
Date: Wed, 04 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733288753
