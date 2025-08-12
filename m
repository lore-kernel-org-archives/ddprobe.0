Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF42E974B
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990394; cv=none; b=LzInc5pZuL3RdkRucvjJLCuxUTDdVUx+A7Lmys5QYB1JwGngEA0POQwmi1/w23lJc9bK8dg37oBnXAa8e5HObgqkO9f1k6oLoyU2iH7y0513nCzRiz5Mq262ZyN3rBOVpzdAVS0ZjMWV+kbG8wY6qp7Mi8PCIGzutXuUWab96j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990394; c=relaxed/simple;
	bh=V1vKpzpyvZStcxMwpYD9oQFtnxkkQ/hl6gRuXegW63w=;
	h=To:Subject:From:Message-Id:Date; b=obpO18Mp17a5RGDqeH4B8zN4tfujaKqCUoo+RJGOH7Ha3dnf8MG6ejR0pX5T1FNIVAMIzxzu0/kSR57ZwMH7ayv1e6LYncy0VMZq1d3duFzOVVhiYNrkoWooRyZ7/1n8LFTM1jFObfRcwV/Z0JG5RqsgGcjZ0cB+D1Hzd6KAgYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxBaRxNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxBaRxNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754990393;
	bh=V1vKpzpyvZStcxMwpYD9oQFtnxkkQ/hl6gRuXegW63w=;
	h=To:Subject:From:Date:From;
	b=SxBaRxNdn6o+KNGAcCj+vCHINil1ZWHIookQcz38cwW8o0iUxxdfZFkYUs5YGhjda
	 WvuvowvukCnwLW/jUBs7TxrP9qMqXxVfs25QzBBcIGPWkowh36CnJCAO6MVm78zFas
	 Kdanvgr4K3maqtmuIkEh0nbwh9z1zA9l4TIvSLwdZ/5UyWzEjXzKxkcixSK9yyuI9V
	 W/b7bdn4iENvn4yrd1cpGYbTJb4py9XrDO78RkVsyeehkkCE01jDXXpkkVYbecOnoR
	 acIGtI9B6n4EaaoIKf9Nx5e04Q3C8wdgFK4/l2fQfQEimG9ymhLhB0Td9/7YzzLWNW
	 bRx64BKIPqLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7BC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499039358.11139.12898775110852851664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591d08a07340463994a51359a08ad892ff020d381eaf1b7e5d28d836b099bafe
Date: Tue, 12 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754990393
