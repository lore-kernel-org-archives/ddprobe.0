Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F1547253B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785937834; cv=none; b=e5syo1gUlQ9hravpuIIgQ2FROFDvXS4BT76ZQ+gL4VMbKSS4Iu3Nx+eYrSZesNCPtaLWMV7pL2Q8cK/+J0phaZbZCU2QTfMpRnZv13plb4GKywPRWQ1ObQM0GOplHaDKs7nOSjyPUxlksVSagnGhX/x6FuAsqGyoVTrEv7aDNpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785937834; c=relaxed/simple;
	bh=42Y63HDIFo4bFme1gBM4Xzi30oWdIJsV/5D5XgO7Jh4=;
	h=To:Subject:From:Message-Id:Date; b=WajL1vI/CAml9L7Aku6uG9DnY6WoIebkXtXYUGp31QVKPdSpuMyctf7vncH+c2yxL2LcyQfR/lxfdauKY+c8MkhCy+5mi43y7CKFN/Ul9gvLvOFVhrjQDphyactjICdMjNrgeBWiIRlB1d8MzHIDgd177pGo464YZgkC77OjYRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDgHjNoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDgHjNoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C9EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785937833;
	bh=42Y63HDIFo4bFme1gBM4Xzi30oWdIJsV/5D5XgO7Jh4=;
	h=To:Subject:From:Date:From;
	b=lDgHjNoC1rdrwe2K5erZ2x5k6Noq8A9QMoohJAgiJWQozERIxFfv30l4y7n6/EZp3
	 x+V/MhYQSCuCVvwj08KkOr6fEs9uIl4zbgzQfAbJXLB/Hb3ZaUuJ3rbYBbfgswP7TG
	 Xqd/HgCGZBZOhhmK26lK5Bt98zDAJ5yU75FVKYgFVoqc03XseP0Ti1DqRTnEd3iciL
	 e2eDEX1p2hj1yjQeyZWquiNivH5JQBS/EutRuwTtDZNV53tcb0UjKOaHb9qgAieQL7
	 Emmn3/Xag8rBPzF69GyBZwR6jukFXX8BILtY+RIm6kmXl/r6mvmYl5bNaRm9EQQwfC
	 9iBW9l/XHc2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC45C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593783371.3869.14128409184128842802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838b17bbe552530d3708f086288d5ebca169c23cecc4561a97d90c020054d351
Date: Wed, 05 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785937833
