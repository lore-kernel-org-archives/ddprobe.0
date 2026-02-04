Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05297280A3B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770216234; cv=none; b=H5X5lR7Mj3pfN3v25I//K+ROnPJ/VY6LLNupoZkEWpB1oS5NcWP9i9nzzpyw7bBiBkG7dnbKoLAw2DMyw7uZebDxEduwbDGvUtbos4W6OFae3Y+14YzFDJpuoC7uGx/DWHZ5r2vFu9pc42OvV1YBjqq6VJJ1iuyM3idFPbnhE7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770216234; c=relaxed/simple;
	bh=lHqo1OmLugsPZjM+oEKkDoN0cG+DDg0CKVgRjtB3cPs=;
	h=To:Subject:From:Message-Id:Date; b=ffRPxg9ZU1p7XsmC5p9bhyRIvyu/d6nlOvM4LLeoQp6Vl0Ko89sArWPynZ30ZA1EoNt7dt5RW0wHwerV3+SSPXHFtZOWmeqsUdIrsUfJS8kWPUKPCfYUoxABWIunMe847f8P0GTz3sgCIZ4GYuSwSyXVv1Arp7J6Yg0U2SmKNiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIib/DUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIib/DUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0673C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770216233;
	bh=lHqo1OmLugsPZjM+oEKkDoN0cG+DDg0CKVgRjtB3cPs=;
	h=To:Subject:From:Date:From;
	b=mIib/DUt6dkWTNWQdKtqGfG12m3jeo89TGHrn/J2Vu1Mu8QtAhm7HInIZmSw1N+So
	 cS8HMgkWqIHCy2wB1um/mX4D6V8Yo0adbapRr6WjA4wEgt3dHfSiRte0yst/VLSQ/A
	 kTeZ45pRS8WTRe8gLQYNfphZwHTuq/tAQyivHBI8AN1isPDeyqLbjr6ufNZZtfythS
	 RIaE3qCnl79sLnea754TdeaE9z4pjTVFHfKawiFLDt9tVYSPjt3/z0SFApy0z8Zvvu
	 jJO5M0ZrdGKGCidkfffVOCAtxufmW2LgWq0zt1jmsHW8U13ADPiIjp+iRPlS8MXcyY
	 Poivr6JBCeHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB46E9D3EB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021623362.26406.15410545791687166264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a528e74504164d3078a5f58008e674c032bd51d2aa4ea2293a778b4605e38e
Date: Wed, 04 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770216233
