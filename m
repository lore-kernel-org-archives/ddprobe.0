Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3285867A0D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735395354; cv=none; b=vC7OmKWReHT1CEiGPwdrjSw/SB6GIO75tEa8/8cEluN549zR/Q+IDAT9+3vnaPBRwKUYGycMfaGXCKJ/Q+g4O8NYmrUDpFBPZGYFfZ8//NwoxUu5g+bbA+M264VMyZDZ3g8XEp7KlfeMXNSC6U6G/jFsfK9JTXCIbkmM2axTCNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735395354; c=relaxed/simple;
	bh=9AG2bMkcbpbbWnV+lhxgLMVN0jnfB7uq1Zm/eWMnLD4=;
	h=To:Subject:From:Message-Id:Date; b=a8wovHP6HzNBxlOkqfw0Usr8F7gNufnZ28lhPG24Be4C11EsYgYuxuJS4nVEasUJfTWRtUMpu9mEEVtBafHK9A5x5RDSaQwUPpQ9SZU30e885TBQKVcJ/sGWByz8sF0ViMvQvAYVS8LlPFNADtbAI44bWloGmWfRZIKn8CeLsco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jydgLB2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jydgLB2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD500C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735395353;
	bh=9AG2bMkcbpbbWnV+lhxgLMVN0jnfB7uq1Zm/eWMnLD4=;
	h=To:Subject:From:Date:From;
	b=jydgLB2kkjcvO4F7FQN21fmf/YO5a0qtbvQ/PTxcEoLKjW79Qs1azrkCVPoW7mUa/
	 uAFSgobj1N5k4V71/II3tCzPFssNlS037GZaTZhIZ6Ok9Mh2tqNHN/Kz5iMiJM+myY
	 mQ9bwqbJjTqf9BJFg6EZBg4VqwUMY1Y04byNtiTBGErA/tE+Pc7nPEuM8CU0dl/Neb
	 RretxCu++nAlMbhkwoCs8e5c4jHAssUo4HRO/oUsFOAPtiuhsn1/4m25k/8g0Qz3wT
	 JJEl3mYVDE0/zNxqBz7qPyF9KZ8GHBx9tmG7nhNDOCbZr5OMM6m0Z5FAkivvb/Hegr
	 EbvjMwjwbbYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539535358.19361.18012752133519158078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0730d36c0a795cc58b1d64887fa84ecf46acd859b6600596e7b778781c69a2e8
Date: Sat, 28 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735395353
