Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D8DA94D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733857554; cv=none; b=HevLljlA9YDOSMblFxdeEqfZh2S1WZpl8noOm9KlHONPMHHqG8vCz3LxDxZ/VGyWplsyU6peLORSeXrRSR/cf1FCOPe4KgxTUaUiLjUYTqV74ucFdu4E9fwPXH/oJDvwAg87OY+B9ZlEZHmcXJWg29llXvMFaWmwoZfIYwzYEGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733857554; c=relaxed/simple;
	bh=fnSS+HtlQR/7VLMcSDgCpoPaQ0E7kn/12Mf0+nylcwM=;
	h=To:Subject:From:Message-Id:Date; b=WT3vVwEpWKd4k9QrzWRYvNqfouauzAdS2Wehuo1IMANkwbBFVL/JEa07BoD2KzCuR0nfd4drt7WMfsYJAmcqmd2AQA4/xUoSq5lcyHmQZQSOEuU5MFXPR0P1ep2QTyRkIpr/azTN+WezRDgV2ClfYbzHWyA2u2kYWCTryL1m0SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhtESRX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhtESRX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86D9C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733857553;
	bh=fnSS+HtlQR/7VLMcSDgCpoPaQ0E7kn/12Mf0+nylcwM=;
	h=To:Subject:From:Date:From;
	b=IhtESRX/Thqt6EjRNVVLO6w+GN9012o47O5ZHGGb1038Golvn5CdideBCt8KDIo72
	 Su8qHk9U539e9qakTETqx4UUbjnrujhf2XXVKQl5Ywhap4go1TojNbchcPZAqUuqbH
	 4J7bGazyxxZOnF/zmmpbfqypa19aO+/0e1cWU1FfCRW+QtBI+nGshO1MqDRtY3C+2v
	 12U9/ZOc7YGYeSooiTpoMkwreANEzxF1HoxUJd3o4ZnbRYJT2DxYzzsuGiXA8V6aXb
	 kHEoesmaVBhr/oZyF+fZIZeIUd8nM6mvAC98ad0wChpEzG5ipLDGzdM4Nv9Z7/F1Z3
	 6853mkfwwTMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18E2E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385755365.16502.10634602918046898311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419c992e7f6cee07e83749dd5779b7093db5dcec8a1d5291e49085c239098cf6
Date: Tue, 10 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733857553
