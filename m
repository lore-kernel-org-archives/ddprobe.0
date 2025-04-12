Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC851862
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744498194; cv=none; b=Ne7yDavel/1TfAU/JPtZOeFjBXh2PkrDwSSjyF+M7g04IWDfqfRTmr1tOPMc4LTTTAuCfLwd/XQzFN6zvXuvt2kKwCt27M0hfO3fy0q48otulQzQue/lAHvPAX/NwY4M+k7tcemNIUV6q6utg0/2ZZqguTDupdslvl7QxJVf6dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744498194; c=relaxed/simple;
	bh=ulnw4LZUoFOi0uOL5WZ9I90+9ggL55jJinLlJzIpvp4=;
	h=To:Subject:From:Message-Id:Date; b=FoDy+O11x39FpELBsRNw80xBhXjqsgFxQvkRcrcUQidB364rTEhDeNzEMIIVaqfKC5uleUNNcD7q9DY9qJngswvH+D/0+6impBUHpSF92ODeQXuFrlsj2FzVCAP4obNrWbXj2RKlFP6dDng0nC6QF1k1fe3k31hFMZY5CXHJRZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLyDoSAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLyDoSAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B39C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744498193;
	bh=ulnw4LZUoFOi0uOL5WZ9I90+9ggL55jJinLlJzIpvp4=;
	h=To:Subject:From:Date:From;
	b=GLyDoSAzs8M19sGeGuYGUIEeFDmESyr3x4zc+78P2ZUtPmxkTNfAP+QDaASV8qrI7
	 oMU095RMWjvZrAfp4tLJ0B6ZqqmKBJZ3m21S1rZ2TIbIXBXiaYEc6zIOc9uri0tihI
	 pvJIUPu9PZSuEjMX2sEzT6uRs6nENhXGDZ7C7j3Hnvfek+eQWCXih8KeDPKsEW3SO2
	 sdGHkdM3fOHbZNvYdZgM2/v2lxWTEIn+R/f0NKfQRJcZx9yDIHy9OZ0PkncTSJqwcR
	 XyvhgzRyT8qEBytYScLj1r5QPtYA3QMAzMjTikWv+UdGTnXvmz8OVhRcGSdABv0Xq8
	 iuRLwPvcSSgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F2C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449819358.29891.17141472845760811074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1847d0ea463f6953e5980f624bb6652502d64db23972a66f29fd4cbe2d9c6b5d
Date: Sat, 12 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744498193
