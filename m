Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CFD1D2F42
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757774994; cv=none; b=dwLMOg6dVGyUfOctdb1EIzign9ViMWc7ec63o3wIqeXSXvts5R28OmuMJWuEbv37fEi0N6N5GLjLM5kvb/UKiZ2OY00lJqH7USAFC0F7BK76L/GUSnqOzbCrrCWen2rCGVfTgy9mKv918gYmBdCmEYHc/XPA1Zx32+lbtLhZ48E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757774994; c=relaxed/simple;
	bh=13lyyUtN61c0ZX+cof0fmMEQqwl5eomj53eC03cjIOY=;
	h=To:Subject:From:Message-Id:Date; b=AMbKLzKx12g7gQgF/gBc73aJZMQkmPx1WcYVkCra2jHdqVKlcIbifltxpyNamDNj9Dogs8VV4+UihAURmG0+bbmmDuDFlntBsGArryxHwTBrhBDGyx8XMUn2e4TwnqU7OjRKE1Nk4ZNzfmCJNUx2CC3PR+6sYY2fNmVhy7ttDDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaHvDanM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaHvDanM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757774993;
	bh=13lyyUtN61c0ZX+cof0fmMEQqwl5eomj53eC03cjIOY=;
	h=To:Subject:From:Date:From;
	b=JaHvDanMOWK7nGW/KKm3zROJ3fmi/rAeC5Du4vomqEY2tcnruuHo8avYMuhdx29K4
	 jybmeZuvqYtqLHKTvgcx1LsIwby/wMT15pbu6/ZSMffPgFJ3oS7VtYOceBzRmGQmy/
	 EZHaKqUB+0Tf0Dl6unG0HAiCvba5HK0CphAXkzRSXVbG/XicwQpaS3cFNssz9plLLC
	 yYnQN6PG6bYoECc8khW3BzUhUA82ZePs3k1mePrVKaYgCSlrO0CY++MFSlnABrY0J4
	 YfkQjTxmxEigvDI8iibn1gAI7qp+XRc+J9+MuThCht6/VfpMeghNEWphrTeUkC3UVE
	 1/H2esHBw5QJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A67CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777499357.8408.1640460126910460655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8446ce1c718bfdbe4c27e4c0ab3f98fe67c8be73dc2c2112193cb5e1922e740f
Date: Sat, 13 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757774993
