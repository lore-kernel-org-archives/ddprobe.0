Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199EC45BE3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782970714; cv=none; b=hqOH4+JeshyUz6yLy04exjbNI3Vv5eR8R3rBYpv+DbxtW6R5JrjW1WKQ3J3QTsJsjMfdCIaeJAQjoZcoY2tofDbKG4/shIuTydqAPh1DttB8/br9D3/SmvAY4gOqB9MQi1T/JOr3r4oppFEkquqK+Sr5/t2rhMBbctcjuGHGIY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782970714; c=relaxed/simple;
	bh=oLMB+nP+aMypKyqVWkFqHfG2M7wKX0AS4fbmiP9itS8=;
	h=To:Subject:From:Message-Id:Date; b=od9610LxaR5dOwMZZZT+z1ormAXHNCePqv9L5I0IltmIO7/md0IlZf0OeaWAIXxMKV7EMR/rjlYVNbR8+HvPGRCcEhzMg7eI4emQwmJg7ZPruzyU8VFhRDFTmGoq4RT4DFRN5A7t4G7sjugTcIIPSYt9geKcNW3bjNKYYf328XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5TzHSho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5TzHSho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCBBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782970713;
	bh=oLMB+nP+aMypKyqVWkFqHfG2M7wKX0AS4fbmiP9itS8=;
	h=To:Subject:From:Date:From;
	b=I5TzHSho9T5ZWXW/moxi+jpfutw6eUsR7BtxXss8ufucDhuN9gJ8Kjd3KSSZ1oi3d
	 6/SlB+4ITf0RgntRWN/g81bzMAPfYys+ACnGtS+TtN/6/AwzXK8yRs3t7HArkME4rq
	 e9o48eEl92dtAqTgBWATW6lSf2+HJYMwFXJXdsv/MBQdhXiSaX5/kEr1fVlpyMF90s
	 GeRxCkeTLiodbdnHuCnW2zuG0NSfpS1yJVHG0pDuNPGfG0IAGCrMcxYHjzVPWV0xlC
	 0ieIE5a6ddCfc9eV/HUJCc+aamMnR1Ny1uQ5onWFjXuuHUuc3a+pLD1UcneT6ZPzFs
	 n8D4pkqJ3636Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB3C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297071368.15207.17109387795853554630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7622ef88bd8c8cd4789c91dd931b4eae861384b5ae32e29994b18acda87857
Date: Thu, 02 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782970713
