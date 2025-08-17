Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2CE15E96
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755397794; cv=none; b=PwDwHbzuTyKX/zdwZl40VrA+21h+c3jLroXmiLigf5n2bVPoB+cRhE42I87g9jc5tN9J9NdyFDMxlPeMTe8ShyX9Tea0F46Nq99gecM5ECbd3lN31E/CAh1sh4k4HVmvdGEE0HLVmV4BrA2eX5yEMurq0BRamw7x+XRCKZ/PefU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755397794; c=relaxed/simple;
	bh=zaURkhHbVGrGHWg+nucZNWPSZo8Gu2t2ENabcKShMvs=;
	h=To:Subject:From:Message-Id:Date; b=MOVGdxVro5N9mIZgRTxxF0vYfA2bpfrEXQ44BXU7n85avpWOj4ZFAZNiaKVnPyvqLff+Wn+pZS/O3aSbgcUfbB8IS4gg9fPN/Y2PuQqKPOWSO63p6Q9fsMe+EmJl71dBRUnhD1W5QAFs0nSo4pjgt60NutnSRaPBqJ/Qcb4E3TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsDs5AyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsDs5AyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CFC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755397793;
	bh=zaURkhHbVGrGHWg+nucZNWPSZo8Gu2t2ENabcKShMvs=;
	h=To:Subject:From:Date:From;
	b=HsDs5AyMvG7xYjVwgXTKdbVwhYhG3N64QZLb6mIrFglELu/CuBvBHdldWslnRf/Ek
	 5VzDPhJx36e0rNV0YN1E09nC1BlG9I3HTEP3GWe+Okrt1/T7TAliLarNUszqI7arN8
	 G7+oE+7IvxXjtXqLkvdHc+QC/hGjd/9llef/AugXEJ7YJUHxC1/4pgImsn5nIpyRR2
	 gz8NQlZ5UBX1+3iXwl+i0RNRioZtWn9/MNz99WLRyJy7QLZP11h7TvrQssoEwDOHuQ
	 u6aDayOkNB6S4C4cOklBavlm35f3PDpvsBxw6AulQbEUnNwRY8Lqkh9Gc0gILwQEYF
	 V1yq1E9MhiX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97615CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539779358.27024.6987193449975372095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d38449b87ba16e797ef2396a10f3932edc5a63892d0d4be3fcab7b9bef99829
Date: Sun, 17 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755397793
