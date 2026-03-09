Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9F2423A7C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773093894; cv=none; b=Q2RoxuuFkNN/5xYzVwdtTU19rNscYwgZFsQ3vO+8OflxzaikJCbsncHmf1DsjR2e+CRtWxyF62odEgh/YI7oXsMQDY/zpy3AdPQN87lfxYTW1oQxPRGN6f3d5vZuqfOJIVhe6USLEHbnEukzpt7MTBk61YFNPISnTEjKCC4X2DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773093894; c=relaxed/simple;
	bh=7JRirOwYXvFcyW9xxEA0ozZxnFrW0BoNSxrQfCDlstk=;
	h=To:Subject:From:Message-Id:Date; b=KqPMrniv5E0siTFjbRxXJv3mnwdXuo5BK4TlVpGcglot62tcstYfyTH8+5Q+BwDKCFUV3/tTJm2X9ROxapGWsQ8tvJLCyEExXneDxYDsBN3ffMWb1m5109mWb21X2Eb25KfFAcUxTRMg2/q6I0brdNmTbV8D+Vt07hY2UD69cgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2Q5QMNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2Q5QMNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773093893;
	bh=7JRirOwYXvFcyW9xxEA0ozZxnFrW0BoNSxrQfCDlstk=;
	h=To:Subject:From:Date:From;
	b=Q2Q5QMNqB4nPLwTCcLtfLczw082VJiPFB92qkKNQIvFQBqFIsN0V/i58QTkq6ORl3
	 vBgtezthN2nylZWYxEq8qasNpbShRYfrrpGKLoEWV06U1D48WhjKmF6LCPT18WKWiQ
	 ud3TRSAl7Yhb/iIXZSVYKUgX1bo18RM4SQk231kXRMwIP+sHH59ROiBoXCTIXipQSB
	 OVakJpp1+dWgNVZ6MHQznuiulgX3ChLzxuMWf/x6hepweKNGeNP3INRG/Uz3TPJizD
	 OFJaSoZwQHFPvcBgNpagZxcH5+wL1Ngbpto95xRbvu0VIem5IZnzHb0gGTcjMD0Ze+
	 hbq/G7e5+2ddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9EFCA198
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309389357.25656.1544978378944322391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a739300821933d32307439064f14f3acdb3217da7fcbc375099f6eb2c4c8192
Date: Mon, 09 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773093893
