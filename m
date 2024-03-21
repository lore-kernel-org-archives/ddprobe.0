Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12E37EC
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710982696; cv=none; b=u3JboBZ8EeMXDpkUGWYPedDK1I6sIgLVRdVTGy22IV7aLD/mMkatoO+TlP1kAd1PseW6rT2IL9xBj/7T82lQi38HjLv1y0b4bHwAR38c8E0hY4kLmu+PYyZNBVKGz0dp6khMWzMJtleqlMqjKdURvienwzHlTTJ/0Lzu3tG+QzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710982696; c=relaxed/simple;
	bh=oSYmBh2a7Iau9MWfUglux38lSDdg+hwcZi4kJXFzoqQ=;
	h=To:Subject:From:Message-Id:Date; b=bjY5D4f+7ggxRRxmRU80ImVHs/qbYFMlW6N48mRprBLnqDMhZPdzzsCKreG1xrxXSD6+lhvDYZjF1VkW8UbYiSosOjR39DD+LC67bBd36JwiSkITvGFN9mJo8Wpp2ckoY0MFTpB+1zlgw9MB/06NcRNaO6XS+zTt2l0aQwcfnyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFvsG96X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFvsG96X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCE4C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710982696;
	bh=oSYmBh2a7Iau9MWfUglux38lSDdg+hwcZi4kJXFzoqQ=;
	h=To:Subject:From:Date:From;
	b=oFvsG96XkC2t3MqGkJAQU8T5TUXUV1mxorXMWjTOiqzOfSrWmCzTYL5wLW42E0qtQ
	 f9dDmP4rnxws+2iX4tGvHDFhWbDqd2xr1kjel+JkZEZcRwevLilQhZcYcd1V40b3ey
	 DK54TReEck4o1tfhm2wGPRkcDopBjj1AQDhQs30yuwdtERVkIbbKH4T/i3QLnoZ2Mn
	 WQcqYb99T6wgcBEWNKwKQohwaSkRCRuCXmrivlQCCb+Ud0Kxuiqwb+1Uxex605/wGQ
	 IaAA8CBkj02/BvxTvL5SZUaJZ9HJWDQ6YTE2Eaz2CdlHVwydYeNa01d+02E8wcCH4s
	 Fi8ox6Sp7Or4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD23C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171098269637.23564.7866973211566629317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7f07cf2c8b65e9aa89b2eff83604df74569897be93468d37466401d33abec1
Date: Thu, 21 Mar 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710982696
