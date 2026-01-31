Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE1275AE3
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769853234; cv=none; b=R12+F8UhYtS2azpE85Rq2ZfOOZfKoWHPzamLQrREY/idFJuLIn813dMMJza0jfjnuf/dLDr+1p7a11unN6FplhFoYOlm7MxUYWFmIWzMlsusit0ElIAm4BtpbfX/XmLhQoeKibDIEqkhdfIsUAtd8JEsKK/AKAa+0YEWMRH5Q/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769853234; c=relaxed/simple;
	bh=pWNty9w8OJiD8CpwPrICVz8aPrp/oatV/W8czmHrQ4o=;
	h=To:Subject:From:Message-Id:Date; b=ez+OZYrlA8i4NcjmCRdO5EG1VXC5Yb5cpPOUonp2RmQ40Zko03FlltyCpd0J8HBpfY6b/tdd3XqCEH/FoTYfVg0UVvg3C3AgZgnIMut4zEPHdah5ukZHFhahDyT312SnOHFmCM/XvemuaCwZ9MnA2iapZjmx4pI9DFBPaEBbEtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEB6knoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEB6knoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769853233;
	bh=pWNty9w8OJiD8CpwPrICVz8aPrp/oatV/W8czmHrQ4o=;
	h=To:Subject:From:Date:From;
	b=PEB6knoKVXLtYDQouKP1kQV25rU+Y0yYuPaf+11RtnjlZ7cLzNenDiC6Pm1g6PV63
	 snxEGWVU3o4KW22fCkW3QEJMHQ6nQwq5vZgeDi5AhZmQNJxoPfkxMg/VyFfhqJlZXt
	 3obo3Cx5wRD1V9NuPzv7KZ19UMCCe8jnaE6veoGhhyX2rc+OmsvxUn0nsMERnlZydQ
	 dhNMmICYeoovKLbAdmqqdXh6W8gdbPf41/fhYzF3Dt7tTU8Cz3Ip7Lid/5iKJvyLE0
	 gBG4/OHzMDEZTd2/Pz4zFiklVBGQ2YHSHOt+/Bp0IN7Er1L8FezG+3Hy1NzZ7pQd8P
	 Jo1goGOFxJHKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E525D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985323357.12181.933267856708167816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5fd3a759b4076f4ff6c56186b702137859c45b47fc05c52cebb1fe617a33e9
Date: Sat, 31 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769853233
