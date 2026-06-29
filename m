Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396801531E8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782759514; cv=none; b=RMh/dhEE2dUZ5QuVa6uQXOUl77BRohyK6pk3FXACNFXoAZYf2j+g1bSLM+p6Rm6fndrvEIfKCkokBFL5+A/giPjPEO3wwyBTxL/2vPvO/sbwIrVQF1Pcr7d32eALG1lPtcrhecigEAgCV6Kz5U/dE2dFtA2ffuvQ8nZzUDQ4yhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782759514; c=relaxed/simple;
	bh=69bYMmTCYrzJ7MbuxRz1nejBTKBUtL7UE1X0zbI5+ig=;
	h=To:Subject:From:Message-Id:Date; b=lhVA7cpFs2mzDZuM0XTm2PK4Ie8o85oReAfSSjY1bBjAFopJk26cgX+M7jIRI0cGSHPn9xGMlUjh67ZRUrSJviNpn5v0Hvan1FaUtlZ1VtxKWzKsqofO40G2Y067ynOeQOK0WjDfi1fo/1THIErURz+F3zyk5Dfjj78511teSWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8NoLOk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8NoLOk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29FEC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782759513;
	bh=69bYMmTCYrzJ7MbuxRz1nejBTKBUtL7UE1X0zbI5+ig=;
	h=To:Subject:From:Date:From;
	b=l8NoLOk5jCOh6HP+Prd7ChCqNQU7+tBdDr8DKG226RLAgWnAUhx5k2lex5RT3yPeZ
	 DlogjPHtt1MfEO6IHiCoxk2wxnFq6yl9gOS3sl/9QyzRjK4st3GXr+AJdJMoMhM5w7
	 rztRHjapVRCl9ItiLn7ZRyr30e/P4bP/4MklW480UK9UpP5qC9TBUWMmffOfYZiiu9
	 zCbM1KNcqTO87Nf6vW2P0dIuzlGaa/MDzUB9PRXwJeJ6IzQfnR6hAZo+n1bOokEb6n
	 yYQJ1cXthLdziKLkyTOj4drZoKmrw/oL6L4SgRFu8l61eZoIV+eqhmdBU2tF9KqPI4
	 5nzHVlV2GMOPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275951368.31152.13636372342143163900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1455c19247c9bb7174ca44d41610cabb51ee956b8f885a8b4bf16eeb59ecbe8
Date: Mon, 29 Jun 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782759513
