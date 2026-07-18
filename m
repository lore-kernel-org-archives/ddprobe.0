Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6205A19AD5C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784341114; cv=none; b=AlEH/dBHQtj83N7rU7R8XXQGi2ChtjZxrPs44FRsCllzr4XFExnPSG8tbcZvCihduT9VljwnjcO9cixVH9eWlOKOu3XD0UQjLsJh6O0uiMjQc+3U9zHeDiY1SxRUQDuZf81+4v360zcTtYbKnP++6zwMFI130hs/wzfjiCihOY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784341114; c=relaxed/simple;
	bh=YyamV3s6R0rb7TxSkzZU3gP7lOHchicfGUURed+Wcz0=;
	h=To:Subject:From:Message-Id:Date; b=lEW8pBnwTyr8sxqHklnaHqwsYDiOcBJaF7BBL36roAaIUxPy8fU+N1Kti8tWKOLMbDyFJGUk82ZbjdjQE8h+MbNY7j1VaACTIAVEIP65n5R9XUWGN1GLqZN8LMHR0fjrnIcP2OiprTQBIuyyxyjfGMJTEyjb1UF2HpRVLIgSBkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE1t81Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE1t81Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0790C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784341113;
	bh=YyamV3s6R0rb7TxSkzZU3gP7lOHchicfGUURed+Wcz0=;
	h=To:Subject:From:Date:From;
	b=JE1t81Kg4gBjLcXeVfybBk8EHqXFvWpak8IjTXsbziGA3ozR03Q07yerXzMPXk24Y
	 01HzUzofLcYxsn0cKQGCEDVU/zKO04uB6ssRSE1fDbUAztS2W2v4rs4pywt9I1WQaw
	 shFgqKzi8Tpqbxn/ybEBsMmY0BRTp+nK5NYuNHSJDtZDbZsrmViExyyLIazeKAxzrY
	 I6Yx4h3GDNZJoWIDAuv0iJD5ucR9uYuwH96iz5jP1UBo2v38oxe5RPTF3NxSZEeU9r
	 ou6Wg4iF7RhMlqy6uuHu09Od/aokpRCNnOkS7/A9rQxPcgiRPSp/u52hrb46GHC8yP
	 dXtLrw5JKfheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD576C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434111370.24354.12333452285948438300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5348dd0f216d6ecbd9f20683b137084aceaa4c730fd51a77d2d7785ab5dbba5
Date: Sat, 18 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784341113
