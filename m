Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188371E47CC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763596314; cv=none; b=PisBlf0YGmGMIHrCqZH00D5ljKJ0GvvTr0LvJO7lHXM50ZcRCrnAhEz9WE247WkUsYh5Kg4QaYuXGS/fFUhACvyRFPnnnqFSEUyh8uxgqdQZ68F7wtqdVGltdvpBadbElJ5gB/Gm2zQ5kyYAjFNXK+MvEARkBVZPRlbHHeroXlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763596314; c=relaxed/simple;
	bh=L2oTZXxFgPl8EC35aYMiQp1vLJueB0ivOY6rKS7iQA8=;
	h=To:Subject:From:Message-Id:Date; b=MOpkqcTsOIhkLz+1K5Mk3q5NiZu4KSONjeo0TQzZQK95Dp/xwi3tTKidP3kmZC8+7g2AkxpKVAL7l5qYXHWUR+4+RBgTH9ujmP1JzPYOYBa03um/S7+61ul3ZQhd13J45UkwAREPInt++uAs4GwdAgEDYupug3LKtzUTCKGvaLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4Vm01eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4Vm01eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A543AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763596313;
	bh=L2oTZXxFgPl8EC35aYMiQp1vLJueB0ivOY6rKS7iQA8=;
	h=To:Subject:From:Date:From;
	b=T4Vm01ePgxEKM50ZM6upQOxlPKY5fR1kf3a5mGygfyqfX04q9sRsj9J0SYkApDIGY
	 oNfbwDpcVtYCrxdMO/eeQeJcIYCoZMIOaKh/AdaOmgS1z92RbgfhmBahrs44TL2jzd
	 iYwqqCi8V2hAFFz7wEHB3sQ0ashCmYE6d2PLSPFLXzTqA8IPgAGF13pl4DGnr5mE47
	 mI0Vj1qXE3F/2SfQ9y+5QIu2AbitbOQ4W6UyErTKpOMmeMIyhTahmT9qhhzwNvbkOa
	 Vta9rG4xaxZuyENKe5rOnBeePzJx/4+vl3To8WRvq4Iq6IrtRmy2sYQCUeHDOqaUL9
	 7sZx1NSTNzuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178ACF6495
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359631358.24660.9265023095426936704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b904500de134b9eb669d5c764d73282c3173067172751968da4e42c7b9b5fa0
Date: Wed, 19 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763596313
