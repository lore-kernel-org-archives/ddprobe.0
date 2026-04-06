Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33803279792
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775472334; cv=none; b=Vw3u+mpRVHJeqUhmYWAKv3/WwiLKTjU24xibWQW2zOJkJedGOc7mzq/KT1ETRUAsyYelutab2rhz9WDnB1Y2FC3pJRUDg3LFbU/Sm2V4+jvcIWY2XHuTn4VBUGV9y+iS6wZzwDN0b6pgZ6bwE/xrVQgBrTaroy6GofUp7KEnAFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775472334; c=relaxed/simple;
	bh=c2aMGfhS2B4hkmxBGT6pwvLq5K5k8x3wbFqSItQ94tk=;
	h=To:Subject:From:Message-Id:Date; b=lkS3pC+DNQFFjsZ8C801gmSWlIHz86ktBdQkvpvAg0luEkDHqnGP7lLNM3YOksH25+p/m36nYEYqx+741+jfiyQoYFlHV91S5e15Ql9OTfrsUaORk1rXhwkFa72X4cuH0kcR1UTpzoAheT0tcl4XMgTm+HITHJEcjNZrUIwIkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yym5gvcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yym5gvcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20B1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775472333;
	bh=c2aMGfhS2B4hkmxBGT6pwvLq5K5k8x3wbFqSItQ94tk=;
	h=To:Subject:From:Date:From;
	b=Yym5gvclsTw/dSmnG8PnbhjmEevoU8YRiAH7SdjL3j9xq00ahIooOfb+Yz4/P5mKw
	 qkXVTkWk/fyIXnPTRYMZZvmP0OqxtOxx4MO1JfTC62uzDQx9yFaVzYJtcZVhpCX4Rs
	 /5heC/3LBGPbOK3VWJ5OSc8kjjGTP/caJWmOc3I1hONV1fYncrmfRFfvG7yA/TypaA
	 OpIVWXB7upyZEdzMb7amQAeneZNPBsWf15ABz8KF8xIkUOVsJ70N2iPZf4ES0tMDQm
	 VjrvTicp2Htq9uI+uen4jcNnpWh8KshezXNTXIzp6fCpkVvs1D2bx2hqH7RpI9xOTf
	 np5UiOnc0kFjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE398EF4ECA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547233368.14931.5066740742569206983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362fa27f68f3f48466e3c18da8a4ffe974abf2939f3c95bd07dc0c56fbcde247
Date: Mon, 06 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775472333
