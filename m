Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1411314A4CC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769154234; cv=none; b=eM8PC26HM5zTiqO/6VGzfR1DEd1ewLVJS0mRWhXB6J9gbnGa+4PZP68EV9ZEfWhpXExvoSkcf5ZH+ZNY4fzfWiVqlMG/86o/kVld/9Vs1oOAwj+hstySsGFotAJz8qgIsVnnqzArT35lRyRn+TWu+8kHLnV3TqYQmcPwOk7RjCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769154234; c=relaxed/simple;
	bh=iHQbPx4L1pxBpCNCT4eF2+joQctXQROYUjKRpbmT5Vw=;
	h=To:Subject:From:Message-Id:Date; b=YWhy7W6N9OwLwA4xNz+Y5KvalrhYYwU/8TbB+fLheNZjVUslzD3JcdU0DPFNM0KIBDCBlSy38z+HnobTSh0E9uGJYDtlWKRdq++NxZ/Pii+Hpcr0BNJUtdTAANBvn2z4qegMM2rmQquJDCs9zXUTGeBePCbKDRTleVZbnt1eTVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asoa1zlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asoa1zlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1060C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769154233;
	bh=iHQbPx4L1pxBpCNCT4eF2+joQctXQROYUjKRpbmT5Vw=;
	h=To:Subject:From:Date:From;
	b=asoa1zlunyaS/Dc706VNdJB95JyVOgaBVr+brj7pA1hP+DHLMdm0rvvhlI0wuHctK
	 PWYEJ4qDX3t2BAxPPPNLZPsb3kK+UHfvtb1E42EZcRI641iw2/X8QcCKp/D6UGcNqh
	 uYnGBsDS5TPpAvvSP8i4HpMnCQWEWd7S3/7WcEubnG7eb6UQuGRNjOwegpknlhHhiU
	 RVpa4PUSzcMvUWtxAJ15iJ482W2TW0m1ghK5fAZvRp6lkewBUmpVsId/cgBDrsBSst
	 7ZratlMAb4c66zuIUTHD5YkT/HxrDs3J132HhLyhaOoeADL9SnJWGDKa/SdrkWbpbu
	 1EOkI4UxtHaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90866D72347
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915423358.29739.7109607728117204509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80d2f68307813dbeffe1296310f631c82af7d217b979a5bbc701bdb5b950c9b
Date: Fri, 23 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769154233
