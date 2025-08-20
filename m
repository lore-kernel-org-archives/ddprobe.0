Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8C324677C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755727194; cv=none; b=eRdrarmB3sT4BwuO4tYDvDQnRm7G52lrEayBMZjvx7X8IjXBvM0V3CM1rBYhW5ctRB1U0bXSEzDoxrMaF70KSPe43PlOsgQaiCPNPGzCtxLEb5NyGuyegm+36TnEE+Cw3UsxWa58f+FYce1vqtV1XrQMokFfslF0iaOP8aD3+E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755727194; c=relaxed/simple;
	bh=sN+JlInLgAiYVH4JTG3gpOff5fr+of0LR5iB55G+1OM=;
	h=To:Subject:From:Message-Id:Date; b=lmakRlTr9q5wLyCgL7XJHPXTGo/CBLXpdnDnAKUyV0nx8lRWItQqk2KsXdPHsWHRk3Wi4n5gwvdtFH0c/0LU4MfM3pGzdMVy2Yo3lxyMOGXNkcFi0pCq/PryRxiVjnFIUPxTsyO3cRGL+zWJfKtbHr0PINDxeFopWoHpdo9aT2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8ehEgDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8ehEgDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CED3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755727193;
	bh=sN+JlInLgAiYVH4JTG3gpOff5fr+of0LR5iB55G+1OM=;
	h=To:Subject:From:Date:From;
	b=C8ehEgDpW6C32B4YCidoqz1XiVu8zeOkF6kqjS7S+C+QkwTldrwr+M9AELMjihTs9
	 c3N9h3LVwTHaEA8Pk6ttYTA9RfbZpSqcRg9t/oacaELRA5unm+l9OLURURfs0Hkvxb
	 +d33zgkSqJg4ubLlPrJKHXj4UT6CumQABAp1gIrD6Zb23uoClHeE1k5AO2JF3D522o
	 wSOvkjsacOf1T+DCLXfocVhbX+ahpwEQmOBzVwTYcJ3F+pYJz7CQyxrF5ClGBUYYUA
	 yUS+/GiVY40xXaPP6onwe8g863g+vmv/QTffih53TwesVOM7JD3MQ870OB3+5utY3g
	 JI87rInICVv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAFCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572719357.16675.9320189221000435710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e8baa50c058f1e8751f8b810baecaef2721d72d3ae526f647cf603e4da2086
Date: Wed, 20 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755727193
