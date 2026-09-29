Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3C54D37C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790677234; cv=none; b=o9lWKJ1RRBHJd41ff0AjcDiMLd5ExMxNmC98wOOzL1kQusk2Jm0O7iTuXaIg6LzSKdTNPVhyWGLUH8tT7xyvnTpMomXNogLUi91574VFmvq0yEsbCs9DY6secqnICw2jS0Xi5nYrAI2heRcYfVIit+Q+mlXs3kmcbg9drB1jixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790677234; c=relaxed/simple;
	bh=T4Um3oaNvpbXKz8z+967hirvoKMy+ZL9YceomTGSf5w=;
	h=To:Subject:From:Message-Id:Date; b=J7CyF3vQgHcAALJqAqqoBRheET9y1Mm2eczg+yhsX96DXmjVRQO1D4S6hvp8sIgtoXRms8Dgj278kW3k6thN/mJncC6VBZ6vXTOlwDCFwr4fFQslNh+OyufaDF3c5QIEKV9mcwykU4vQuzsFPX62URyzuuepBK8CGpEHGFcdjpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhPRJ6E4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhPRJ6E4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF52C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790677233;
	bh=T4Um3oaNvpbXKz8z+967hirvoKMy+ZL9YceomTGSf5w=;
	h=To:Subject:From:Date:From;
	b=GhPRJ6E4SBzJ7fVHU2tX0SinZ1AUeg8d3kVfhq8+fYklLkvkzCZIcOcUP/T8EHqbc
	 Ix9Jrv23uEtvy+d9wk1srR324aMtgxplj3Lzi983HOxHaISLSmbxYe2lOj4gD1P8H8
	 vwnWBr9FwB6hhUinRSoJBBGRZUv2pkbDDFrzXd7vhc3mFgL/tkRmsrMIDP6+CetHJY
	 +mc+siRbwB99dlao09eXrmEjEwuzsboSpp1Iyq3bVUh/fW0WyfzhMXvUdo9N+GFTua
	 n+GEqRPHuPiOUxWTYLEbmAKRoqhupf4p3cs5m1SuFlfUCOdy7FELgE+xksJ8EqYKPT
	 XM16SCwTBV1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE20CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067723369.24688.5423120870259946533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d80331456bd4e111bced5a57d5564055e32b9025a1644b04aab4233ba550b30
Date: Tue, 29 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790677233
