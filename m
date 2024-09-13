Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D0640C03
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726196154; cv=none; b=bq0616SpOs/0UasxEslKaJVOAC1QaZkmY3FZYeBryVFkB+sc/yp46PUHcQ14aIL0/AKAIGLdwWHAnvfNz0fSAlBLzjQiF9VlHz1MhLfThA/9H12OKbAxrQ4ceV6+bmId3gKv5DPnIzuxu3bnAU5pybu6Elsx2hQubx6jON8vPFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726196154; c=relaxed/simple;
	bh=kbIb5Sq0Q8Q0Mu/V5CMhfETbWsccS4ykzqqleHy69h4=;
	h=To:Subject:From:Message-Id:Date; b=BFKdYKh9zWwwWQiga2HqNPBj2v4KKtiiLs7TqILEPKSB9ml0CNkVHnOoxdaK2PRPIfdrz06yabkiowZW+hAzrz8ZEKynu0rXLCekjVRbiQH2ElOgd0xkGNvmQdOgRLmRFCigBxO1fLb3RQbNzizACP/mjslCGUnxWgoTY4NV2Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHs1RuLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHs1RuLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0319C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726196153;
	bh=kbIb5Sq0Q8Q0Mu/V5CMhfETbWsccS4ykzqqleHy69h4=;
	h=To:Subject:From:Date:From;
	b=LHs1RuLaChQgIfD1oOAsN+564i6ElZZPUJVrlWFUqjl00f7vwK68vHMBiy5m+3pLd
	 RCFTK59zvM6P2Zuh3ttFje6g+flhc+8qXyfypGBP9KMRFkhLoDfEPU6Oyjy8Px/BIw
	 vj9YGYUk1WfQHV76p0OqUTERjhidyG5eK8Yd1vjIFIW/WFlrZu45q1UTBb/Ak2qERI
	 rG/+MM9tc59otYJHr5SliebuzJ2SMk0AapNm74IUebJazxW21O3yzN33X0xdm7PzU5
	 P0BuUzKZJMW7rXxspkpeALcat6F6e9o8xoZqNK+8/I0bZ8iAYg1nl/YBYInfAHClcR
	 ogKWAU/8Nvayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C35EEE27F
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619615360.25123.12762552674728929966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6fc0c41c6e7be665271fe2915cbc793f7760282082ba7c836e033f433100dd
Date: Fri, 13 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726196153
