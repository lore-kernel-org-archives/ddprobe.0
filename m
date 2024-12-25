Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280A075809
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735134954; cv=none; b=Vu7QB+jovf06gKmYet4veH/FYwtTtfBqwTDQapHAqBzPuNRgSKWsO+ZU82C0wZCYrTTb9ID0cJFP+ov+Iaec15ZaGPcFbwt3LoMwtGGknksWJzh3jJKYfUfwO/lsav+Lv1ODQWFSLo7ncYaOx9wev1soM9HxC8Pzxn1CWM0wyiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735134954; c=relaxed/simple;
	bh=yvV9m0Nfa2GTw5dlwDNlqSXpxz+F9ipW3YnFjjVFE+A=;
	h=To:Subject:From:Message-Id:Date; b=TWWUkKLBo+CLACR68+huIKth486KR8tvBYOlUeMZfvy7dYeMEV5FKMCO+1V7dinTT5kLoeA1bCAQWh5oTfhTw3qmpRJnkGAiGfdZCwCseZdCZMkP/cyvNgdIqKIMVAQWk3f3VOK3gjXPWdGlY61zLCXzfxHy7cojpPtiRuDZ7Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDDDhRht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDDDhRht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735134953;
	bh=yvV9m0Nfa2GTw5dlwDNlqSXpxz+F9ipW3YnFjjVFE+A=;
	h=To:Subject:From:Date:From;
	b=lDDDhRhtfruX2C1NfE8hzbHaox3nW6RAVO2U2XvVykuKyl8saXsNGQeO8e8tJH3Tb
	 VDk1rZeE5c/1O0yu2gLaqvxLaig3Fls0pJU8EVNppsQYjiiGAem8Y3hnvtQEdLpAMX
	 VhL8RaO5OerKAZKY+fytubzge9iUBZV+Qe288iLzY9FyI0r8crxz6w85CNDmILTMCY
	 q6NMJ78NmgWEQN8D9M1jS3UnlrwI9U19IeNCeIKm1jXfcCd4SdHJISXsyS3IllGCCj
	 VhLaz4w6MyZES1SDEv+/JdYDh5qkDAKXvZtMO3CWZirSW1wSF7yLJmMi9S6IDPzNPu
	 FKpvPiha1ozKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98997E7718D
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173513495360.17250.10886967207135281618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60eae7548a7f854250187985f23ccd7189c2788702f1b8fbc4ff67958d48f3a
Date: Wed, 25 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735134953
