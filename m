Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA263A9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736067354; cv=none; b=ZCWDzx96LC0gsXjdYDbSXXPEv9aPcDNoLKfCHvYyI0FjOD1HIVjiZrRouGU43kvqARyW+PObAY6b+cJiHSO44xeW3glt7aVj6n54+BM5yvVPtJyXB7Gw7W4Shkh9Qn9HGX358Th2aWr7CxMDaxMNXoodhFLTu2pE43nMSXg3ZsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736067354; c=relaxed/simple;
	bh=Zr1p+UtK0+9o2CGPC08ztypHzJlLPZB1ZTA12+ITdYk=;
	h=To:Subject:From:Message-Id:Date; b=glIDtxWsIjz9lRLUX8lQ/fuR6sP0H7lwC8vbgLEZq5zbb4BI7g5xgsB1CBRoEUkRBcTfBEePmZ8FlwKlputYsD0H0w/dQUGZfe22AbVIIjbWKxAiReCxSjDQz3PP/YyjLAJKPNzI2ZbnPVR3IoS08aReUyaoNUKyva18CR5ORwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmDbXCKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmDbXCKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FEC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736067353;
	bh=Zr1p+UtK0+9o2CGPC08ztypHzJlLPZB1ZTA12+ITdYk=;
	h=To:Subject:From:Date:From;
	b=VmDbXCKE2tsU1jGtTzrZDY+WkcyPwg7dXAyrV9YiLrvZP+idQkttIIpXQp7I73e+C
	 pgYI5DBK+rWfeXCGVPtbA4JubcPbGGX1OJCGbJfeLJaEZM58mkL+mVlyPchVZqnBFE
	 QjKqw2PIxsxgllOOm0skxYcoSgyWrbUWyErbXUApTEFFrwadjAg9zZaxz4X7CmtfTw
	 BzKSFiovs20sX9yAp7PiLBMMlL7Is9DpG8EviA1qwecy+geNgKPEwTKc1JEYec4fvu
	 vQV/GSa7SlAULaVYU1dkdB7erzEyJSut+dtzwomB1GlBbDal7rgmipRFCjco6BUL5L
	 kNhBXgonmKIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B86E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606735359.31754.10911101630729662204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d89e18a9006be195ba050dc606c67f439f099eeebe4f4244c4e5c2d4ef433c
Date: Sun, 05 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736067353
