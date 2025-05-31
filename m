Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534512B63
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748693994; cv=none; b=VCHINezsIt7h9J2DzovdFxno1whkpQX/S0FFjiVPhiXD0Dy4DPAjNBVysO+1SyC/Wb+BQTs4znQyY29gYAxLepztUoknCb//ajpMVu1H6FSkGhZdsUOX5j1nvEeqTerTeMyCP7CWY4Qv+bCkahmQk3LwZM6me30Q1ucEhWC6d4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748693994; c=relaxed/simple;
	bh=wsbB/NvsPL/cEZ2sDlXTwRtf+sZhKL5Ikyv4Zr1x8Y4=;
	h=To:Subject:From:Message-Id:Date; b=OlDxBqLY6g2n4sep3eTxz2ffKYQamggW9wiXzVuYmzP4uyTANH+U6u4Q78tYugpVg/9COoQ4rYKmXNoiYx3XfVU1+EwIZW+u91Y63mm4eV8KTQUUbVUL0WnriHTl0FrJubTNFWrH8XJ4GEut20giidttICBRYW/flrfh2KgeI5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpIiqAx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpIiqAx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA48C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748693993;
	bh=wsbB/NvsPL/cEZ2sDlXTwRtf+sZhKL5Ikyv4Zr1x8Y4=;
	h=To:Subject:From:Date:From;
	b=hpIiqAx64LprCtWAJXusjTyKpkCNjbNQBM1P7YfejXoiNwFxi9Mk8CvN9ILyRxefZ
	 xbGf+J3lAT0oJnpi/VFYAj3PTXTx1RoXRcS3iDFikzQq9I1B/wayIteyRAa4IXZSei
	 udkhy8fpVlCoOjt6lgcaRN/WQKLVp5zPgc1wrval70l9rqBKpzjeYrrPjPywZIiKIY
	 UqGQMKyURneyuLvwDYg/0V8lJPgDj2ePoqxijExoBKEUDmguXxy206YZFgYfY3IzeG
	 wyZyS/LueDj4MVS5NzA1cQRc/NBqSSpXQNd5AV4KRaV2+PZFW9thEFwD+5q8n4SD2G
	 pnlnoUYNGKHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A027C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869399359.16139.18381378153902107437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e218f2dbcf650ba71096fc66a2649e39b4ed365e93a9023f9938eb3a36c99004
Date: Sat, 31 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748693993
