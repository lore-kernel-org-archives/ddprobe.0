Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5715717CA17
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745141995; cv=none; b=brzuNM9Y2PBrR5J0yrK/5hXvA1ah9P5rsXU8Uty09z36dgmmpMBtPnBx2JNndCKjoKix2d4lRHbb7QJsVmYhn7jfjtEzWnHwbCTHfQlue6NSA2CEIavsCzVG1BQV6eMcYBH/gSaAPJhwErXroPqeociFkhF52JPzdk8Yt/TWY2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745141995; c=relaxed/simple;
	bh=NEackUn0VkDN8D6ObAoYq+4JFaZhiYx1kbJn4+x14/k=;
	h=To:Subject:From:Message-Id:Date; b=Io7FOZ2Nyd2nHw/dW7gMsqzp0npqj8LcdUFotarnLr27l7L4v3fUf5qm1d7GxydspSQ2O2qEmOP0zAiOZtnblXiyLwQgQWjLnWAggghEMt7S4+6W3938Mb5KdcPKKxIHBjRbvDSUF1fpUgHeIZQkEmAVjHvR4vWgTFEypO5JFa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQRIKlXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQRIKlXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99FBC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745141993;
	bh=NEackUn0VkDN8D6ObAoYq+4JFaZhiYx1kbJn4+x14/k=;
	h=To:Subject:From:Date:From;
	b=RQRIKlXlOuU6VZwigjX2T41Fo84Bm2Wtu3/pxgq5N37y+6IHwYvk/WPo6jkwiVWdd
	 +zuxljOVuCwuiWKahC8kSi1nRvL3+Tf6ZNb1FjY76ex5VHk9ZZfNZ/mpW4O2n2gqoc
	 keFO6z1A6kpSxHAewqmIkUJ6AcVUUUwzh29DxpuqiqVP8OrJk4NRRJGbYgkrac3WIc
	 CmRR76Y6fQrT9TrA2isH8RxFeoO4z7Qcp2Zs1yagG3cqsudgihGkDJKoVDI4d4FlCU
	 s2QGuyriE2FBWYWxtTOIu8XBvhd0D400qN9/8BwE0efvFNR6xGUWZMnyyW78qzCB0V
	 9+Tlt0NGQVR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0132C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514199361.19694.5891478365561697779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf0740236a79e7c3ca1999d8d85cc65e14296eaa3e683312a20ae78346d2374
Date: Sun, 20 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745141993
