Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339EC354AF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761014994; cv=none; b=ka1Ger04KlKBjB5SP/XjqexZZ1VHwJZjusLFu8Ck4Z9ohFFRzGN0hnQvy1QqOBqyOiLE9GFzxMyo4x2EG4HoFC1olAhfi0L3tfpqbpE77vH9Ul7cYgD5knXeZB0319CnIiRX4EOxA27x9aaWeRoONZLaJIU/yOKlzHpV41GyjaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761014994; c=relaxed/simple;
	bh=6Nf5Lf27Hy+96rfel3Ww53jCUNRZPmXmz3P808XyIVY=;
	h=To:Subject:From:Message-Id:Date; b=XppgKbKpE+MJuv3ahSzt/RLZNODB0fOCMKiwViLUjPibDNadcUIl2eAyCQ47RpaSEZX+OCQhzzkfHeqxz/lXl5kytmg2qT4de1u05dbM31qritmumO+/HWacvcqY8kuMgc/JH22wMpCvojWI2xI2KwIZpboGY7qNqNZ4DMPRkho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv84gmk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv84gmk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761014993;
	bh=6Nf5Lf27Hy+96rfel3Ww53jCUNRZPmXmz3P808XyIVY=;
	h=To:Subject:From:Date:From;
	b=Vv84gmk52z+okLuvgwXtAvQq4qqvH2b+b8xQnLCrz3Smw/penCJEMC9eygyF6AtWC
	 aFcdPfMfFKTNP9qr13pAGHoHERFBu/mBsmEpCGuseDkaGqVqUfFrm3yNtdDSTg2nBC
	 KSNrGIhYlmwogmbhSQR5XhHiTq5mGYhQ2qqI9++CEgNnhOp9Bk7L7kUOYWG3J9oH5N
	 of6iVg5qVFXVIUcHpHrPR5j1vcyY/seor6MiiQ7jg2sIFvOv2v/8BNNLN3DL5THxwg
	 GO1nlr9bdMYT4O9zC2e2YBw2mLb2X4HqPgmLTrCuKuanzr3meDn7AmxEgLe3elHrvJ
	 D/XNDyTPgOjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF8CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101499358.19424.14640372460867688246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264da848812e84beb5f0e904ca4fadf7ecbc54f6474562d3166728d122119fe7
Date: Tue, 21 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761014993
