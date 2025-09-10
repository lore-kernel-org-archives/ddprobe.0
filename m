Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FE0260587
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757540393; cv=none; b=YcBmjmSqroA0zw0AzoF8d7VowhBDbROCgbEtXJ9mZKvOKT3vwFKxEJj7GjUDtko84sqHKLze+GB3A+gQHTpoqHufiy9yMx/XX7ukzrcQR7paXQwvobmLV/IcO+tcL7f28HC5wVrtT2bFNmtopGz8Wxb92O72ue2Azb2OKPDVDbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757540393; c=relaxed/simple;
	bh=d7o/d60Qfrb5uEG2Bh/NZV9XGnhCuHXNoD8qOZlzkNE=;
	h=To:Subject:From:Message-Id:Date; b=GB8fD8g9JoDhQ0qyRfdXszOeQOtuSECVCY1Zzt/GN4EJtzbBx6mg5gvYQk+j+cdXP2eErXdIh7EiXwFNgtkP+3n0QQKAU/jB6wRMoTnlVj1sNLAxxK6B+g/h2ub8COtpQqLDEWrgP0EVJr9ya/RkGl49MTAk4+1UtdTBcL4LBmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDI4G2io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDI4G2io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E13CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757540393;
	bh=d7o/d60Qfrb5uEG2Bh/NZV9XGnhCuHXNoD8qOZlzkNE=;
	h=To:Subject:From:Date:From;
	b=FDI4G2io3ATYgjNFmi5VQxrt+CKef/SvgIYdTCz7CS7FlB+1k0VldRROhIicqxQAZ
	 78lIFtb3wRL3QR+KVJT1g67tdxiApnfegmZBKrGEdlix3y2pKqGnzBc1uEuNrnZZya
	 UPSNXIkdzC6/h2dPRhEbvPXcOqxWaT0mJ0oInY7RWV1ZfgW0WmPrPEXPJk2GgOl8jK
	 dtkZ3ZBTYkHbesDmi5D9N8jM7vT1N3+rUqnqBQAinhI78O9syhN6zWRoQ+/GGxx9yT
	 WwaKME/y2MWmV03Jxq0H8pRhw1ynhOhs4jFN1NKmZPMVRHCmYQh2G6SKTl8SvrVujv
	 wt+ZS2XfGuyLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F432CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754039357.24664.18418089488501757714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55d548362e3b904d857ecb6049d1e4777d7e285d8f84596c7ab69d546ecbdf1
Date: Wed, 10 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757540393
