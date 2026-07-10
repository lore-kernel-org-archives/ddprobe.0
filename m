Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FB94369A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783697914; cv=none; b=AJE1+3JnPaJmKty3WSpoQGl0a1q5gI4Ikva/XptLto7En328X6wm+LgeRsgCsDOdesrG5vWqBMZlTP/ezirokpkv1Hma93jYMRdDR+Zayn/CSq09Pppz935z+gZq2TONxV6cQr2ReUlNaE+6MojtYJtcykHiR44JTpzPFU8qzeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783697914; c=relaxed/simple;
	bh=CsbsRZiaLS0bdU92ZEle3BHw2SZnKFrHdT5imsAsIbU=;
	h=To:Subject:From:Message-Id:Date; b=KuYq2g8icc+SJdanT9Gmwel55fiEJpAgllTzRBIEOesGOgH1E5yuB4MyAdIHzPIy4ZZuUxBsKWz8F4cKzKhmthT2FBnQXUmvQ1PR9aBvqUdLZHtAvKCGorlWsdqD3Yog18inHFdw40NpbtbTjMZScA6DCkfpsd/nCOaDNgoasj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS2vsDsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS2vsDsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FF9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783697913;
	bh=CsbsRZiaLS0bdU92ZEle3BHw2SZnKFrHdT5imsAsIbU=;
	h=To:Subject:From:Date:From;
	b=mS2vsDsiGccpZSPwfHNpjT6Q0CAxRRCmwynGw/SLrq74yFUknLVpmqbVukIeMtT0j
	 vQIQRgzn+MwG/6u0UI3o96cBbDNxFX130DA3+g12caQSXnrp8CujEq0T60W2tbdETY
	 Tq3xmdh+VbGYIPRkYH4APOMl0aG9BiDGYEi1RAnGgXcVG2MqHwX44M86FHhCsoP+j9
	 PM7v3HrKseT2dRDyCuYPoTQWuBDLMDwde4M4QDXB+473QPCnmAFI2dCuuDyLfvE7m7
	 pPlpuHXFafIftYn/lMnvhPnSMK6bvXUQrERm4AA1Na1S/egFahhRIwRVE4JsAC7xyB
	 3ujR4SEQGv9og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9069C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369791368.641.1681420181454866337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5343f787ad025f874465f854b487e2db68a658640d43c2d0e812487dda4bf21
Date: Fri, 10 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783697913
