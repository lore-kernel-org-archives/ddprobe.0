Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDDB18C01D
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745797794; cv=none; b=ICFSv8CwcUfQGxyGQNgjEYrNZD+bSR4U2YT9b5OBTmb+6Nb1Q9/2VeUjspU2fvI8QLD7nyluUHCJdCue7U/E4zD3tIj4+TP+5PswlEt3+Mbozzs4OfxpCfMUva2RwU/xlU/BUoZ0MLu81pIDKDCVjorv0HFO+riXAwiGwK18YLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745797794; c=relaxed/simple;
	bh=ajL3yT4DG8hELpeh3dNbaHp3jhCf9DB2aefP46fvKO0=;
	h=To:Subject:From:Message-Id:Date; b=ZcNb5PNxlehIOmKzuc3010pGgc79XErg5vjvoDMR+1IqDmqvJT3qwBc4PiMkanSf/EXmj+rDyIyKXWrHf5eoC/8bngTfz4Cnx2FAD4W3iXrEXMkU5c9YKf+rUGVcuc1Aq5iXux08E6tDowRcnLHT9ne/zhjB1O/8PgG82Wezo6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsCcr+wN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsCcr+wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B38BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745797793;
	bh=ajL3yT4DG8hELpeh3dNbaHp3jhCf9DB2aefP46fvKO0=;
	h=To:Subject:From:Date:From;
	b=HsCcr+wNWP+6IwpiXTvc+Jx0g9gNtBbyI4SgQRRU+AAUWfV65KJD7p6jZ1C/jFC6x
	 po5POX/SZDrvnoeVVeLqYkBg1xhvm/ChjyN/6c6hcoVHlUxm5d5dDSYz+gcZwC91PR
	 Z/qYihGBPKvgn/6w2pFtie6Wpto7pQNqTI0ADHGkuI55n5Nqbnp2zxQ91LhJ14Zyrm
	 oe7zrd0ASP8rj239l349xQA8K+n+9qzAQB4iDS0HBiIZZRC1WgPTdLH2txevW0OOKe
	 ASrsjqdasn1JqxOJE08PetxqNpsh4zKraVMgCw2B4y/CbbMtEJki1ow1nybax8ejmp
	 K0eTwVr2CfMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA3C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579779357.30653.2526200965343238081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d25d276f9e54dc75d89b4c29b8bdace1eb9b3c7e884828cdd51325bab0567e4
Date: Sun, 27 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745797793
