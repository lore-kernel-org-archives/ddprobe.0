Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5699D13A86A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720888823; cv=none; b=rvnegOTT9dw1qryf/X0YBV7Rq66UhKM7xK2jEK461P8FFyzQuFMunBoes5ptH59qGb0zEnIooDTyKApGUaixbmcWPAYbfy6gn0tNgEIDYzFh8Rc2QD4iC6IspAYlDqbHtvsll+CKaXarJYhhHOwg2I6TVBnS9EdBdvuQY93o7ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720888823; c=relaxed/simple;
	bh=DkNO9aQvFyNfN3O/TmXhXc4jTMakpyikV0A8OnP++L4=;
	h=To:Subject:From:Message-Id:Date; b=EiJiXVUJMNDAsjvQu99QCMcFGRfydzK5NMReDVrV1UJ3nGNMO427NrNdl9F3s8BJZWfi7BIkQQRh3EjKGe7Pane6gSWzqLZrKJeeFCLxrcgdDf2hJGgKQ4F8PZ3euhRVtP6qAPdFvI3Ct9J+jmnfJs31PfOfeqPwbc5nD9YM0IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuYm36Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuYm36Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D144AC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720888822;
	bh=DkNO9aQvFyNfN3O/TmXhXc4jTMakpyikV0A8OnP++L4=;
	h=To:Subject:From:Date:From;
	b=NuYm36ViLryMk86bDhG33aIkOUI69/6SjE69GiZYBQdlnHZZjylGUnV8+Wrb0SOBQ
	 Xx+c6oiBxPLNEfpV1L4uGCH4PNqb5g5IvHop5C71V4CPMLJIdx99pHoN3w3GBuholW
	 ScQtL2UW3+KGT2oDFlB4OSJaRGByF7lpBJxQKDb3zB0O8139+SphHQQ5YTkjKcuVaM
	 sksX5GBx3c3MYvSz0uiXL//+NrhKnZzQUnrkmA4sAz8UnTxgua6ZakXOicIdeVyKjh
	 ORzBVQ7Wr+gu2JBbtMdrtP6CKjMVU/G34h3o5ZurgVm4UxLBgghc80ynXmTW/+LITU
	 MhYMXLTXK9mhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC614C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088882276.30344.10438117129296423352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a47c8de3599bd095fbefdfe0af8271bb724bb56032cf2c068e3497d04a52266
Date: Sat, 13 Jul 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720888822
