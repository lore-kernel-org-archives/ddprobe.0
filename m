Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F187412837D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706639297; cv=none; b=eg3+T3NNA+C36h90TjVj12ft4Y5YEskFUaxMa0+EqktMS1WVilaZEdzmATQhDpMwy5wjvSKwmt5vohLEDEhmDcNFQeMJGfMRIrtuiIsj7vo4KhMqLH29/LC3n3nAbGOu6pHC6JVuSt99TvhdGjodnAyZjchzwzWCjkGOIodXMnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706639297; c=relaxed/simple;
	bh=ra3jRg0XnEKmP2ZMBlAXwh0mfATp6Fm9dO9h1ORbcXQ=;
	h=To:Subject:From:Message-Id:Date; b=emiebhfvDKWW9IuC4yUCQms2rbBEVBNaku4WJVWkY/xnYRZmtgg809zC5fgownbmmBtXLjqPxtFj3r0wJ9WosimjGtPzGLcG5KytBlLNuwT4CZZc4TXUIOgkJXQsTkeTnMi6sTunS1o6Y/qjKkNNzxrHoRQBl7qY417rxv6Nqv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ib/dPsd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib/dPsd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0ACC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706639296;
	bh=ra3jRg0XnEKmP2ZMBlAXwh0mfATp6Fm9dO9h1ORbcXQ=;
	h=To:Subject:From:Date:From;
	b=Ib/dPsd1P2lb9DuDo3jD2e6HLTG8ZTphw24Q3Jil8OFCqfpAjF9obHTH/NEu57iJJ
	 UWA2YNN3Gh9RIrKY/Y0043ofr6xyTK8blcwLf1DSrv3jG5sfEFHGv3Nw/8dzefvMAL
	 52oSveqprbMB/jm7yYdIJAYpk2sKm8sGBg9VyWj+auU0NkDuHq4xz7Uza5c17renfP
	 9RitK1ffeK/NW5blyKt+xPx7Ahie/JUCSdo7sCEil9XUEzbm54D2QUagc0bDFW4Fzv
	 9DCmApoFXqiklbPG8ByRUNTxatTXe0lvsw6hbAJSDU4ao2X8QWhhHx0LLR6Ul83HFY
	 mFkYVbUAPjyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75217C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663929644.4904.16054151303288430017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2fc1d392b3a515ac571f18cdda018bf4a8a89c3d2d78ee2af7dfdec79fbc3d
Date: Tue, 30 Jan 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706639296
