Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142A02D373E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759343394; cv=none; b=r/SGfuDCEOgVQCoT+QWg3NCGWH/Cl35DXahvpw/g3Bjc2ONqqcwgeRRQVj83qpa9gRz6euMXt4Mc9nm1xdWMaBrifuf4CjqUkc8HhIJbjJdBf1wBduVZogSubFv6lUzYOxvlCN05a0i++TsGCpHbRyzMP6E1AxEPIQiOCnWHYJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759343394; c=relaxed/simple;
	bh=wZAs8KY4ABFDyevcEMI5ICjO3w9ooMuuo/rakPbXEuE=;
	h=To:Subject:From:Message-Id:Date; b=tA8mCOx+KR6GBhzGu4EsjH2IY7LNF5Ou7WlUb5HTXRUGjOt1k6kY5S5XvAYYFQUVjzNHxPQxy5KAnJFEvrtafRrF30SaWJ8lp+Q966MoYffEPYLre9e5vlXJN63D4EH3PIihrEe4Hlay9EDjhKpvoGItjiyL6UHz0c+UGALo9AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbIcx8rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbIcx8rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55BFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759343393;
	bh=wZAs8KY4ABFDyevcEMI5ICjO3w9ooMuuo/rakPbXEuE=;
	h=To:Subject:From:Date:From;
	b=VbIcx8rvQOW9JPOU8DlbcYWsyDLofSaQiPpuOU8xb6Njcle74aiwKZXqB142/Lvkm
	 B5eRYwtZdDrpVsA1juy57br9Wn1Rsu4gIL0Z8pDvY2pY/MXDcpSPzj04+SAr/KI3Ya
	 UHTWdCUbmH0ETmMhCPKEv7fj5StCmsaJgZoNisNGpMsw/sx5pZL7615n/HSKwhftJx
	 05+TeE+44vVvTFh1mA+ohTEsCkqF7gxNiBxxhokmGurG/ePProU/3XlzKN006I6xyx
	 9i3/aT3EHqAw954Bh9HqVUVkK/LkUruhk/2L11l/f6l5FXMUj6WfppGNU9CeNip2AC
	 //xYPxozdSQjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A77CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934339358.21702.5616631196533984078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ef8f3bf601c6ae0b5cb9390717c681a1330cba9ca92b737db954cd92181181
Date: Wed, 01 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759343393
