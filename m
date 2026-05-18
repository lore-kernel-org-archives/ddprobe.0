Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1197538C410
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779135034; cv=none; b=Ys+5x4XuVJgmHo6bLYRCyOAwK/PqEGEEP9jG6SyJ4Gdvl75s5BZHFXROT7GHiAqhk/PE1XhPAam3BX9zd38mrfKEsufJldIxcGUQ5GNFhf1fAEYbU4Z8HJd541f9zdBoEop7HPRreWnuI+By8K3QQSKW6Q4vsOO621iVkCPlx64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779135034; c=relaxed/simple;
	bh=eCdF1+QuZrn3ijLgXXTSiO89iLpab8bBsRj9MqGKu7A=;
	h=To:Subject:From:Message-Id:Date; b=Y2I0lBQ51+IuINTXDkaa9R9WsnhnXNa4155OJDrhlOS8upms25cj9kugFvBy/vYok/IR1vSeMvWg08Lz7dGd4IxOEcHpy924a+MvdWLvUQKijXsOx/P3087Da8NzozDgRLHBdEYbQQZvHWRDeDnxFqfYSB3i6LMkI5eUdUA6pcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGF9HpW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGF9HpW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD31C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779135033;
	bh=eCdF1+QuZrn3ijLgXXTSiO89iLpab8bBsRj9MqGKu7A=;
	h=To:Subject:From:Date:From;
	b=aGF9HpW81f46rk0JsstGHdhyUS08KVfz1M7RWJ2su/6mnzCmxWTqNFwCv4LT5+jom
	 NKeFzj+uExRJRH7rOqkMwgUpJIkNXAwWVRgcd3OgaYQNz0xWuNQS8IZVSAm/xzUkUd
	 pAqCaojt8Pkn3s1WqmxoLSKGeJhc1r4KSmQ+xVN5SXrE1jGE+Dl7K3ME9Po2xSodgA
	 zU/3CNDlyNbRE+NUjkjm6Ehp+94nLdpXl16JmesPu52QU4JYveLaQ8sbOZxbcvAtT0
	 2AZ/dU5QbB/nnvgXP1gaNB0vbXQWie/G/Ppb5r2gPSDz4XRvvnhlswVFpuUmtqNLva
	 mOn77ZcbHPaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA393CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913503368.4753.2161209415462705112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e9575ec2a29fbb2882e800a218d0e8130ded72764b53151ae0f4c6e42bcf42
Date: Mon, 18 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779135033
