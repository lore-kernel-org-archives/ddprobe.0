Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF911B140D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737459354; cv=none; b=hWo1qp8E639YQf5npi07UoGpTKCEi+zxX5Olu8ctMrJ/anopJJolezrpKlDfmrmkekshqyHDJgfo0r3R+fcR21x52iLrHmm58ULjwujv2IM0j/ee87yPraNxYe0KvJjSsaMtpUgpWNlrzbUn+fAVouH4Owi6SB+MwOTwtfjB5+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737459354; c=relaxed/simple;
	bh=JzIJrgdKv7rg6gdnL/pxtwZJT09ZZEQq2RTyz/8wBiA=;
	h=To:Subject:From:Message-Id:Date; b=Zp/zG6e3Ab2PPO6EISuJ8Tl/95CIGuGBCaiVK0iW10/XiElsFmW2GqFctgfqA+J6F0yyTd0gYR8KWsqJ/9c6XBo5GV7HIxXlJ5EHhuRVYQ7thuws0KnkxJSeazL8rr3mbvM3Kdtp8wsFftcAvPlfUe/Rw85SVLjx7/GXkUFRdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNe4UyGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNe4UyGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18C3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737459353;
	bh=JzIJrgdKv7rg6gdnL/pxtwZJT09ZZEQq2RTyz/8wBiA=;
	h=To:Subject:From:Date:From;
	b=nNe4UyGol7OkA/TMcRl7mUzEfJZFobV6O0X5BKph950pCCEGgYV4Tj7CsuoFtwew5
	 KvHlR8m/R0IxghTvWJMG8vtBvJjbPOJR0l0AWQkzVUwVwgIbf2JU45Kt8DiG4tyxGJ
	 egASuZrMhyrjsKTwxjXoTL7A39x4ZNHcBa5dXTtuANPQpKCEWQCU44kvGFAmAGHSeR
	 F4R2zbF46ACjarkh/4Q1lKyN2HSROb2sBASsgdQq66UzkrLMw1PxvDBmMG9ZPBKcr1
	 jRdrrEYvmnZvD1Jw40DEXuAOPeSS2+Az5255j9VGD0Ao9O2voOLuZo3UfOfY9vfqPM
	 zFfSNjIxKoOmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6C3C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745935361.8057.4318409989439903686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3abe1134f26dd6bb711b19c0d62cb615491d250815ed549b5aee642b787e31
Date: Tue, 21 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737459353
