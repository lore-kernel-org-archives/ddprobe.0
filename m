Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976135965
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762269594; cv=none; b=hs9kvFAiM+PLPXyeISortGlBPPjfX6H36pxdQNj44gOJ0+crfjrGA50ipNakznEyh5RXiG9NNwRvO4ct68x6DgVgKvCtHu5JQzNpw0FLmzzzeNu71olkQEmTQ2wcMrIjX0J/efGhd7A69EUJQ9XYsReD1WL89JV6UTWQVq1Uc0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762269594; c=relaxed/simple;
	bh=BMuHfTwidfENqU/C5h0mQfKm/RyTYTHOUeJkgpQq4ok=;
	h=To:Subject:From:Message-Id:Date; b=UaYMiw1NL5DSwDJGFwc3nCunKw+PaYPrOmxL02AYd7GOrwcLRpfHBTeuLD8h1M2TrnyiylAc2tKozKnHkwg3LeR3y0BsNwl9lyTw+NxpBoT8x/KUHk1nlW70KxmAUUFKPb1FErL/k5jpEHV1fpNYfG7kUEzzOc6uNrWmoxsqopE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWcuwV6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWcuwV6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98533C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762269593;
	bh=BMuHfTwidfENqU/C5h0mQfKm/RyTYTHOUeJkgpQq4ok=;
	h=To:Subject:From:Date:From;
	b=IWcuwV6eGykZOkcptaqmEgTkuCqd1/DVnrpfoSbN/mBMFD/S3GQUQO6pzmtZhmAlf
	 Pqu4xXTy/mCx4023jhBqx7Sw1glVWczj1KVGob/KGnjOu9pIEBEmDtsOfCxikOMvqG
	 GortUrIAFXxujqGkqr27tfW4YJf5XzkvHN9KLPKr82JS9hUcBAWVqq7RN6YFjjtBKl
	 Tt4Wj0AuRaZarNpwrGLj7LwTPYfeLMA0Nknmb5rKCxVA9ySpuiLGUHysShyv3POSCd
	 Nyw3H372CRplVGEb4d2l7BlfWfXAjPBq2KxjeP00tc+Fx5cBZSy2ehV/K1t2WH4Di7
	 qBidZyfnMfh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D41CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226959358.25409.15909799129229228209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e57b88310ac4be3577f13cf1b4aeaac08b6b918df24466806a39a4a6d2ac55
Date: Tue, 04 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762269593
