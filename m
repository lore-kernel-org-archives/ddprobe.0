Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0572EBB9D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792594; cv=none; b=P0XrXYaZ8QVQ28j2ZPmSJd1IwW8Ohb+xvi7tB6r6WXkdxY2M/BhRtaIIaX51ybi2q5ihtjmhWKgzhuOpXn50cBrwvPfvcxryTVqPWT1a0UtrIkz5IS7V35vBGNnMHpAbOU/a0ge1KTjrUQFcueQfwrYJwP1lvtT+61QGdqo6rYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792594; c=relaxed/simple;
	bh=PMFWGXz/931sd1EdF/Cy04OAoCBPYLM2LZ6iZ5om9YQ=;
	h=To:Subject:From:Message-Id:Date; b=nsYt2O8XUZr5LNb+vy/hvepVazGbjz+aINYo8/zmqjm6vTzRQlkC9MWw3VDfdFte8eTcuivY6MDZ/JpU5C24rlBBkYEYF3yJyVb0K9ZCqU148Hrowbkc+Y4dP4vai9qEcdAkKvdBWsKnYqksF4qFZ4f+vvSmg6ImqS542Qemg28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZ9kLGGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ9kLGGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB415C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758792593;
	bh=PMFWGXz/931sd1EdF/Cy04OAoCBPYLM2LZ6iZ5om9YQ=;
	h=To:Subject:From:Date:From;
	b=pZ9kLGGYZR4miyhWOT0dstjfL0UxpYrsQrzxNI3hJHMG/RK2+s/PTftggEievPCPY
	 6BI1zAcrPGbYZmxgdg3+S8YCjnkeJfcaWqvr+arufSRJ9v6WdQr/ypfIhl5saAS8On
	 10JzGEFCxsY43TcVP8U05JIw23IKQZmxDZJ+/LCxZCzY78trR46XSa+jhXeAnzDOxw
	 n/fZ6OidQLL3z7kkEL3Db8pkxiDbLuAnqH2PNuAktxRm0ZkYI4TOTkTBbuFnbRQoIz
	 Xj29A74XEegUzbjPzNpIfEjJqlbHT4pFSIQovcHwB9fZGWZYICysyJ09KXyozwzOzM
	 8GtPoAcNi7drA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D18CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879259361.27751.16840218686186034084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d8dc826e2ffd64b98ed97c06d4e2ce0719dead69ed994a20180cc0931e40b4
Date: Thu, 25 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758792593
