Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56841FBEF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716782663; cv=none; b=GrmboLveXJpsi28j1M6917DcK2DT2kp8Iek4nBwUha5vFBy0WjcAKkoK8tBKMDssSUAXJrFB4674ykaE+bGWOA8SkzwyA5giAIbYqwUTL82Kx/9Qt4kAJRozp1hpzjT81eur8lHduKlEtCN0UaU1H96pWMBGQV2UNvnSqhxwWys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716782663; c=relaxed/simple;
	bh=/HsKc+P+4PC55kaQ2TtFE07CFuASXxsjNwPBz2k9NJA=;
	h=To:Subject:From:Message-Id:Date; b=NXBjDy8fL2T00GsMQNgZqEOeESdqvseTSqcY9xEYSg2hqReXEGoMtkc60dy4iwHyTiriwAuF6naYGQ4cJ5duU39qKy3gkErnSwRhDbq7OEMqULiz8qNcy+IP2O7M3goAcBQXVDCLvoikI+xmHOuqx7GGgpTa+dcnTrFg2hwhuQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXbM5Y5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXbM5Y5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F9C32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716782662;
	bh=/HsKc+P+4PC55kaQ2TtFE07CFuASXxsjNwPBz2k9NJA=;
	h=To:Subject:From:Date:From;
	b=aXbM5Y5ekpfIKi81Oh8rtA+KLn0UvE4W+GOsTkP0sxHsRvKn0+jqLYS8hlabFykI0
	 FXst1s175MvYnecJ1uoUm6shkb7PYmrYGJmjMNgJZkSvjxFNkyaxaw2Q4EVZ2htzI2
	 SnqslsqcsZVLJOtRuttkwB3evtjKragy6xjqqDA0E2zy2WHHJ/5CnYwDdD5CWPxLXc
	 IjBLTFkrE8jvTraLFX7R0h91Qr+eUm52cQknjz325URUKOlBAdcp3AkSQv+k4patMv
	 icC96VYuyRZeA5e3IaI7+jeSMl1PDzpa3kUAsNUPWxOrSvsQP/sk34W9t7ekFfa0kd
	 aTNyXiic3nxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF07C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678266276.23241.3522267699460852763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdc9ed5f5a00e41364ccddb0e2a45b8622c64a3d350001710277cc5a2d80c06
Date: Mon, 27 May 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716782662
