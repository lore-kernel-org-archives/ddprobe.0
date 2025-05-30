Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9B81AA786
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748638194; cv=none; b=EnpNrsxbpWuYfu4OIQ1jQsCJwdtUMpoyzM46ZzR95TGl5axQOYTxU3zBngP25RKwMzKq0ROUrL/48rzVF/ZAA9tBsS3k9Vejcj2hvTunvglpoTNq6jHvDlBtxZyT9uaoW6fXKR5eMFBMrvTCDX3nxAATqz+f/ut+raGO6GAloyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748638194; c=relaxed/simple;
	bh=ZCcLQrYQJOq4t+k43TgjIzX2asAlFeZF4chumSSLoPc=;
	h=To:Subject:From:Message-Id:Date; b=OisKqhn5NmCkHsWuj3PcIb6ZyJ+AiTs698IO8u0Zvt9na7kglfcmVmAu8Zthu88XTxlnfPipxJhiW+/QnRaJi914WccUt6grbXkO6REr1ihZHXPEYPbX3CO2hpSFJYcnu8m5YRz+GzZowbvDMLfooQTofrJhrl0KwCqcmg2WM+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQBAiu/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQBAiu/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD95C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748638193;
	bh=ZCcLQrYQJOq4t+k43TgjIzX2asAlFeZF4chumSSLoPc=;
	h=To:Subject:From:Date:From;
	b=VQBAiu/Uu3WFO8f32zupJ9oRBYMlFSDq2BrQaGWHL3FFdKNfuzVtIL5OigYQI3noE
	 ZlYVFDEXR26O9Enj6rZvaXWFHeXhaX9oeYHXI48qJSHr/Bca2RCYYZ+uM/fnnqfv8n
	 Gr1ZjX+yFXf9SJ+00q8j/4/SCnNBPB6nGoYfkSHFw3BGOVtgmpYeXLW2/YQCT9P5nQ
	 rfP2qDOP1LHjiD3ZR744nxfUrHq24ZetmCjDMwrOHbDhBmUEOIZPzfyuAza7pHHqP4
	 XuvwpkuN1/ZLJyIMRqqG3svb0KD/aWzLoqrGwQ9oG2GZOOTFon+eLMfyz/tlzSS/wn
	 U1BjfdNquPBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A81C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863819358.16236.17827151122395442403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e91e93663ecea937e04e853aa839abb5f9d32a5485f29149025352a8a28325c
Date: Fri, 30 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748638193
