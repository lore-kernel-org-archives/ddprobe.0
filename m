Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7E285058
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768166634; cv=none; b=lyeGGGfhcwphvM++2/kVab9Z5eEJLdko27I1K28pgnOXLSCSU40nD4uuTarNltC9b/IzSlNb3b0BqWLOh1rAGHlZV2QmB8LhhRHj90H7APMdncs7PDVBgpZ58LPkhFPBg5W3aFQzMHtyswlev+B4v8PF8R36BLzbULWs7Umht9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768166634; c=relaxed/simple;
	bh=MV/0pSbo5KdyMwuXO9QjYuVf3vYSy0xbzRrEV3maS34=;
	h=To:Subject:From:Message-Id:Date; b=GHEIh/yBw7WMv53WNvlz6yf105HAhqbjTDT0tHRuTE0Jl7eKdIyYuOx3MTjHoen7kVzqD7y7yEHdmJqa4H1Adfy1DHPzhz7LVKPLN8WVhISlQney/IgHIffTjDIOh6TOw1mXE6htAUe7x9v/f2J7TfyFiCq+7XMk5v0KGLLbAJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JytqCqDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JytqCqDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA453C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768166633;
	bh=MV/0pSbo5KdyMwuXO9QjYuVf3vYSy0xbzRrEV3maS34=;
	h=To:Subject:From:Date:From;
	b=JytqCqDO+oOgFStRpGcC+6NrxhhTQEaK2kAmkMpFSRYq1Mc+xJUKVB48PZAsHGnZ+
	 uxyIPFVxLoODKZCrutwsxRRyJtvWhTZDtuT9TlrsTmfmtHvz5BWJwDLMF6bDaQ54nS
	 K+0cpIYke1hIXmOuauNSfWNrWaX9kXzbmHX5SghA4eX042gYdNmzgr/QJE1clXbL0P
	 cwOxHc612TfncIRVPtgfEooUJmry2t0YpwDrNk61XI4diUYvmqfHGPT5zwdagJubDZ
	 kyICSSr/qbsFHjvPVKcGY9rKlRbnPwvlG6XPP9XJF+/MkcAM5idAuDJyFYnmEn8Jgx
	 h8lpsfAFyQ4TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97794D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816663358.25580.4140629455409788536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51563092e987b9ff0d87eda70340cfed6b7a015f9657d7608a8c5457a835adb
Date: Sun, 11 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768166633
