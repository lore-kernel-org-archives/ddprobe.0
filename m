Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A213FFAD1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783329514; cv=none; b=l5kui3OyJdGEBLSB3nngS9ClxL86k9q8zwBKnjpS8noSQmtT01KjqEzmh3nNiPGHuo1vG4048GXKYpUyqI+60qcSuAyOP2rADEe9QNM/X0R6L4vvHtXoxRlRW87NxIC9ekz4Lp20XQgtVNyJcVQUvpRfb9jax3zYcUv90xj6ayY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783329514; c=relaxed/simple;
	bh=+2mpKZgGKqCNzJo+MiSieG4QSCeOnVV2iGII2NZRYrQ=;
	h=To:Subject:From:Message-Id:Date; b=AOYncBFd3EyOsvi1qmyn5O1cU+DCmsAiND/QySuoV3DWYQWy9MSYaFRDYlxwKavtmWcb3jWKaUJZTxSOPAe6NFXygfmjZdO+SUxlJV9x1N97U1mfBcPnUyOpYfHS2zRpo9zlHPmBF2UaUBG6rqrPMWBwoxs8GasftXxh9oi0iu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4J/Rxqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4J/Rxqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96D0C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783329513;
	bh=+2mpKZgGKqCNzJo+MiSieG4QSCeOnVV2iGII2NZRYrQ=;
	h=To:Subject:From:Date:From;
	b=Q4J/Rxqehk8yKXxxnhqFVfhJ8b5EuT4HVzZH2p8Q1Rn/+9xtDkLaErLcbLke/RWC3
	 lyhtRiNnQa5hlm7QTGl8iu4+drZIT84MgEDQgl10FSw6szgjA3hI9TaD0eT7uY32pk
	 LBJK8pvFyx6r4j/EMqxsksdCn4/Rm1yhVnwXzIs/nPEbOQ5W8bbP9I6fpyQbZsgaMB
	 TQKMXwK5IF40fSA9oQxxp5LN2b4EO7OCQo+6IHBa62WwKCblOu8WscKr69JyQSVqFm
	 LABfXqq0fmgqU40KVxiKb/pPiw6dFVgXei/cO76X9vNDLn4V3y92qNDJXcgi3EPmlL
	 TLp4XlZ6O9FhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C89C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332951368.8652.3769740217877212589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ccc247f9a4e5744ef3f268bd0d4679268095b0f8f5ed411290b9c2eb0b47b
Date: Mon, 06 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783329513
