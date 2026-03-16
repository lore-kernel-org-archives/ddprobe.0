Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB4E31E823
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773630894; cv=none; b=frdHEAZ41zfRmYciq1ng5XrSpkmE+1gUzLj2RZFSxutf+Dn/app5YiCh35XETs8HvUxx/Ns6yG3GetcuDTLvAuAUblSrFwwwtf/Ai5mfXwIGILgRZF9gqyKJfDUHtOkjGI7c3oR9mCYGNPDIdvawLx9rrvb06sIYWXjid+3Bk/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773630894; c=relaxed/simple;
	bh=YsUQz3E3mLqyQ5wjWER52RUI+YhlZ5h4mUgBSgGmiYo=;
	h=To:Subject:From:Message-Id:Date; b=CIdJw50cdyokBVl+B4A32bk6ihjRZoDgqtRiEQ7a5neQRHQray8PLzVTKvenK+CMHr3vED2jnRa0TgiJfJDFOvN6QXXbebKzSycCaAWNOeoFwxcqX39iMIEaS2VfRayGN3nQDkNhFa3X7Hgonaq60VmAMCTKZmTS3ejDIMIYYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxEpqVlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxEpqVlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A60C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773630893;
	bh=YsUQz3E3mLqyQ5wjWER52RUI+YhlZ5h4mUgBSgGmiYo=;
	h=To:Subject:From:Date:From;
	b=sxEpqVlxYESaLoJvSmRkB1Y1GUPG0evbvyaMchU7iIdY4/KXdHN4xrJC7Nc3kPeA6
	 0NBVGNsJ8+9R/0gaD8hP2sjEUKOdIeRkK6dgECQEi4twjRU+OS4ymsj/IPU+v3Bler
	 BykeCU3ZpTmopLiwohurzbNbUuS6FXmYsLQicq8FWGyM+I5J6g6Flw0j6RrCXspctZ
	 QUK2o+8JJynr6uv3/C8uoixUqTnVMQfyvN4qMbDGyJCepRjQ5eGPpciZ/Y8HYObj6y
	 CJWjMrxu4/11bMZiJRQ1P+L/6rEfD/GiwHquwkANeuQQOVj/vUydET/ZFoPA73IIAv
	 nIVlrfdaeEdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A76F30298
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363089358.27470.4642006964812772993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715a6a4079b1fdffd97e17c3d5178b189b72699142d2eee2462d3fd343433513
Date: Mon, 16 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773630893
