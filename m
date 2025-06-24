Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1835A18641
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750729194; cv=none; b=CtjBYpppNrCz6k2Ol+1VERuz0C+IAWrceU2l4BwUzJ+AJwajOW5zkwyIRAGezVUdmIZem8HoHP6flwL3Sz0gEfkWAGdHyhvi0tIvgqwJKdRjtC+bC9ZhHnnHjKWB4qFzjbL9JI/MhsNYBPig3NJrgbVDTtZ/cDR+L+7ct85uG+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750729194; c=relaxed/simple;
	bh=Mbv8A5Vmou4ZWMs19Qqtm6TvkZs/7/8cKM+3B0rJeJA=;
	h=To:Subject:From:Message-Id:Date; b=gdX8HNOuAJnSJAzL/JMcpa3L8ynxKeukv/fqGfXpynMUyFj50prj+SYdXZxfg7wDd+rK52dQKV9mDDNYc8q8NakiBgcXvcRaKF2obGbKcfxGDVvTjzg7q1hOwWtmKjXffsMK39WeYv/xYFtGFCm3o5HY4xwBIfT0xi8003zAvmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT4w+ddk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT4w+ddk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D901C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750729193;
	bh=Mbv8A5Vmou4ZWMs19Qqtm6TvkZs/7/8cKM+3B0rJeJA=;
	h=To:Subject:From:Date:From;
	b=VT4w+ddkAAdrSl7DjXhHp1IKe7SVGJLA9oLXM3IH0+HVB8R2H1bv0rmlG7qy8jdAL
	 cq8HeuIcZxWIEd+vhVvAj63hqizRGlRYRcGgrBbNo4/ebcLrZCJKHwLJrse+G69P5x
	 bCFoA5uGHb6dP72+/EvkSINvwf02+N9PuATmVsKDd0hxOM8euB324NmdiuvDQfdbfN
	 dVAg7LsgeUfM9Z6t6tXisM+00EyTkScGje54HwkYEigLEbQbOm21Fb52FcpNg5/Mhm
	 IKhIDjAraAFiniNvDquw0tbZZopGLNTxIvHRL0TsvZO68Ya3AEQnjnDY+kqDvggQHw
	 eAwubHV9waLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B0C7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072919357.11621.7643956467215434384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8411b2d1410f08e3f437858619958267ab49e9432b57a2b900c446c186fe90
Date: Tue, 24 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750729193
