Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75B128395
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774209894; cv=none; b=kcKG5K4aF9T8cQ5c+yFXtGM5ond7SKT6tdSoRSTssvSX0gsDqF/Zmtcn12wEvjN8pMrjJ/ampn4mAWd2fWJj2PosBIOMP2ohcDLtuerKHPHicLMkiUMrR+RsRt6jPQ5HsYln3nrXCIuJ6l3hU3bdXrHx0Wpr69ksoMWJJpF1kLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774209894; c=relaxed/simple;
	bh=bdpvhz8NbL84rI+PQIb6ffnH0GXgIjt7BbClK6fH+jA=;
	h=To:Subject:From:Message-Id:Date; b=BkPMkvRqQdmcTR5sWXqPrYllTLsEDwcnqMAmY6p6F8goNBtmLBxLgCFZXH/5iQQKWusSUawcPOijBnBy4akx4ptgZfrL2UHoohYRq+QcfSChcjiVCsO3pwEkn3oRIvnlG3DvHD0MI2tyEC1NKzzm2t/OpWmCMJWh/B0xiGw2jRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG5HwkRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG5HwkRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A7AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774209893;
	bh=bdpvhz8NbL84rI+PQIb6ffnH0GXgIjt7BbClK6fH+jA=;
	h=To:Subject:From:Date:From;
	b=GG5HwkRp+HWvY+uba6tN1377dLIa8Zwik5vZF1VHsyI5SsQWpV9G1CgjHTx0HeyaW
	 EJrnOviH2oW1tzZbuVuB1pjbdU4716X0D3zUhHM00tbIP+SogbSSOhllaBVQfuQ5g7
	 3op74iioxfEfFEFuaWtAoEc+CdMam7gsRYWHvLIavDZEwzkLfCUnauQx5KKiyEqQOv
	 af6/IKe3lRRenKj6CipIJ8Xh7d8dzG4E2sdPXkHlscec/UTzVOLcw/6iQSbwmhGztz
	 5f6Bc667DjQMeJrHAcoXxD/Prb83Iewfn+wEIsUkfoTx1uY1v1rfBQmgN/+lXD5akY
	 swyMWpoFRzhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED8D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420989358.4523.16984084338720683915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db0990e426ebefeaccdd712baf2b7d40630b1d6b482de145fc29e7dedcedb93
Date: Sun, 22 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774209893
