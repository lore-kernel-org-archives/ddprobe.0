Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AA52F745B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756192794; cv=none; b=Gua7ublgYFmoy0di7CAzQ7Ga2yd0Y9u/0T23+E+HUqu2HkBeTXz4v7pAeWff1QfySHCHbyLlnb7p70Per/lQ1rauDISlCBLlSRuhjsPI+0XpoaOD531OChrLPgB6AWS+vEljGZsqwpgbZIQFxF+WJt47DGZ5se1O14+W3fNKq8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756192794; c=relaxed/simple;
	bh=StGN+XgRAYulhWlWO84w6DocBitYigxz8Dtwwjc/ePs=;
	h=To:Subject:From:Message-Id:Date; b=eHaolJRz3zgkj99/iURWDybleZTV/Q3Z/u9M9blabRoE/Hug9EFcwkZWXQvqoiqK7bvExjlCd4K6SdBzhJoGogN3CXN0+fVIlAT31RrPyEMLl5fm+khDaIw1UDoPl7/ebFIaC7whxaZTj8AKAlCzeEYDvAAjotS8jNs9wFWgn/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZA9+SwJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZA9+SwJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 974BFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756192793;
	bh=StGN+XgRAYulhWlWO84w6DocBitYigxz8Dtwwjc/ePs=;
	h=To:Subject:From:Date:From;
	b=ZA9+SwJU/QTaS7Dg8szWfxemNSDXowN4xOGhhcwlz0tGuCVf9fsP3KgkZiDEH7+n1
	 JfhZbnWFiuTRFV1zrsTx4RvatI1cHvA/Epk7YxEvWAQZ1F3nR331/xhZTGtBccSHSj
	 VSz64ItovsW+PgNKSwrkFcl9XiaDtT65uDm0947Toq0V9mo0weyItzyKD7WFsw+PHO
	 gBuYAidOyQyjPQVlVdLVbiWUHL2DShkhdN9xuDavHhaTph60BQpte5IP6qykjnmVNo
	 W9NydWIJedFPmXCdtozHiFxsDO8o/ij8cZBk+AxSqZaSiGPMl6Jq+sP3nwhJD/ypaD
	 NTvfCDLwBo1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAD5CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619279357.12666.13323853060669236446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415592fb24124236dcd0673da2648413023689fdfd194cad5de2ca97a68f9fe9
Date: Tue, 26 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756192793
