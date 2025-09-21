Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321032B9BA
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758416396; cv=none; b=BMBIMxZiT3XTi6tFmF3/bZRWibe7m6EQkp8j2JzqSm/fdI4P1817sH3BdhytUBtTXOZWogU1iovFQ664hcnglaU9swL5v2iMMDVv5BTxqy0gvcs8Jwv7vKt8gYr13R40Qx+XgJGJ4HA+4w966oFdgYslHQci/WHdDnkYB+pkW5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758416396; c=relaxed/simple;
	bh=24I6dwNPLzb42iuTDGGdpam/1nfKDP0rC699zN/z2x4=;
	h=To:Subject:From:Message-Id:Date; b=AY0cY9DIJLjM6S5z/8alDTAXpXYeth6I4H2JgBvelAyVFLtSAls8jjVerO51WqC5qoZlq1fbQFqzdBSjG7gxpmp4hWrdwC7VbKfiFuJNUi1R0po37gGgzAiXKTN6QKLHbAsoS9fImB6WFXSi0jbNYICWBdFUV8jcIU53WHuJqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZhn1OML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZhn1OML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D80DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758416393;
	bh=24I6dwNPLzb42iuTDGGdpam/1nfKDP0rC699zN/z2x4=;
	h=To:Subject:From:Date:From;
	b=pZhn1OML3BV8MlQpSwEi9sWnPiLN+ZTvyf5ToitNVDKFWCsh+KxInfSnfau1oepcO
	 GOHhGeVBwk+qOpUygHH/6kpp3iharyQLkLtXmHDcp3xtAxz1r/P4+s+PgB7pIppr35
	 14CruKBx5N5H7bw6VZNDRpowIrrAOQB9//pQyWgse48tq51cji1XI2KZJwxYYK6AV0
	 WiudrEr7TNLIpDYGTpBrPfhEZ1/beJmdYUQHHU9c4eHOCpD4yC79F9aHSDjt9D+ERG
	 PuWtFCCldrjtyF2rNYj4gmY4cgKbGy3iVQ0d659A0zRrtqx6rKgZBiZEnqngYlh+D0
	 wVWtF2B/uxnvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3EFCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841639357.6217.1060032548896547127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb8a9cf5c9740c07b07b1be22c3a9af3b63fa1233a03539ded5084125dab803
Date: Sun, 21 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758416393
