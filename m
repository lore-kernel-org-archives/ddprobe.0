Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E392A2BE04C
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757801995; cv=none; b=aXChPOcZpygD9ooh1sr3eVsec9A3+Fy/cKX6XlJeHkNU6kjhH4fgKYSXsvLWeyHIGiB8lavbzsBVFzOw3/4xW5kgoBso0imOmZ1UNDNTe+j+5XcNqjAja1yW2N7RfszlMLfqFp/eVs5Y/atIsmczxZYX3I7tRNBXumGz2ek59CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757801995; c=relaxed/simple;
	bh=J0P2J3OdukbGttSgBBm0OnPPY7WGJrJCw97zukXBzbs=;
	h=To:Subject:From:Message-Id:Date; b=hNySMFQESk8Wc5L5uVvWvOF4kurwZ8F+nDFfBxig/Jc7ce2fszjO0an6cS9E0xYt0Aj6+TO7kdpqtGGtgxvi4jT0JaaKh9oBBfd2x2Nbc0Cj8xuBswiB4arbdiAU73WaO4WcqGLSqIT0gbLpTwm2GWUM2ToZuUGc54ReYRIDnxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXASXSh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXASXSh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9DAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757801993;
	bh=J0P2J3OdukbGttSgBBm0OnPPY7WGJrJCw97zukXBzbs=;
	h=To:Subject:From:Date:From;
	b=UXASXSh3+TG+x4nlt9V6jGA0EUus1vVxwkcodAeOc+/51BTjNrEzRy9ZsbT/MWXTh
	 gdRvZYiFBd/KkRVqcky7G9+hUfzUUT5GWd2Vv7v7vMq08Hl/X1VSY4M/uR6qCguH0J
	 Erx4x7yBt7gr0WzqDJAEg+gAEPMbgkvzvleKLvSeYPWegZsuQUlznr9USmqUr8NMNd
	 ijFjsyrGoXqq9K7Mr+y1jYbiL2HSAoNEigMOrvOVq9z56n6ElymOn54wekjCSdHS4s
	 f2vw+hYPOTtoKenr8QDd0FUiaJoZLOFzr9Z3P+mOlGRJxlYFmwRPV8+6n8WARSXWea
	 wkaLTGIkW91dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F9CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780199357.24219.4360468832370964898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf635d52bba599c69cfef63070d6e6c87826500d3108899646af5cac5143539
Date: Sat, 13 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757801993
