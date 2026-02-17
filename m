Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FADB329C56
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771340694; cv=none; b=SvqUTSRwcWIz5JQiTHomPICNPg1gqZT+v6wg7d+xGoQhctsmtHMoNGYNwwkC5Ha8RErPDfnigketXkOAUK1bXfgbK+K+YQM+GWaWUjqXMpanHJ4bevMPuKgxLj3365DW2LZX3D0gz/jk26dAaBZXSAXEru/sxNNvKAyoSW4i3F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771340694; c=relaxed/simple;
	bh=zRouAZtV1Gw6N/8sII/AOvmtDvnmptyyvftHwboU5Uw=;
	h=To:Subject:From:Message-Id:Date; b=Fh2HuafR856cusmayjD2DxRoeE4My6KUah6jd+3sdo42aBpmH4RxHta4Nw4BRDhwU89+9KB4UAAW1dmi1dePGmZCQOIIAIcgnZFjEvDEOsxmUXEL47l9SkKesb7Fmr1uNPY/TR0D0s8t21euL76MHNpJxHvYs6jed8KlqdkyScU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d88s4Nls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d88s4Nls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7E8C19423
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771340693;
	bh=zRouAZtV1Gw6N/8sII/AOvmtDvnmptyyvftHwboU5Uw=;
	h=To:Subject:From:Date:From;
	b=d88s4NlsvFsEgumUefpArx8CRnFrUdsd5BJysQvW5Eb0vJiB5pNEO2d1Ui5ViPkRH
	 LFLjseiMThTxVTN2mIC+UvTaryVindG+CxQmtc5V0Xn+5P+/1Ud6nOI//Y36S2aWXr
	 UIM2MHC0mM6CnowNLQ5RvVeW0SBu8vlpkEwdigXjI56PmBti2/U56rpTduLmn5tEwS
	 SlduvGLxQ9teXTRjgEPwzPro0QVnu8vNNB6pk1/gz2JYRvxP9aJ8tS+JMuwHpos6NA
	 Bb7LxbNOHfJa9SdsSKXKalXsMhGi4tnpM9FxlsD9uTQQNM9/Ce0uHqbmkk+kI4MnOy
	 sni7yxXSrt7YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7FE909AE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134069367.17526.13306752511975283611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680f3476f16f7b605d7133439a877fbe2ad860bc7e2a3837318f1aaa1878f80e
Date: Tue, 17 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771340693
