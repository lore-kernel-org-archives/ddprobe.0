Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0C9376A12
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789246234; cv=none; b=FpQjf3YjAOPoYLUT/Ftb1LnxmSbVStK4/BAsaTOZPe17de3mxkHzM4Vju7kDvuECwdRreH2iKGduyuDDQEZVjblUwBe1eUmrN83slLtUwJ4jkCno/OMQO8B5FTbGo/4NsjFXUcY94Hmyez8b9YKBX3IT3irfRl1d9x3WpUB9dko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789246234; c=relaxed/simple;
	bh=AwiSGchQ47ALyI8dkqHTH9loP9zhlTJa4kKE4WBKkrM=;
	h=To:Subject:From:Message-Id:Date; b=dVitQCwK/yOak3N0boGxzUU2x/1q5jJrJvwZWVTP7symIv2smcPX/t0yX6vSgrL55MPwkvM1bFghOwnjJcdWkBmj9WD+4pO6MdjH6wKm3rHEB/MIqixBsgkztUf9WkQ5fN487t5FA5jaerc+rHnt6qzdqJKBEX36RjL8Av7VCK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmpHLdau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmpHLdau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DABC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789246233;
	bh=AwiSGchQ47ALyI8dkqHTH9loP9zhlTJa4kKE4WBKkrM=;
	h=To:Subject:From:Date:From;
	b=kmpHLdaueFf8rJCHMi1FJKjCHBj+4CTNGO/8tKi4+jqKodW/AElzxecgf+FyVUE7t
	 rLQTQyKPbNOxen/FU0aqiLLw31HUlvngbBWI5fH4mNi2YumcbCSa7nchBCQRfKIR0x
	 kj7jbMfP7gKJT6ZJiB5JSuCrnNG4A+2t/3Bxck00cGDqoTNvlp9V0Yog5Vf7TmB9/8
	 kVH9ZfokkJJnCGBaE/ooD5hklloSV5KRuUmHnQ3MZd8eVaDWIfV66PjtmtW4ScwprW
	 QzlfA532txogS8l7Fm8SKMbIUY5/ptiVIX3LT2Y/4F/reEbht2CTK2smL3n3Wyt8/p
	 abPG+4z3PznPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5D3C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924623368.7365.6997134227589565611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960ac658eb7dae6b83894397c1a537e5026519ed7bd3d050529281c302b7213b
Date: Sat, 12 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789246233
