Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3670040DFD9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775864854; cv=none; b=FI4fBnhZI5GjVIlxkLOIiOYcutITsDZQI5x+kQsls/cU3UEnqz1XleV76SzrbiWahbF+8aDJy5HnOeoWFnOtmRKXq+BjYjyD25h3ngWMOWYXdGeDRCbwnL4yjfUJoCUWhHJadxW8boGvysGGOiJ+pcb54wf1+uGq5pyFwoIX4bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775864854; c=relaxed/simple;
	bh=l3YLR8m8Di0lo8+WGY25VjB6Zdcl+PU6Z0pF/80jdUk=;
	h=To:Subject:From:Message-Id:Date; b=htOr0uonthvCZCFR3YPzvAUubLLP3FNSqD3IDDIWpGcXt0uvYvTuhsI0VmSzmnBjlvIEV1QH/QKVlTi5ib1ONAcLD2SavLP4hxMcphhPEcMtoJMLCNmKnXqhKg21G1qwujLgjCOQXr/IJsZDbqa16tTJa8xFpfROmCOeJJ75hGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHeYs24W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHeYs24W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FA6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775864853;
	bh=l3YLR8m8Di0lo8+WGY25VjB6Zdcl+PU6Z0pF/80jdUk=;
	h=To:Subject:From:Date:From;
	b=QHeYs24W0M5dWS5V2e2hx+Sf/GWBHv8tOmMeO9vGk7XWND+dekoD5nwsotzQdDSQI
	 YMf1afpOmrcRZmxcE13p0Id32Fo9CHOC4FrBpb/onXgb2Ve1zGXV1UmAJiZcT0/z2r
	 8wrsTTFcgMlX1kN99QgdjK5+AqcHO8qnE0D4ccvR0vUviOrIaAx3hwTtWZ7QvW4KvD
	 /50wFBi6jvUMY6u/dBg7pmHCCteZZzPYEMEAXFaMO1Erfq+GaJ6cupiMVB2+20vK/f
	 cwkeegX1U3XG9fP/kJSGNVbocS+Wu+c/iCnKFiznS+tv/CHyg302l+Dwo5C7cNuJRP
	 PyxOTlrdsfkQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFECF45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586485368.22344.11151208560656264210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0651129e70d00c726a8ce9677a9a2f98d190b6ce8603d164c30fc7cd0bec5376
Date: Fri, 10 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775864853
