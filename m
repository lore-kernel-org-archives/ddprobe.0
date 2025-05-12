Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A51A297A76
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747076994; cv=none; b=fReSj2c+9ylNRozG/BLTJFQJMqTsGjieuJWjmeTuLj2LPZtTocRbUhM6w7fs9syEcBKK88qLOeUj0JMbpateSd6pB0dJCAqG8qpDsrdf+wQBbuAK/GbR4rtup09EKNwU2uuInSYIY4w82DcqpDApjwdVJA7hWSgzbyFj/R8+4tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747076994; c=relaxed/simple;
	bh=AHm4+S778MPZztzxljfBRn9/euu0VUlL7CTh0hEV9yY=;
	h=To:Subject:From:Message-Id:Date; b=pDWz9WK7wXQj5xJguQDhSRJRZq0dUs8NM90TsWhzJizRkH6NfRAvaydhvicbBB64E8FRIOX65dGsfQAGWZ9bah6s4CfNotcdF2q/yO7PpN1YMNpw2XPp0JiWDgKS+dRNoOR3JcejOsFFATw9RLPc6fjK6ZMYJRlAV+IOzMBbvxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/mtfj1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/mtfj1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B7C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747076993;
	bh=AHm4+S778MPZztzxljfBRn9/euu0VUlL7CTh0hEV9yY=;
	h=To:Subject:From:Date:From;
	b=O/mtfj1wE2wEwmbn9XXDKHxhx/dJ79efp9y+QB1Gl+ZBdTgd4G0EF0d5fpV9cjaS9
	 CHEhb+ZAAP9uTiVvd/PlTdUx0LEaM1z46GxFYHOEr9r2mlVLqcvwyaDFfBHOta5RiQ
	 R9D5ekdAnqZxV37Gkm4nqR+Wmnu7iEOGVZszyCsqRIOYiX3QVdYNPSlJ+ztb7kdyeR
	 CggqTwF7cbsk1g+V4+TnAAjkzswKvHsZv0xoiNAF5r3OPdUBOSnylvssF04sRu4eeo
	 joVGqzjVc1KAMSaKujQbvN1sqxcmpk75aj1vOEikDWEugY/u75s4AHQwA7d4MY6mmI
	 etDYdo+Ubekgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A8C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707699358.19682.12366006416919410525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6743ece61778773af3ad4de2b874683a448bfb2f5d7c41f3d8f17c985a583e
Date: Mon, 12 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747076993
