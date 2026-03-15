Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88D33A6E9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773597894; cv=none; b=hTOUTDA0WuqA+mi/syGrYluENWZeWQQJfx/SO4g+HGBiPDPzBOplu/KUHRpGMwf+FN9EZuCw6J227fbycd0dvpDcH+6ZKqp+TXlX6bgh5ko0LSPJmvDTzN5+96ZbNrzuZtAnMYOxr4llXC2sF7LJCDyX2FaZPiOMRTszCjlbEKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773597894; c=relaxed/simple;
	bh=eVL9RvViExMgFpxeXrTiH/m7nckenNO/vlcHQAMqIXA=;
	h=To:Subject:From:Message-Id:Date; b=fAYW+1wj1HNIFXzvefUWVipkEvV8oXiTjTIceRFETPCkmAlbHFW/OO18FxAsYH468GFoa2852U7+zA85ii6akFZcxkRl9Omx1KHt2eIAOkk8NiDe/lcROXh+zT4F/IiUsvbEqMiiDhvjh/sVCuEsU2m8ClgOtpJG8KHdAv/ejgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STc+2Wh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STc+2Wh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9406C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773597893;
	bh=eVL9RvViExMgFpxeXrTiH/m7nckenNO/vlcHQAMqIXA=;
	h=To:Subject:From:Date:From;
	b=STc+2Wh1Ur1GaGuDo+pbo3sycFX98QDVae1M0FJHFwB1v0DGXF8h75Hsnu8BrIxes
	 Noxu/mQwCISvtJZOYpFgGd12MdOgBodxCc109LenyGvEedZ49c/64H+UbTx6Cje2oJ
	 UMrtNt+yIGBGwzSgeQp8SRTRhKvINGAhl6xJ6P7avfUXfvTTJ6ZWh8ESYhI+Mdd7Dh
	 TFRm1TYCWiqYYr5xibLkWVHAOwMBd5hXD78gjSE1acQvPyH+euxxXwA1VynnL4FWWv
	 IXrC2Nr+mO66Z6yaNS6bF/fHNKlOCrhjgpiYLyrYMOKlkPwnysMh4syKsTh1jWtaih
	 MGO2ziHu7rUpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D7F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359789357.30182.17383458425918095134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f441ff6f3ef9bc7b32ccf1a3a9b16879e22c3c728700dadb4e79e63340cb164
Date: Sun, 15 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773597893
