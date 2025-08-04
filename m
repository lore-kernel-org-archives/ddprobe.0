Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306311DFF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754306994; cv=none; b=tBbQbaHFUNY4Cmm+UqpCgNVuiq3TRcv6/ShDlW8HMb7gE3opMDMvQt/lFHudkAGuWmPjltQmADInqIS0ktRTQa16H6vF1WxjJQyGuBdkpD4uZRDIm5PtRVd+GDS3/mjERm8iusgzuHxGLzcqapMnSU5FTw1a8Vaa4/89M6vfhLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754306994; c=relaxed/simple;
	bh=9Og16V11So+ssRaSGl7foMbwWR+kB6t+ACTCBHZZpcs=;
	h=To:Subject:From:Message-Id:Date; b=VCabCrSo27fjCUtfw88lx82aG9ic9UM+hC4wJUJVCEWHUvMIeQ4XadNHXkBojPCb1tTGFjB3nxrYTx8Rs799vC3uETVBDjfFaARzsJzIzZFmX7fKFAlpE7J3Cs8joIeKLObtJkCbR92RGRHW0zZsY3cvMmLf7MJ9wALJAdazmds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZV14bLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZV14bLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E28C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754306993;
	bh=9Og16V11So+ssRaSGl7foMbwWR+kB6t+ACTCBHZZpcs=;
	h=To:Subject:From:Date:From;
	b=HZV14bLgKtbnB632vG7Liyo9X3pgbCYw6yp35GqREupTMatVFTQBLB6WWAl5YTLnD
	 YA4XdFbNM+jiBiqpFVzmHheBITJ/k9JwiUOOvXq0pLsc15QJVossgBMePVQymSN1dL
	 Q3QaOi4cRDxYmbPkkBKyo13uz+iE+836QwHw7rc3WV4VI5W2rquS2DIsMzdtCIKdXb
	 t5uOo26gvtB4x3dAzj1jveOstaZea6XZ6HXeAtLefIhWAK3/9VGWY7gPC9z/FJgDdM
	 FxO99cboYYPqC4gbhwc+IRbHogvo8/9U2w5N4NTkWWSLXT//D0P2kkOIQHDKW8EMis
	 Epz9HsNxo3huw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90365C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430699358.9346.7876978668626033329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0e24868066858e733c3d477822bc1be662de0a659d9e3de34853a0a44a3bc6
Date: Mon, 04 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754306993
