Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A11339A4
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017634; cv=none; b=MLfDjC7qTXlTGwOZe+U6bjGc4hYxcFoXM0QOtbJczDb4f+/z2wil86EImbSq0h07TngwB85pmTJdm76gcyzOERL5Xm6411Xdjb4pFdeSNJx61TguDGJKuBBaLpEo/z4x9n6TxnNrULTA7yfUrX7fnYeh3AAO9G/jFuZCG32qZfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017634; c=relaxed/simple;
	bh=KorD/4vBXjTtwWuRjqXRUFBaN3oJUmw/R7buYvdylYw=;
	h=To:Subject:From:Message-Id:Date; b=SCWVlbsvLdjqagfroH1kXKoAoP9rpjEJ5m5wMId0roDuPezuae+Deni50mtywkcJO3IhQPujLvz7Ypo89bqiYEDfjOrx2dKUTxoS8wONdXCimQaZ4PeUTXnkINBmoe+T5AtIn5pARxsPTdanBRdXhfeG9DN7BBGZFh6YgcdPaTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwgeATxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwgeATxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C2C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770017633;
	bh=KorD/4vBXjTtwWuRjqXRUFBaN3oJUmw/R7buYvdylYw=;
	h=To:Subject:From:Date:From;
	b=rwgeATxtN+tcPuibNvgFaeyKMvBgcZup54UPwVVRYFdp1vCVN+D2dn5u747d4BsxA
	 03/BufDoDgrgNMcT1UIXoC1sOkCXsX0YgvbggX88a7PJkpES9v1NLJZimCZCs69jJb
	 R/Ti+bHM+JxdJHf64igC1k28OATOR1i94mBzSOrQLFSZi2P80OCgDtIGEcGhzUhNEe
	 XdskAn6Hd5WFUgu2FQiSZ8DdImnsSYNTIZ7DDBKox5VksexgUlZcaB4rsB5dBPLpnT
	 eXCkY/DPI0mMDVfyEZ5yNXjAET0DKxKQazw48/R8KbsD6pTQOpeRkE+2pOQ9JZGS3X
	 GXKGACZmRqjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E82D172B0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001763361.9440.15688703153327320508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9174dae66846b66223f5416cd99b71fe296fbb3b258a78d99b4a0179f7af1187
Date: Mon, 02 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770017633
