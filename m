Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BF7B67E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784507314; cv=none; b=TY3rDmlClaNh4bWeC7LJmNAtCEvtgtOUu9LebiWi+muqGzZwnI8CYqMvMKh4QXvqyWbwTHWu00+f07j8f2AN4xR1s7oo5mVD+PCITx50XStl+45aKNvxpX/mbnL2XdHaiKaxNellEl9ipSUDc3B8A2jL8YbK7a2hCuOGt8dRFJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784507314; c=relaxed/simple;
	bh=H2pAEh7zNQ37Td5y0sl8oZHERPKPen3FPyfAvqladso=;
	h=To:Subject:From:Message-Id:Date; b=I+gBpMy0jOUZ4KTiZUTy/XSBR3g4Kz4f8lLDpUBxYAcRLewKiReeE9d6YWJeQBW/VKYFWgs20OXSb8h1XnwCWpMgEc3lAG1LlgoBSVIw5eGY1ozEQWaC/UtouQH99QrVGngymKW3c48gvHu1EDhzRixvUa1NOg8mZMVTxqW72vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYP42VsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYP42VsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA0EC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784507313;
	bh=H2pAEh7zNQ37Td5y0sl8oZHERPKPen3FPyfAvqladso=;
	h=To:Subject:From:Date:From;
	b=dYP42VsAOMFxALElvOg4SlNsqToB8cW6B+1BDHSjO/Bi5qIKd1cGcYsUVbhxAOiyV
	 PGcJHFQbnQ9RY/w0jxDSJ2iIYexMDwyou9pnL6rA7+OU1OvSoyHtkkzVlkzyoi2poZ
	 zZD61LzhmU9JF0O5bMkLyRfNsJiNejHxHILTpyyTdLeZfxbFSrDQENdC6/RG3DSDK8
	 0n4bIu6EwzyC04lzVi0Ezkgy0CJefkPRJGR7bsNjz+Oqs67mVZyi0E1QLI+XEON9ZP
	 Oo6Y/Y5cZFHuekplc7MIDZOogNoAD/V6fKPT7rtCTiDBtJOLcgVoCvsXH6aVgiwEud
	 piHjAAHeV2SRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2394C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450731369.8450.4978345067270454987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b3948387ae7bccac48e5be99e86cef0b750ca71097f8806d7ebc9abf842175
Date: Mon, 20 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784507313
