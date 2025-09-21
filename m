Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED72AD14
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758491394; cv=none; b=CxaDeardgNF1P/wBL8Yt0AVupu093xdmH/2JLvpMxtHJIcRhv8pTwdk1NZt84UDYtf4oR/bqNn8ps9gvHT5xrliCjwiiYZccvmQtxSDVLNCokmfwwVKXbuTm3nQ3pukngePAAKv3B+3dzFbD6wNLEWn4H2ewYnrNm30xUZ+J1I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758491394; c=relaxed/simple;
	bh=EdtVvnUSkqyrPcwAfkgWDX9ksHyVeKIHvnU8/nh/iMI=;
	h=To:Subject:From:Message-Id:Date; b=AAXtYOAttibkP7JqyIDCG36BpMDZcIwoM5sD4uZZUiy9jLwxBpvufXYByX3ZOcnNjfoUqhd6j5QFFg+CYl21Ny52SzqnU7F6lOuXV9qRpi5CTyntOfzsnUeD2/LrXcIxU2H0UiZK/mGCV6pka3RLbm4JziyZDObz8RxMAMa050o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf8fqc6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf8fqc6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758491393;
	bh=EdtVvnUSkqyrPcwAfkgWDX9ksHyVeKIHvnU8/nh/iMI=;
	h=To:Subject:From:Date:From;
	b=nf8fqc6RWl9G7A3UbjtLZbPewtIFu98DME5gt6LmL/ZSf6QrOToobYkhF4+Y3skS+
	 bdaQUrQG8y1VlI1LuakdHD+6+xgcSZE2hjfTB6aqIglsXqpKIjWiZ+xIC1aS/2U2nS
	 sOHmxvdHW2Rnl/ANTMipfjj4PGF3HUIf/ufIvuPtrBu6Lfh1PQXHQUrHraAMBdpQSD
	 puUQ3GApK6EY5YwM62x/oX+vCfXwp2jF1G6hq9el1CeO+BIzK/m4t67DRXvQ+ht9lI
	 Ryy/XDrldMNsII0edG8BIjOr4PLG0bwflYgTqkwErTWUkbIDoAjDrP8JhJtuGE2hfr
	 vSlh2/kbLKInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849139359.30443.9884613539446170111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10f18017a99ff3cd8f16a7fa9c941321ff88b6ce95c4ecfb47fbc7c5c70679c
Date: Sun, 21 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758491393
