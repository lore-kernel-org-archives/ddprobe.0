Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80B25A62A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737920154; cv=none; b=nSavHwYEgtMMw1qjSrwNa+krvO4gWThLpelli8tKVSrvRF9tNfJ+fSl6wTPVUvO2VVYVEKKTitiCkS8/u6lG7nE9Yz1ZodSBWKatv4MVAaAJsuoBIN+cdQM+egIMvRI0hPzhksEBiAWtr9CKcD9NJfL0WpOchn+Kd7JFVFx8z5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737920154; c=relaxed/simple;
	bh=EzwLfy2qJhsfPgD3KpSYwiHKzdQSEZcTgM9mGJF3s+M=;
	h=To:Subject:From:Message-Id:Date; b=RC/BUyrdw6w0ySxetyQh2bcTOp7TxzFxGkF9i7sZgUM4SS4xqfZKN/2NieTS4ZQshhvaFmOTysdTfrpIR8baNHurukPamwE3sRu/MsTGbeezFnm0lY3AwP0hRbEatroQ4sbkQ9SMExWVWhL8b5MJg7wzjLzGckoBMvoNbSelvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3sw4lyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3sw4lyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5093C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737920153;
	bh=EzwLfy2qJhsfPgD3KpSYwiHKzdQSEZcTgM9mGJF3s+M=;
	h=To:Subject:From:Date:From;
	b=S3sw4lyW3PoIYwlb4lSHWskiOR8hSHyVNgpo4hNsZZcfto4NAPYz0o+lDEZ+iWrw7
	 5np8rBI4f3ufzscwYvERi5eWxxw6JuH/FMVc6wtxTLiSg06NcNEyYpRu4TcN0h86yG
	 uOPeKuAGfh7u7OyQfn8Zfg15yuvKuaqsgHeN6tMHlKyq9gWI6WuBWAZqEhY5fXNOMy
	 TSDXeC7LMXyy7byVlrluw7khVSeG+MCqNyQTDqQO+eHWE1IgKmNcyzBKvoF/Aqdo1H
	 bUYg2n54OtD+sR/ok5o8L5s+WRSkZBjnXKugTDp3tO21N0cbtX1bfrlmKNpjI1nkYn
	 Y/PvpuoMo92lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB6C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792015359.4842.4401988098011366709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d7dab6c957f543456f7dbd986a5e5d7bdaca2a93fb9840e6ccfb02b421fc1e
Date: Sun, 26 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737920153
