Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4AF1F4198
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756114194; cv=none; b=Te2cTfzdu5svr+wG9Yj/HEr8BO4HAfGs9uWqWoMNroZXDDB0/ko5fvx5RshXuzgUgYwq2JFcX5iM3MShQClULdEj/N2yC3ID6MuwWCav9uHLbNVJV3yedjV7xWBky8QWwSBmOVp+4cIspnfGpTN+2hQ/4zoDglrrB1F/2k21rI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756114194; c=relaxed/simple;
	bh=CIftnAIcServehtY0DPUwbk5+qF5dcTf4K3ZyWAZ2Pg=;
	h=To:Subject:From:Message-Id:Date; b=FcWm8tIA8vI3ShCmSPHhkXUkzOGpcdOCcKBuZZa+z/KpXbzfEgTmq8xrnzTRMr71+JSM8RsOTMkqPKK++uRskXrbzs0pA4mIUO7ZhRr5ttZD2Prw33L0vyS+2REtvJBoKIKdbyx6fS9jAxLXabWN4FW0BMbn5feuwlfbT54TLXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHhhb5hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHhhb5hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4359C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756114193;
	bh=CIftnAIcServehtY0DPUwbk5+qF5dcTf4K3ZyWAZ2Pg=;
	h=To:Subject:From:Date:From;
	b=CHhhb5hK650Uw2hStjHeHb9bKt6mVcKiZa4ZRlfPC8Uo0iyLSWMKMXTGypQ8MeniO
	 KJsMrSJX6OfdTwDE9fJ/N+vrA753o6Lmser2B6uuzrUUTsKOMyM7c+QanKj7WMABue
	 DAH/cNOAezbMkQC2j0ctM1LlqxyEyVvzY0znuZThSzNPKplaOLq9Vgq+NmLC8PzurY
	 SKzHeynTPzVgBGNuhZVPKARZtkwyu9uKgOCBMCLmK+SGlZyWGDXTWg8/gBFy/frpqQ
	 P30/2zLky+phCx9U6MyWsSwKJKcKpJnd8CG11nh3siNoWzR8SWBGihxUQSlRes7p2q
	 Oka/EX2DT4QGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DBCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611419357.14944.11665688907328165911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741baff59ed51628d2df71dceaecaae1685bc8869124dd00465793705ade8c63
Date: Mon, 25 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756114193
