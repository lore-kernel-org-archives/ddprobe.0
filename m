Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564B1624C5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760199594; cv=none; b=JlE5nO2uBeSgYc35fMXUnIa1M5uDrCaR3JyoH/5OktHQLw+mmZttr5YxJbBOXEhY3eX8qumuhbUiiytiRxx1BGmATu40XtB8ArTV4+LDfHE+tvkWa7qN5O8yu0STBOPZHU09LueEaVZWm5JldmtFb0CJf0ZcYD6B7FlHgqIVjf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760199594; c=relaxed/simple;
	bh=sSD5tYMSwNln/WsavvG+eBxuTPtESS2RM+D5a2/JZOg=;
	h=To:Subject:From:Message-Id:Date; b=keRRwORxCxkwWxqYVkMQnCBynKoFlDl4syarQ25Hecw5k+I6Wwtc9y/WeyGmMiboIOIBW4RGOd7xd8ecjYMoazmCSmAgSOnRuKu+c0dBrtaEqK/9MAW47vZGmYrSSsyWCtXKjQG89CC8uh/rMwIOpWGc622ZfCdgnmVZ53Xw7aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnmzAdOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnmzAdOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8859C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760199593;
	bh=sSD5tYMSwNln/WsavvG+eBxuTPtESS2RM+D5a2/JZOg=;
	h=To:Subject:From:Date:From;
	b=JnmzAdOfryVUf4Gi/NrAYDv8LoMYjvjRaI1Qh0z3Lrpv89/GdGBdudePKiMMJderE
	 pYIAbOO94OvcCK91Wh/D9O1ZcfTB+TMTbzGeuXypi3+47TdVnGTwI25+GCV9jVuuw9
	 oPNabccCmRCI87UPgWqjAiEnOvP3VQG5SOc/v/drOfdWIZy37NWK+cAWzWeldkVoE2
	 7ZAyPaOd9S7sESmXYmTa7ClZMAsn3+hWinXzPyy3/Do26Sw961xfmZmGm1Nhh6yR2p
	 odeKnsjqrSlhX95qsRvX0GABWzHBNyNyJagLPM5k6LMHUVQQnObONGRYn6ppntDm1w
	 7xv5y+X/LRctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95747CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019959358.32321.4186374954005138635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21f70a93f67d2fc58f6a204857fec9e66af0b1650e511aeaad875d3133e1bef
Date: Sat, 11 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760199593
