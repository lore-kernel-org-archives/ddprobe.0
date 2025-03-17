Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35569146588
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742243994; cv=none; b=O1dfAshmrJfXHs5oBpLL+ZaVb+Mx+HkpBjUzUtwKzLLh8dBrSjcL7ZH+8CQ/kO6EVraDUy6fqGUygsT2cwtuSwTx6NvouHuFNrXhhA9r99X29+J+GWp0klyM5oJiXFHJnQvZ17SxlLChIu6cm1o97dxpXL9AZauskt2Kx0ggFrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742243994; c=relaxed/simple;
	bh=voIfhFdOTf5Vzr1emkh3X/8IeYdjw+XMcDF9ayePoa0=;
	h=To:Subject:From:Message-Id:Date; b=TPZWLRU+/cTImyZnlTiDRShWXGpKtW0s+cqZXti2kMlNTKz8Vq2rJQDKdSwQh9cV+uhXgbntOS1rVYjn+wxDaek3Y1ahgiHgRl4bXtukypX2MmgPGFqDbIbi7jljaeANTWC0fN6Hv7FfEJC8RzV6QXHuRXTpX7SoWJoENZLat2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBOWdE2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBOWdE2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4525C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742243993;
	bh=voIfhFdOTf5Vzr1emkh3X/8IeYdjw+XMcDF9ayePoa0=;
	h=To:Subject:From:Date:From;
	b=FBOWdE2aDH6NdwaGLUxX977W2FF9iurWyiXhxIcStoLqIL79eBH/KPBKSklHd8+Ci
	 znwpIlg4TGvRGFEJjLGMV0R91+7nh9uYt9cfWxBPQDJb9NNTu2hiK246sOW250FCEr
	 lnWIMqyIujZtd2coLHDvd07s2jbPsIaMEVMusNBHIOpfheI6wWQpPC6PyeLFVTm4c6
	 MyUZuProsesTsSgBHhtllXdSSBhoh1OTPO0B58xl5zWMp0N1/TXwOH2HgvursaDxoT
	 32QbIDzbnT4fktyjCNx7sCosHv6Z0aOy6nOtvsEDeXSHxJUpOi0IUJWAkVrmBgLJYQ
	 nZKHimS2tVsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B2C28B28
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224399360.29575.1982900288315910543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b653dd087e178f31d6be22970728cc85d6357f90bce8efd033798a2afbc1fff1
Date: Mon, 17 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742243993
