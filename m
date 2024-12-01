Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2045379FD
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733020554; cv=none; b=utAF2XagRXCQ/5QQwnJaHobc2K9gaVZKFepeNxBeSnOhz7+vKHTUMcYif8q9//Usgl0F2ryYK3xhQO6AgvOk5UELn7LLHjrC3CglJzd+sKVrLUzScT5w2jKU1XqiZptS4O1A39w8BbNhmfjDiT++WMkdBSZkGC+uE5LuBlZpHWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733020554; c=relaxed/simple;
	bh=Rtfzrj30QzyXpwzIPOGEGolQkGletkGKk3slzw9yJxU=;
	h=To:Subject:From:Message-Id:Date; b=C9LdAIcV2bz3Z4FejC5Kxo5Uad4dcmFbD8KGNjaGgztRL9kDTudb0nlG9xbj0xmXQrRM1NmkPfCus8GtvLNTxYgxmqd0yhlNxtLJPSC1cAYrC7+6pvLGUwOPiblWg3bCmIH8Wm6MADAU+Rx+Cvn5p5+mCrg8I/pjH7PgZQiMRxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUOdXC5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUOdXC5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD200C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733020553;
	bh=Rtfzrj30QzyXpwzIPOGEGolQkGletkGKk3slzw9yJxU=;
	h=To:Subject:From:Date:From;
	b=CUOdXC5Dl4Kl53c4H8+oLUCwcqtasxpWVc5paJDiL3ctespv8mMymLHLoqoVeLXu5
	 hgBRO9jO0iy5vR5X8A4FHCnKvrFn1oiNyYKcelLIwDwoMWT8Ur/hkNPgdQLpmP8cRE
	 dZdj98pk1TStiHyvTfotPdjSakoTODir4AkTrae9kw6I3KayS82TMwGS9tnHsD14h3
	 B5QvIWYwjgAvrOpVG66//yqR728BA96jSG3dyh7lC0BaPbaJfELhzkfZka8Jj9nbKU
	 m/P4gbNRzk7nxwO4MLq6pUjSl1sWOeTp5xGMQ2cNKjzhBkho7nPjJqNUEMALTHm6QR
	 Gy/CAbmgYv3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B345D7361D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302055359.15798.3098410337688643334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d23e7becb810075e07ed442dd1f82b3a8074e3eb2a408ce9324468b9809ac3
Date: Sun, 01 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733020553
