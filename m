Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5372C19CCF2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720534583; cv=none; b=LBdIk/QSR/eQMEQZ6ymygsgEUDKUA+XCsnaWvZbzT7Xxv4m2YsjhdzXAWoDdca0QakEGBbQ8uo0o+oAAQkr4hkaEThbD3cKTbG9YENATvPtGcs7yknLna+ljA1fm6ryXXfGEfa6ktT1jN0RNGVomfyAaFGU7V4EqAnqPAwRYHNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720534583; c=relaxed/simple;
	bh=yuXGEA3L20nYOekzFrALPeYGfVq8Md6i49AsWnosQUg=;
	h=To:Subject:From:Message-Id:Date; b=sQ5BkNsT/lv0EI/hBPMsjIfk7YSsPGBrWSCZ/YBg8U/3Wi10LnbPG068ib3uruVXpHiv/LB93QthMbD1Bp9YgTxWzsYLCZnl+L0cR5WYU28WRQwktQ2qScQt3NrJvIXbwWwORgKVcPgx8qGH5ll9ST+xXIbBQIyZM1IjjlvlTL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0kXJgXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0kXJgXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFD7C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720534582;
	bh=yuXGEA3L20nYOekzFrALPeYGfVq8Md6i49AsWnosQUg=;
	h=To:Subject:From:Date:From;
	b=Z0kXJgXuNc26q+PXDIenZLSd7dITU89/ucHojOfdRYC8WPz48Ds8uBH9+Yb3l7nvw
	 f5eokK1hXkNL8dnylkKQ6zdzeAAa1wh6lZEXpgsSqi+mUHK2Htgy9sTpMDZsL2eWEi
	 Tfx07/NfmBpoW4PQPGQ2TrOhmF/xEtnnqp0aQPN5OcQmKpfOHr/3ZyQln9wuetSrKw
	 LePMepqD+Z4fI6tdtljTWkQSgyFin2Uh30PzZZN1IzK6oxYtcdiBZb54F1/KZ8mpX3
	 XVEaGPSiRuvmLl0Qbj1aaM0ouyrC2bsO430V0H9rUNEyGF9JCUf8HUBRC0nBAzIbOy
	 UOKNnNHmDM/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84D7C3DA47
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053458281.13879.16620070141246544087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de784807fa2b3329495993991e2a3924ac3d99dbe177a4d534d63ea5f35c483
Date: Tue, 09 Jul 2024 14:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720534582
