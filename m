Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3927C2D6E42
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754997594; cv=none; b=YAQUg65AdNObo1ru/NkuDRbGHlzG8t5SVObtiptnsU3B2TBVa1DPsWZ4OSavEDsyiRQfGapSeAdVxMZXJLF6kOLUEskjRKhgPaqY8olYFIRlPhS76C/SDoAid8PZKnt0g5GKYzg64arzkl4vcAu5ezd+No33X8I963tCh1qUOCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754997594; c=relaxed/simple;
	bh=apBhHZlV2hA4kXdFPx2cGGz4PHM31I525vej54PBFcg=;
	h=To:Subject:From:Message-Id:Date; b=rzH2us4tXYaDjRf3s5suFtFSdY7iulkJAAg7cs+91L9LywuOGiktlS1lxhKeJCPrwbUVllxrQfsORdODiATcOy7xaaUWmrV6mWTWimDyJws2T2g0yq4ilQW8ox/Ay5CR86khqj0NAUJvLwD9vEMA1qETb46gk87DHKTvYijWsYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvVK70qY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvVK70qY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB092C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754997593;
	bh=apBhHZlV2hA4kXdFPx2cGGz4PHM31I525vej54PBFcg=;
	h=To:Subject:From:Date:From;
	b=XvVK70qYYNHa8JVOgHkkNAlr3J3Mo9/YVlibA0cCB1GI3mS46z3TE/cpE6HMGAlj2
	 crVPFqEcSLYDRD5PSDpmhDHI4k1Z8WmvU3y48D75o98AXQDqRWUWI3F9+FqIdZnrhb
	 6T9VOOSbo45NN2mr/1cLfERsERBurSoGFI65bRxRvKGy4DlVSzp+uYUBSAl1dGIQnp
	 3TG8wEoTr6h3NML575Nil6/uh+YnWCBEViyPCU3VkRRAl8oXG56EThIIZMRnqSnehW
	 pRUy8IpWRqWgT0g/C0lHFcF5evgL1s9HibWeOUofY973prxo+YrOn0uHrIMtWGAsrc
	 DskulEs7VjAWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A21AC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499759362.3192.17608920603562228435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff8a7fa5fb49466e0a85c09442eda629858e4a432219da177335ded7c28a1f0
Date: Tue, 12 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754997593
