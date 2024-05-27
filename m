Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FC215ECC2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716815063; cv=none; b=ENh2NvReaB8Ob54d+o4HbmEyVA1OCj0/vFYZrtDPTNDdFeN8YhohrWmFVtJq2mJngJD4ltiKMG+p0WbS7GyLDe8tGAYLoR2gb8RYhdNmjGaU0JZZccjXYZSCIE1+1S9kTkoRBMf+aVN33WSP2zn1f/fAbgyGXp7a/88FAlBroHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716815063; c=relaxed/simple;
	bh=/SwXB1S9p9gsPk95riMBNf+cVkdTSUNT/66M1NG3tu8=;
	h=To:Subject:From:Message-Id:Date; b=SsfzabvNYoHlXTfvqT0Sg8rFmLYwMteaP0Hdea/9rv9vIiDV4sTFPmH4YkaDVGkGkcrm9F7cx6Gjqnonq7Ipq04IHDiPUxGqgnrf15KTeHCS3wXJgrM16RBNYCpm0SD6k/7DfYSpgNm6eioEd0jsMs6NUXUBxm2CHbr8KeFnw/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+f0Ytue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+f0Ytue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B39C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716815062;
	bh=/SwXB1S9p9gsPk95riMBNf+cVkdTSUNT/66M1NG3tu8=;
	h=To:Subject:From:Date:From;
	b=E+f0YtueQaaiIQ4g/IGPgolta5ZbYCw/hYNs4BtqZUcQA2yBak6/WBro5a42/kP2J
	 EKof9lW/9g55XO8QB9OnM631z/RuJpMPYv/U+FyewPhkYY6wQ4ZWZn2La+1dtVB5kg
	 57FTRkWLGLNnPZEtVIvg42uaGAZyl+chGb8P9PV0XPHPJm1T1S6zTLUBNi5x9CJfPo
	 XJ+jaFA6iuVfJdEAXPtJOrwbzvtEgPOZUatTNdnx+BaerwUrCDCgLkSuBWhVYU4mQa
	 0a1W6btWsukMCi7XRSLlp1RL+zEVQqYG1puLlvKdApOvyGXbvMDM97xuY+Z7VQaHMG
	 rv5cw5uQnLOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEB9C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681506277.31383.12021104205259859852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d8850c5b502472c30f67475202da17e68eefd9f52f908e83cff0770dfd6202
Date: Mon, 27 May 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716815062
