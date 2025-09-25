Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97030CD92
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829794; cv=none; b=pwg8Q5qNCTS/bYKL2+7ttQaCn803fkIIjtiSMndi/Zy+YIZerKHxAGAx3h211lUfx0vy7DWuIPUi0v/pSr8qQb+rQZA4dG0BGHPIkCXu3JBbUy1kA1pJv7JlOkzz6+ntLKD+EdmGhEhEcjSr03jryTbm048028pKcLQQfLUVfK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829794; c=relaxed/simple;
	bh=kPJ793HWIOUTbQDfPFprgFqziw763GOMLhD9hOTw0GY=;
	h=To:Subject:From:Message-Id:Date; b=JP3tmrHeXffpbS9DvlZJ6BhI6tuC4Pk4rVvPFf5j7r9dTMZD73qMkxhfNLbLTEnHQp7SpI1uiz6pkCWB6e4Klb/yuDlve3er/99Fd6LH7czaF3bUKGUS83OO2nJ5YSOys/9suewy4q8teFzizDY2uLPZCPt5mVfOJU2m9vdcajE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvwbO+v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvwbO+v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758829793;
	bh=kPJ793HWIOUTbQDfPFprgFqziw763GOMLhD9hOTw0GY=;
	h=To:Subject:From:Date:From;
	b=TvwbO+v2FOZ8leItp3HR1eEqp6DdSES7d7CHYDNjRt4ijEt4vEu6LIcdPbFvqJeqc
	 AD5sstmMN181xOi1PkEqqNm+Sr+uovpf0sUPTIClbOp4R4disGLOm5KWcbPawFnBcg
	 i72EahCoMxgYQNGrWIdWNN32RPYccmhajFuhZsxaujG/z/EF3dKV6rxFVI9MG6nzSG
	 vudon0Sp/uE59ooejKwEdzcy1VIjDL4iIXtbxilE8dCI9AxaOawFfco0YTfZfnHXqD
	 WIyQSNruZh9L+vFfAdsz44ZD3RLPzSnb6wuohcVYznKDdujXG/SnXSmsYPj5bPT5dr
	 ZAuPRtpta6uTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D9CAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882979359.20418.7148131739826288305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3453829c9a0e5ad986b523827aa95981dbb114fd323209de654852738f772a9c
Date: Thu, 25 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758829793
