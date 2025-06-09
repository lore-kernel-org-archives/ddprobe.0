Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B97E9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749466794; cv=none; b=qOOkHcfGoHbP1GYV39a1cKlwpIGIzPJgIRth5ER4CK1SkW2MkfszxRtHp7nfTTr53R60tqQBgjoeO2fFi3hfE+5jezM/FrYd8DOafPbVfcWg2e1AfIFyBZaHY8ACZRK1tExGW687X0P23FZvgKhiaWsvkiVLn7ivt/Nzzqh+oSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749466794; c=relaxed/simple;
	bh=faScGqvPQL1eNpKreEjFViwrMZr16k/jq4PCpPqspgQ=;
	h=To:Subject:From:Message-Id:Date; b=YOHAMnUZVOHyH7pZn4If9Ei8NQOtOTNgKVtDS/vRI4wpAVVlUQuhqDW5vKJueK5GwGi+RcD9lLk8sTjWL1jGk/cNuyjOb1ZOleQalKCWj3TK6BaCONr0TJicG3w+qlP5eYyGdGgbpl4pXafZR/boklTDE/PjV+SsQkT8CC4Nino=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAYU2sUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAYU2sUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749466793;
	bh=faScGqvPQL1eNpKreEjFViwrMZr16k/jq4PCpPqspgQ=;
	h=To:Subject:From:Date:From;
	b=tAYU2sUEdZUBW8Pi9guF2qfqTfRPpXfpb7RBBkHqLobBqYr1ejlslqnNKpTCkptCR
	 jJ2/Rbpj3OQUeK95tVks0OS62bTlSDWcJibKhkcUYBapaHMR49VmIlu3zJbEUGFCCP
	 TSnzApafHgtNt3RTF0tKS5A7gA3EiJAVnB9W8JA9gbcPLmBknCk7Ik6dB918d1/DGl
	 YDGSf8zOXK3Q+ePH26XuFOC082yjvKRh9s+hwNLaS8WZnxFC6Gsn8CkwTiV+kuWmQV
	 9Vm8ppyJxmktSQCbcjtzQTkSQnhPoCa5+5y6vPLtwUr5yphI/L0alaSMlilz56OF2v
	 JrtEclXenpLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E879C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946679357.4275.15122550999681180948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6310b3722154ddcf0c83921983bbedd54f8599d0bcd6cd8d7b7c353bed0477
Date: Mon, 09 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749466793
