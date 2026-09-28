Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9AC547046
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790572234; cv=none; b=GZMPBu0qfza+STWdoRVhmjMLz/gFwApI2yfj68cOwiwIG5vkWR2f5bZVbQNd2SZBtHs40EMJ+OviZxEz5682yV8VD9aV24EZ8UtfyqghPUxnQR6PiBo0/y1eBu/01glZnEvhUQwFuYc7gCOd86KAGa+19ESTr1Qs77lz7I/OYeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790572234; c=relaxed/simple;
	bh=L2ZLK/9WMH040kx5ZbxvYuPIyb9QlDYOIHv0jkIe/Ks=;
	h=To:Subject:From:Message-Id:Date; b=Maf12/YstNXLd2z+0NG2hhfx4jw+/q6I60Gz2k9rsOPNUPTgyBUg09m+88yVCvloogT+9bpg9Q9pGMlaI+ixW/xUqU82jqEa54un/hVPohgLfOnBxdtQvLnlsWt8gEb0Z/ErVH/FTWKyZbeV5M0ezDw2TZ92AJ/6DaINivLYPGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS4eWRzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS4eWRzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ECC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790572233;
	bh=L2ZLK/9WMH040kx5ZbxvYuPIyb9QlDYOIHv0jkIe/Ks=;
	h=To:Subject:From:Date:From;
	b=IS4eWRzZs3/WD4nnAflM0d2T0cxwU4oHvtL4WdOdLVTdzlq0gGyS6Ga6Jn/GcVyAx
	 +ENA9VEUneQMub3KUsic22F0KdazFS5pKCZhr3VVF+PkqBBgOmm1fGlb+ey0MRt+BN
	 wgAEcP6SVkCN9wcanEt8BOm9BkOlSmjP+qHQ4bpIk5Hd93r17XY/6ExfcS4D896VWj
	 389gL8+wXqdqixBu5SOwWeCdejDL550weHEUjU/XVDXAyvrLkF/aj9Elt7xtaowVH8
	 c7d+Iy1SpjYFS3/HDwHqBOvKIT4lH2CUd12jLX6GuxUD2iqTEH4sPUY3n7fPpQBMKQ
	 nvg+/qosgdjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B5C98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057223371.20566.4907325440319113401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c27b485f2dbdd001acea48bf7739b17631263ec3cb0b76b12c4053180c55b8
Date: Mon, 28 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790572233
