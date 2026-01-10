Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1041A3164
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768010034; cv=none; b=JWEcFy751NseHRB34yUDFoHRAn77aA9HbjQ3EgbeH5QLk3p4etQZ6g9bS4ONSg6a1fJ2zA9KE0A3Y+Q9PMjBf1A+HkuBCPdMaVDB1Ustl9U6Jrf0uoxrLE5Bkx9gaVmtXoBlxJBz7397Wib9zVItQ42DXo91w6zwrW5ujI9IAXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768010034; c=relaxed/simple;
	bh=HvmbRJMskipQwIypRAXRdwIJLPmIDmWldoT8AgfcdUc=;
	h=To:Subject:From:Message-Id:Date; b=LK9f2PhDSB4XPUByr8EEKKShZduw4Ssavh/h6WEf+VA+iG5aufaPKg8ak1pkEjTI5LOmrE73qz3kLuo4OhJ44wBy3GsQm2Qp3bmhsedmU+8UD3ZNNpdCS3bIEHvBIwcURaJC14iISqqt9S88Coh8hnY+k5/KfCBkmN1iJ8QQ2Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHpovguF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHpovguF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A35C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768010033;
	bh=HvmbRJMskipQwIypRAXRdwIJLPmIDmWldoT8AgfcdUc=;
	h=To:Subject:From:Date:From;
	b=mHpovguFQYkaEI5Gz7Za0DhaUUlV173tYPWuFFM4A/k4FYgXr1LvrTkKKkkCVujju
	 h4pL2zLmDV158VEt8eiRegvMA22uh74Nfvt81tZ5k/ohIJxRszkqj2s9SX2o9vejfo
	 b7hMdFL31yBzQ3kfFzPndwOqytXjbbiRGp9ExpsGFj2PfETQN/oeV2divh//DQyn9Y
	 3oUAp+wWiFXz+gXlpJNddVzOJeVo8SWlhjiC9Nj9IvLrO8A5AkFsEqKK2XXX2C4ZTn
	 vN1DVlALTtNKrr+SKalsZf5/A6kwksBF9nJ338shKD5dcnA3LSN6tLGSP5pRkdBm2Z
	 dRY02ur6JdGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93073D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801003358.17740.13995308709161241303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e75372341ab00c70dd4ce82d7497d4aba73f2828a5d5e1fccfb2a16a9a18342
Date: Sat, 10 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768010033
