Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1BA3B1B3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775263534; cv=none; b=lTdxydYP/hdTYzSuQEzKQcX+0HO0OnNak08utj64rzKytyNezDHt2NuUrxfwEQYHs/eoLUaxD0cQzkBKf49gJ6EIiZxs2mxu5bN2SiTY3nZ89EtDQTQI1bSINkWmVXHJeHwUaGCpwGXJLtv/Tt0RA8b8knHbxiAlNyTlwWOW+94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775263534; c=relaxed/simple;
	bh=Serf/SsqHMF764RUdl83eryunBVA03nAjbPLxi0xhoU=;
	h=To:Subject:From:Message-Id:Date; b=EJ6M/5FircBalaHwKL1kZuQBUWoOB6Jfpo7HBznUmKz6vmEQeUyp8q/D2KvQtNDmXYW++uqmj09dPMzsOGkiugjzHi0ClG7LoPCy4IJZirj2uCZL+vO87fJgjnyZ+DcfrT4m0mVfVXoqmVGtmKsioKooBVu+3SXqO9eyMiMZpjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbckR4Ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbckR4Ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48D6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775263533;
	bh=Serf/SsqHMF764RUdl83eryunBVA03nAjbPLxi0xhoU=;
	h=To:Subject:From:Date:From;
	b=tbckR4MlKy7JBFJ1+SOU0FohRe4wX6RX9Gb6RoGNz3TGywnSveKD42thJ90X0n4td
	 +KaSHBSzZTz+JffE7qTcU1JyRivjvncWIv0O5K0u5saEK5OTUCuhRpCyCWMU2mxGKf
	 gs1GC23scDDEDKUpTFAJmFOEeVLH5erBw9n4JAgtTfZF7vrfusCWiihpVlFWZ8BfAR
	 qKfUVOcBgBUQkLL7FQPMHauaG4rw5Ooli5EHEulgPaKuBjn3AcYcHBmqkB72MP7jpV
	 IB5sK6Pk58EX0s192xrR9ix2R24X9umB16OZ9vYqtcJ4xrO7pD53ail58pz0nOOYbK
	 LLOsqhHlsmmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF87DE88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526353374.32426.2131633175152513342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3208ceb9264ac3c9aba5c2185617908f76d008d595b6adbd23ace4904a22ed4b
Date: Sat, 04 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775263533
