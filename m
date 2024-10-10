Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE78C2E9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728567954; cv=none; b=eqD9fccP4sJWTL5iEMadNb6baU/2e0YeyIqZDxdVu/NTuqVknQBEbFj/NKBHelVmq09dQBIlECZcs3ePtgsE/kThPHvtgtdFvhLolJi5sQrkk5/vKMgrfyIFZCQAs7F6rFGK8ZBIsjJqcvFdhBW7Qyg3WoRvw1zYOPJ9sjbH2Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728567954; c=relaxed/simple;
	bh=cQ6yZb2cyAlvC8K3yFbB6Tox6ZsfggryUHK552hKMa8=;
	h=To:Subject:From:Message-Id:Date; b=tonbHbC/sZAm/MofWOY6uUT+w+ZfOenK+TkXwnYu6u9H0TTXYLznwp/NupCjWKFq3cie3B5cMKVsWzL+cHhVcAFCEFzyhYDCDN5bAWmwT5/eXP0d5o2vu8cdCOmMbrNiyd4l5p67qz8ptH4/zisGCNiLSdA6U0ensNyqW07Hcig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsHQbRBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsHQbRBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3721C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728567953;
	bh=cQ6yZb2cyAlvC8K3yFbB6Tox6ZsfggryUHK552hKMa8=;
	h=To:Subject:From:Date:From;
	b=dsHQbRBfVTYfEckC/9KMkc4MddkRxoHu/m5irw3wNOFLHfpPO5j6SmiZoZxUaonTq
	 6ZwX0o6dORD8+kqFlbAkJsS/y0m+a7oy2vq9hjt8sRbn+aawgeDt44eoqPcdG9DjHw
	 aVo+k2OUeDp5iN4rmBAFAaYrOHd3J2OxoPxmaNQ0aonEcdWQYzBuFHab39W13AIRQW
	 0e0GUHYC9pRgrYp1nnjQ76v41gTUeHl4Pwl2TYLFCXmArf67YNg9JAbspcsYNte/tu
	 We6CGOSLDtAoQBEi5ziyUI2vP4MhYpp7M51JqQhRtpHbEkJvTAMATPhf/fXTcxte5W
	 cHgWnYyaTzbkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8DCF11F8
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856795360.29511.9208710165858038402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2838a1db2c32e838c40f8d12a4bcb06aef21395ac4926c4fa37ffb44aa2363
Date: Thu, 10 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728567953
