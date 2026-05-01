Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B705474F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777608454; cv=none; b=Iq0Pvpu5ifawKRRf5Nz+MgBbOJKTFuLPGhMKhe4R74a24MG2ncwu4T5USMX2PIQx++umTw2WNqNak0faBbud6NtFtPhLqjtO06CssUhCbjs6gX120DRnsmn7HXoIF/zsgfzyOPPWHnjBZTc9x111l2iHKHPDZZauetj+p+O9OXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777608454; c=relaxed/simple;
	bh=viW30zKIzZdmQSaenKL6sa/eP/8wHPt2pA6WbeV5iWE=;
	h=To:Subject:From:Message-Id:Date; b=GUtB+6c5SMvWwiMHExNM1s736GOMR1tTswpQU5SOvNN+39jQLYDki5q0Ut/fr8XFyVRMNKJBNVxIJ2meuluDD8JXCRA5H+09Jkd6qpSkiQn2VtqhM4S2lykqSjQqrKgjtw33HzuX1tcpoZgq7upk7l+ELqkPQ+5NyqHXQxgK+nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ptn+LIDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ptn+LIDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBC6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777608453;
	bh=viW30zKIzZdmQSaenKL6sa/eP/8wHPt2pA6WbeV5iWE=;
	h=To:Subject:From:Date:From;
	b=Ptn+LIDh2t5Bq7R1iP+YUCCz7w5yC+yaQ387mvC210xZHDRq77dEFG2v5Jg8v2god
	 LhhkBmVfafyKSOLOTyV9N1KfgA6WSQbcFc8y8UtgtJuQBSkDA0AIufMp30AjV1uAYt
	 E/rK2Uis78il3/leRVHbtDscd8uNVghpkAq/bXvXNGJYo7cUpemopoL/SKiDGO1+is
	 Z7H/X6/8qbtwoX9NQ30vNYMzMmm2CxJOA7QbOzqDMY9Mwaa9XGMGKIp0qpwgC+BgOp
	 3aTCWitkrHQFVRe8ND+9UpYS6rUPn2YQKg0JkgI9pIoPDcY+b3ks9zV9z/highF3br
	 3vJGkKrjtvddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC82FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760845368.1670.6501530519942717434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd44b1d51e7843ba78cae9a6e7b3cca8770cd2e0f9a94f5fa82d977ca0f8b1a
Date: Fri, 01 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777608453
