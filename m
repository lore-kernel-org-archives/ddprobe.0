Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2B327FB18
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755005394; cv=none; b=Gy0+ZlAkrZUVGIa+e4kh1HVsfN6j6FUaVcRIt2JxVzaOf5nxfQEWd2m6GugXy433NK/ru+xypOFzoGm47BAQHJg8SZWDco3jFOSeuRfFVnc+HARXZ8UYBSBDpgRRCay1GEL82IxzssrUTT3v7fdRwXkyq2UMGvB4u5SZmjrQxPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755005394; c=relaxed/simple;
	bh=eRSOh+gI+ClrxNTbBvjC0/eVKs8FVUgoK5e44ObyiRE=;
	h=To:Subject:From:Message-Id:Date; b=PqxJcNSAAoH0mRTCENSctTvZVeaDB/P3vkKg5EfYqiendHKCDktjsHbrMn0c+geUQGCQ0e1QWY5vbMdO2dOe4shul7BGUZm0t2ftUtsMBKGfo++PdlrfTGxn9bOIQYaofPhfPtuuJHOzKC5tfdi1rWz9CR79t8n4pr0V3ySpgqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN13mNTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN13mNTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5573C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755005393;
	bh=eRSOh+gI+ClrxNTbBvjC0/eVKs8FVUgoK5e44ObyiRE=;
	h=To:Subject:From:Date:From;
	b=nN13mNTKJo1eJAk7/RSEEaBBd078J8aCb7AdW0VqpTk9a5XiBBqUAytE66JOPb7Um
	 AOzLvsDwr7xIr5VqkqunpfvsqDSdI5AR7Q8tCf6uGdDPCK/OAQgYXpr/JXwbLA31jk
	 u4VBF/6ZxFYOpf8V/uwLMjlEUy7unw5wZxWdbzx6zswOSpKpFImIooR8sTQ+dka4ru
	 2zXvght0tlvW0L6mQ/5eGusS+WKlVGypZwpWJGXwk65p1cy25lJBd7cP6s9NqdEq+0
	 yVC1vHCe7cRj0ZLyz5/5hdjdyOs7cAYO1VnLv+zMzkWrAv6T7m/8OhfPoZcznuwQE3
	 Geu4OmqDQ0MBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BEC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500539358.5289.7769772731518420618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d284c2db9dcb1c6e25ccfa011529b49db43afc032c45aaf6919a86cedb1a99a4
Date: Tue, 12 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755005393
