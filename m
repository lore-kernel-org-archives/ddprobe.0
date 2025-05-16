Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FC4323D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747411794; cv=none; b=oN6e8lKehy1+6+JudQsuMHkf5een5arD/e3Hj9xOTwEicsq+H5jc0jqTJF+zHkgUy+8HjG8PpQKzKWcxnsB+dsReTAWxiWYxu523gO1iTBZuhZx7E9nBYqDaDl7lyO2Zx1Itv2fD6TM1tqEF5earurao5qLu60oEIes59lwFFrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747411794; c=relaxed/simple;
	bh=xaiTu4YLy2TysnXAaFcs4d5Q/tx9dwZ0zli7mf+jqyk=;
	h=To:Subject:From:Message-Id:Date; b=exENks++JQJn+AXQONP5I81U+qn17ar27XOfwZVQFWB/9SP6BFdW0aXFs69bHfBV7br4VcHkkoxXSmRQU3CiiUTzIz9Af0oZslEJA2b81ahnoxkLaYb0fOGDbk2BJDj91lwKtp4Saj1YbBmui2yW6Rsj0i3j63PV8OEeFNL0jcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGCVn4Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGCVn4Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A08C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747411793;
	bh=xaiTu4YLy2TysnXAaFcs4d5Q/tx9dwZ0zli7mf+jqyk=;
	h=To:Subject:From:Date:From;
	b=NGCVn4LgMhitQn1xX+WJpoHdh9kue7KCbSVmahJtyDRYQr3u9C/ZMSePnuZM3emsm
	 wo5iuSB+kd6Q4zMyQ3YxUd5nOk8Yi4lVTCyTrV1KGEFIKKC4yvooqAOb0+3VHLBlQh
	 a/MCne1SKJ+qbs1aa6iZxXKAAMrTTlGbMtfN5VzdilzD81LXy5otHIU9K5OcMkAhT1
	 QScnABPT9LG7vfKg6duWnskQtszkhJSBme93N7FJm1au9YsmIuexgofWsL4DOEni3v
	 6u//xpptuYrQ5Qj9GmhiUCXLZg42x9qdTMxExlg0RbmrpBGxJTSjyWjRD4DmiRni0m
	 Ydy+p62VTVVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E2C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741179357.25825.8538215275201035814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b333ef5082567a8f5fa52f1fd440d3083dfe9452eac80a357ce86e0378f4cb12
Date: Fri, 16 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747411793
