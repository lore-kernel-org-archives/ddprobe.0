Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37374E555
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779636154; cv=none; b=Yqz8LiAyt1qdJvvTp1hKgAGbE2VeW7JiULAaKG0AGJ1dgt0jdaTHoa98rIDcl1kMW8jGuo8QhRhzdc6P4YCMgN82RPmxsiWjfiMjrcCh/NQ/zUHfys6aH46BrP92GR0OAkfsKZkF9KNIGcxTfKlxCacOe4/rCXH2HDQzSnJrJ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779636154; c=relaxed/simple;
	bh=jLrByHV8P3UTPBgG85JVEABlKDkDBv3/+shXK92doDw=;
	h=To:Subject:From:Message-Id:Date; b=OfEx/a10RzKTrJQK/PpBJb22vP5jZAOILiNDGCdh0FJj/3Cb8xAeNZr4nO+LKCsSodME0u51vv/FegH0Bt0QnzIO6satztGGzpsw0Pf85Mdd3F6iwE9MwULY+HwzinA5NYPoKtmaIPZ7BWokasnPZYjlXxUWOPzoLQLVym6WF6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le10nYx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le10nYx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63D7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779636153;
	bh=jLrByHV8P3UTPBgG85JVEABlKDkDBv3/+shXK92doDw=;
	h=To:Subject:From:Date:From;
	b=le10nYx/yaisdAxpPJV8TenpGm+8mU/G1FruxaHd6m2wTr2QAWgvKWuGGvSHbAfDx
	 MWh5VkDkOLj/uNm06GLh5W8toV/+BwxdWZCW5Prb5zUTTVcg2ipB8i/3NFzYmB5VEe
	 aI8cOiKK8cvyVESz4lhKpQKFrMY3KRe6c0SdNTx0sealA8e70hJx60cW80oKUnSfTg
	 XDXZyfvTbrVx8jtP/nbO9v3eZokojNODKd212xO9a6DgMg0KtWdYEWCK+sfl+RPbZH
	 zzL9g/jI6Ftd57jfLmrnD0+cGRqnXjSNmfOpOg7qEle2n5EorKjnGrB+96dJSIJIht
	 IhyJfopOlqDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7DCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963615368.30572.427498995454561042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17d14946b8ecff075e9abfd29fb021e9c2f2736215e2cc4026a1abd861e9c52
Date: Sun, 24 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779636153
