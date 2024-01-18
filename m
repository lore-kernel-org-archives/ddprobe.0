Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39B728FE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705538297; cv=none; b=vBdq4iDfuACK2DvQVCT0/wFQHVJyNZjf3tXAL8BbaNAmVeTK4KBIdBbUbtuZX46DkDVCwgysBibjxpy7CZ/D6sXzNVZL1YxqTKwYJjMdNboBNH5Gf46YjsKaGlCQQkGwSAyHmyE5JntIMH6khp8vz7YKyQI7ftBh4W9Wc22hF60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705538297; c=relaxed/simple;
	bh=LM1OuIoNeVNCJJDLgzawiAuyE7WdYXFlEBkBmrRFgpc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Vq8ZAJ2U7QDEnu6K2itG/pWYBd997mVEq3/Hto1NVr5NQ2+BIiQooRaJGKH64YTS22lACyafrohRQWEED0kI30/4SFWdGaYojRq2FnfcpWbYMxKCy58N+DLqx6yxyak6qQd7GWW+CXFrnpn3OSQXk9lQi0ZbIty5NyZOn2a/feE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ksege+Po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ksege+Po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AA0C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705538296;
	bh=LM1OuIoNeVNCJJDLgzawiAuyE7WdYXFlEBkBmrRFgpc=;
	h=To:Subject:From:Date:From;
	b=Ksege+PoG564FcjxPYlVcrLXoDOpek6Qpk3pb/UEDnhvei5sHmWccBSdpvHeFvKtv
	 j56/hJEUJt+aXTspYQCHIwuUujBiMN1h3QyWDY3I0eD1/sDyRlNeEZdvcNsqkxm+Gd
	 jeUH4KcotiBh+GIyvALdNZg/QIkl28bd3U3tGlSArXKTMSX7yNHoSpaB9lR+wKPROz
	 FLlRoez6mDhT6RTjdnwYx9DMCZb3bv/Ahd50L3FYTZtWyA5hyk0pGBFJuBs2piakuC
	 Sx7Lk6h65dWAJU2lDnvU9fONIEIvBWkbRlKIjpZPU6xqyeF0boXxAbp1u3CR4F4sJc
	 DXOUNRm03nxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2B4C47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553829637.21853.10261000812077557534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc109de1146deaa58e3670ca0a04224316eb8e99ed64112d75b3fa67d7f58f72
Date: Thu, 18 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705538296
