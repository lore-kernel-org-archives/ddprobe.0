Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2AB27CCEE
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777265253; cv=none; b=DEi9HzXP7sBJJRADPLZC1PONAygQK8OOiZ26r21xz4i4Bacy+9VcI9yPGYw78PpFZu0frlhd6B2v184kARLpiErL+a8fCkPeVQig1g0IaUzR7kJRd6OcC67yAiUXvljas+1dcL1gTsKWIrvdIdbaJG4wL4Uxiuy6c3cgNrUUSjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777265253; c=relaxed/simple;
	bh=klINvsvME6zJ3IoLs5X95TRbFYT41/c3JehOBz+31hE=;
	h=To:Subject:From:Message-Id:Date; b=BKdE4JPnnv3CCR/2bEYA+1aQcG8mN3cgoeXkIfyBMZHzQk2unPW+x1X/vlFsUgBQKTe3jUz4qxr5MsKewKtd+NySXaGB+Dt6SXNR/4d0IFm8TVX3G6bAgghIQD9o2jfvLduKbNnX5nIPKuV8VM76P7e9trXPZGrH1GkRaLcIF/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm4j3IL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm4j3IL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13BCC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777265253;
	bh=klINvsvME6zJ3IoLs5X95TRbFYT41/c3JehOBz+31hE=;
	h=To:Subject:From:Date:From;
	b=pm4j3IL8J1HtOKgIFt/8tXkA4WoPk1/rF7TNoq/w87U7IAguzgm40M53NO10+s0Ff
	 lePf+Dugws/EgMqt+VW7BRu5b6YyqFxbXv8yqngFMolBlioFCoM1+S3dZhV0zlVPhu
	 oeQdhecSj3vbnkXuNyUIes+c5IhMF9FyvpxZSLY4eomYginz5Krn5GFwFj/5IBhJEA
	 L/LQjorRZfxQrIDUAr8FsZMQGfypDj+MU9cPj/BZwmV7gGjfoYqTENE4mlIhwbHaIk
	 ymDqXq/2s+GGshpkYq2AqvngMDmaS97jE53AgdELsK6ksiR/a/vNCOVgfTjkylxEWj
	 ZHyyNTk7b5ULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C89FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726525368.7084.12514264056520326441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e37e4b3e317d01493622c059f4bd49bb8aac305a6837af1d0d26c857f08cdb
Date: Mon, 27 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777265253
