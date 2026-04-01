Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C70A318ED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775030134; cv=none; b=uzBIm3KwvwYgmpjrnF+5HVHsybBUwwHyF1yai9sw10AEaMm7B/tgIpjIGm00wo4ySitZLYvQv6T3VgoN/NDf2iYb5QJhtxQCqD4y1rgmNxDRFXHmjZAhHEY8UKkvWJz/jVa63vJdO0oQSKwqsnYB8c4M8ugpjZnR8Z1x2E6EtEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775030134; c=relaxed/simple;
	bh=50WvHkD1LxhmjkosTG9F4nQ+9EOV6SXYXkYTJHkrrpk=;
	h=To:Subject:From:Message-Id:Date; b=iNTvnDS17Gpv1Jz2Phq8zyMKtgjnxLp3Du4aFo1stwfkmNLUp0iztAiMgYS4xHzhUoBcTGznQ5/8qUMilA3f6g4rqkFUxuyaCE/L15PhEDG67lja5nO3EPdeJFwTBNj1WdugXRdplsWk3+KkW11HL3lf9aWimKTSlDBA1yFjRss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFCDIxcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFCDIxcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E42C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775030133;
	bh=50WvHkD1LxhmjkosTG9F4nQ+9EOV6SXYXkYTJHkrrpk=;
	h=To:Subject:From:Date:From;
	b=KFCDIxcnoXw4RfkYEF5KGW6E9/alNOK3Yc6D5ZV7ObVEaC707n5lq8utNAB2HzrTE
	 fd52JzkaiNKKmlHzi69CPkc8Uc9I/kTeTpu3hYD/uVd7gllc/ehx1LbAibdYXJWV+7
	 V+MteYR16jmDA3v61mQdovzraXM+9NNxzg7SuQdnVAy+kk6zucTiwZvlb6guBHxIsG
	 2nvrmn/8C46OVlUkTLrlgChzqUQqRW23p2Js5AIqPRCeJlK4WkxtKHnps/xr0feuaR
	 vx9P/NfuJZWjs0/Lxd4jUsf5g6BWPQCUu4b174TdiU/jAs+5LOU31n07vIRtIHhE6Y
	 tc5Ru5qGpqIUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08BAD35157
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503013371.12353.1894680749187613408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478e5e4511fc684e7dc42c43564016fb5989fbe660a6bbd07a85dae371e82326
Date: Wed, 01 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775030133
