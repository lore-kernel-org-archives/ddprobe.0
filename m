Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F573388E58
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783408114; cv=none; b=QJ6EaiFyyejYqRL0zkmIiC4vgSinw3hDTFXL0FwFLhfA2R5gQoUvgSvbV13crrkWkU+hdGbeOMhm4NNDb4bOGXTBzQUwAwfYpdMPNfHsfgvd2v0oCdb4/ijnWKZ68s3xoNzC6Fwr+9+VAYoWHY/vcwEoz0S5wD/DD+CHcfz5KDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783408114; c=relaxed/simple;
	bh=TwP8bW1Xe5Uxcu1vYgcuhAH0+MYMmPhzjERtE1VhLPk=;
	h=To:Subject:From:Message-Id:Date; b=cON58RKDOKHBKgB1Ya9yfkiUEEGoVUo4tapQ+wCpojf/4sE7JyPFSusA0DhqQ123c2LbHIE592gZAq4IWW/D5FacI/v7mu9nhhmosOci4ymPGsGUnS+shTAd1oWlQF6AOgZjg/iUa/cRtXdEHro1coBSuMPRs91nFwdHPU2Z8u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP1rNErn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP1rNErn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC5DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783408113;
	bh=TwP8bW1Xe5Uxcu1vYgcuhAH0+MYMmPhzjERtE1VhLPk=;
	h=To:Subject:From:Date:From;
	b=MP1rNErny2AVukUctKOzbRjeb1xP7MVGMGA+MwUAB50+G9Xi6a6miXaMybUyYBM8N
	 IqH2Bhzu4zTG686q0tZGf53HLKMjf1TveopiSnaZVG2XQy89/EvfFw2SC5Mb7Q+GOG
	 3q/HcVnoTMt6wbTIBubfv+lVNWjUopkZO5R3k2+cVG1h0F526cdoxhjc5RNWCt+UyD
	 RSihrHhRp+lJheSIZWF676vDcjDzi6S8TVyqPAd8LYKyBu8geS1NTtRbi1V608FIQ6
	 0+mj4CM2aQrVolLxOvr3TuGw3JB6anbIyl5fSC72ib3uIQo+5ft0XjnabFgELPeVju
	 it+njO3Vjmf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B8BC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340811368.15082.10039955187231546082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2287b3d3525682466e69400d9235db89355914f687429c18dc5671e58c2ddad7
Date: Tue, 07 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783408113
