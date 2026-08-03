Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BB332B12A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785740434; cv=none; b=sJdypDHtAvpvLP+TTyhEJ/9HuqTTzPuSe0i8GTLD+Q97WjpYD/xDLdjjniz8FIxC5/uh5XuXVFLoNTxyTzydNvAv80f0zfOzBoHKBXTbW9WO1yogIuo4O+0/y0Ng54Sh6xUECTkB8P4lPOpKa/a3VbJUnulp/9XZyqSl5Qd5aFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785740434; c=relaxed/simple;
	bh=BRShqrKjprRUd7kqgWJTWX1TwcD/0jjT8fFORTfqhDY=;
	h=To:Subject:From:Message-Id:Date; b=uYIUZphyVTG31Gh3Vxln+1yJ1P1qnbWy+wToowlYHdZU0IVHES8kJl4xVze+53OxTUfoGWOaGXEjZwCNJIOtNy8ZWL6yn6ChCSXz3Mdsk/N4z4ptDpfaoe63sq0fzIkowfafPJwTGp8K94Wsdrp9F+UCfo2W+gPeC1yvCSumoTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEpEwynY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEpEwynY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F24F1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785740434;
	bh=BRShqrKjprRUd7kqgWJTWX1TwcD/0jjT8fFORTfqhDY=;
	h=To:Subject:From:Date:From;
	b=aEpEwynYE6wcbghQFVsAbJutvjGZGhzuSv2hSG6kj6zTotYjjPDKxFoHonjZWsGKi
	 p8SFMXas0r8N9cFJsFlAozSMj/csSlJmEbo2EF9A2AR+v4af6KGTn6t9GiOTiLVmH2
	 IlE1mmYFk8Ge+6NV3vufttbXmDBl+gtX57dnZSh2GEgqZr855o4ldJcCjMaZDBlXJe
	 bW38yyJ3H60RO4aQ7MUhCzj4rD6RFtP70VIAvY6/Rb16GA6OlsGd8+KcTuD8BhADZF
	 4oPZB9dRWisr8uMUdUinoWfjRp19j2CfjfvcIWpE4QOM4C8wQnlmeAAjA2ZOMiRmyQ
	 9xOplil7MAmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B3C55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574043378.29785.15075859875935150706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6636298b84a73e807b88470d99be310af4aed40a7f0d5ac296e1c067e816f8
Date: Mon, 03 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785740433
