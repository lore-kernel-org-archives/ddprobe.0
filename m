Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2713F287515
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757918394; cv=none; b=PGziFoyThd64HQaFeH29nDg+jjXw9u+nHcQF/C5npR6gF5x9TlRsKe53elOTbPiwbY6bKLdPlReIM/90mG7Tja/O3O8lihVzaTQ7xoLyf5f6W3b76bWbG3+cTaVdqevvbh3+VKoRxcEa0Ev5H9G0TaWzsC4JfDa+DhHBYDF5Xew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757918394; c=relaxed/simple;
	bh=ckt3lfpUMCNK1jrFIM9zSLJMqgcxUMF88hxBGaGbWVw=;
	h=To:Subject:From:Message-Id:Date; b=bh1Sw0Oj+040CenySjphgpPvNTEr+5b0f+Nim8zNEj3Fuuhz4MKJISkG78YL7NbMeuKj0U2jWeoKFHx7vzVPaEVwij3tvehsWUZmJ4J37bdOcSmPY5hekPIULv01HrZS2P3P3RLwLmeqf1+PhnbyOTmfYzkJLuRFtYTXNJDwgwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQV5WrkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQV5WrkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2AC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757918393;
	bh=ckt3lfpUMCNK1jrFIM9zSLJMqgcxUMF88hxBGaGbWVw=;
	h=To:Subject:From:Date:From;
	b=MQV5WrkOp4RV3Dp8zd1zW7T6pA9J+17YBiqxms1TBmYg2faj69vwrvtPpUfLb48Gb
	 Hk3tHvhSWziPGnwvnptlqEogQBQmi8tm+GwJudU7kqC+TYZ+AX1EvY7SAlKrgb6C65
	 zHyAR8DrvW/5E/sXRIy1Ey5YWuouKqNatpy6GoMYg505lmNN4jliMddaIKoUghZwqd
	 0b+AxT/78BxSP7ODGX9ujW+gs+8IaDu7KNFHFwPD0hmmMXHiUUNNdw2PqrOHJjTIN8
	 8YKXJApupOD8ecHvl43Y7gP1SzSnr2LuXv53FxKBEwI2pmz4dG/QR6dIxdBDjkI0OT
	 YEtbZL0pD0Nfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058CCAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791839358.13829.10018552591152789109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02ff21c6d307f101ce0f395be943c542c5e1d085f6f90e5319c0e00b9f3a0f8
Date: Mon, 15 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757918393
