Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A72DC782
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746065394; cv=none; b=If7DE4Co5D3FxNsM6PTnSN5Bv/Dxt70uUYlMFZ771kF/EXRGgB39XjiEoTHi5opstXCs6LCZuDfY/VnAgX43vNOltNuwVbw1d+qMs/JOM5nPtCbt7n4r6MLcAUrEzpkdjCTA9xV11GNqQz30BHqlR1eh9t54Ic/6YalJkSlLEcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746065394; c=relaxed/simple;
	bh=FRJtylAzE5+aC+JsPNC27TkoTRDO4C64jx9fYb9kE5g=;
	h=To:Subject:From:Message-Id:Date; b=DAKahxqzHeLfuEPyqkiIE7Zv/5CSiKRptsYWhOWozaHueBp6l7VpiacRs9qfPfl/FCHnrH5AzDHhFaLpOd+/tNq/RN1pMRPIQFCabXMCoWPIvb3yGxJK+t044Tvwi9lnL0daBq47v78JtNnStGAyJSPmHy+vyjNi7lf3fQ4RMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2hPvuAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2hPvuAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746065393;
	bh=FRJtylAzE5+aC+JsPNC27TkoTRDO4C64jx9fYb9kE5g=;
	h=To:Subject:From:Date:From;
	b=h2hPvuAihxIbd4E6NgGnZ7tYee5vFJQTz3hEn1RyWouMLGoEH0L0atjKcwgbdUuh6
	 R5sovMhSrwJd0PmO1xnXbLN8mkTfmaxzwEcmVaRD627kzlpAu/8fSgW9KBEecV5jkR
	 dPMvdy5OngIXywLhvRCuJwCn2SeHrH5SQwsAxueNRrogLDPwVmXXvundA1TJ3clxQV
	 NXh3TZBfnOh+rYA3YrIoMW+QkV3+mfw4tCBckZ8YxwxbV3/l4nuKcwG5MFqzpzhGnE
	 B/vaci4DGIdns7Du0g31RPLHIlTbGKhrko2toj7bKC9jITezG2oxWFQC7URSuVDVDJ
	 6ARWJrPe3Se/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91803C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606539357.25912.18162383914716312268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe0112ddc68e6ea7f2882bc2e7ccfd15b09e22af504c60e667d46df80212818
Date: Thu, 01 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746065393
