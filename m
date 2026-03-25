Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D133803EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774472094; cv=none; b=fjs34lEfyLGd+jX6GuOYdsGlWuUsAWh/b6/KjGDt0diagJ0WniLT4RrRrZSYM/Ql4CSqKCqaCmLdkfGHeYXiCQkK45jw8EI2fXw9ewdbQV3NaT4m507gBCNgMgwTouKlq1PMSFAjk5tDFJ98l2PKf/5Hg5PVYMOiWFHo5cdthyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774472094; c=relaxed/simple;
	bh=cajvYCBLY+t473PXLFg6yaUFbCf0oWmzTkwoBKhJgQQ=;
	h=To:Subject:From:Message-Id:Date; b=I8tq5+1GkoYKu71wP9k/M2iH9CVMLiJydUGY2ebqIjOLK6GDDcXUxlshK1vSE//dCHCGZeNBiIx5xIife5UBNoUX4jYJzzPURm32LyEb96r5p9fsqvbVhwTkyGaibnNN26nErz4dsw5drk4ktyvIxGddujKnbRQWnznpzLxA3jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSQzyGaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSQzyGaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774472093;
	bh=cajvYCBLY+t473PXLFg6yaUFbCf0oWmzTkwoBKhJgQQ=;
	h=To:Subject:From:Date:From;
	b=sSQzyGaFBJl1SqfCjxo65220//MTpFDaPsFAKjaDQMMLrnzl3GPS9W3C8EgvRbMJt
	 As0NrmqxDbIdpXv20cWv1AwJSbpwl1/PTINSD5PvS4L1tggU8hUsUzOEub8zWKFAFQ
	 yHeVHQWL6GOhj5lMDdQj++EKTxTi21zoIeXf8+MeF30pxJo5CNPoxKRrmzHZup5E0D
	 z2fnrXTtZu9rsm5pmow0uWQJUh+NvSuTr+eijSJ6ymqgt/rMAuojmmpKus03NAVfHL
	 oWCgx/bb6z3fS5hKbF8lvRzsRH6iIUi3u3hnDj/DimE+CVJdeFw088SIJd/uNeyxTw
	 elFTXO7ZUV4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97480106B504
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447209358.12504.2986670374722809061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8572659b2c13544af8c6db70c7151ffbf6e7c31cc0b08a6414c50112a3ace8
Date: Wed, 25 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774472093
