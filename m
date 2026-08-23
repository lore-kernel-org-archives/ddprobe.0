Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B741363082
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787478634; cv=none; b=osrfN3ojzHkVOao33OBT0ZXXfJdxMgCdZvWklG0+i6iqQhIJanQwz5WkjT/d95cA/BEEanOxgFNU3Xihwm9gqHdiIF5sNqj5Z4ocrTwXxDV7VFlheQ7gMxP3SRlIUW0nAIOU/NCwepRbyeeeN8JzeActtyXNFJTLI6QOARSj6p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787478634; c=relaxed/simple;
	bh=dHVQE+Ga6Ulif4d9t1qZ/sEukIW611LDI0pwGlqetJ4=;
	h=To:Subject:From:Message-Id:Date; b=MmqYpElECUVD0AXwoG3B8s9Ir3QZFBZwyB76szC09vJMfwB2TzZPzz7JFR85tScd7B8HZaQtFhgJvjQ/u1NQgBaI3D/R+SGXSO88Dl16myiku7A+dWEoGBtprn5nCCfPcIlk8CwZMAKNsWeCBebEWrYSiIdPmoioSSHKYR9JmXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQL8olgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQL8olgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD768C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787478633;
	bh=dHVQE+Ga6Ulif4d9t1qZ/sEukIW611LDI0pwGlqetJ4=;
	h=To:Subject:From:Date:From;
	b=KQL8olgLhOd4ZyrrGBupM/tPZkV/mtz3meDhSZkQlDjHwRLIl7znicAt1cTeHrglc
	 cvxj1Y1x4ugfg14pvxhzmHi8Zi9IiqJj22F2MKqp58RGtIIKgE/0JAT3+GRcJGTzkk
	 rLGBRpwjyVFtWpWh4FRbcxdQruhbc3B18nUzDuAUWOIm/Gx1+w7JRnOwDmPH+xuWcF
	 nT2uMwdVfreRNYQ7Rr1cWt/c+anm0HDglNBT9tIweRgVIkR0JZdMrEy3nAWd3EsxIA
	 bzAvYXzzYxPT3IMyrffmDiSR5p2u7HpJlqEQnrsPA6wR8bqwjIYev97bHEzJHh+cUm
	 ewTVr5W/ag+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD720C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747863368.16461.18421944773518720479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ec28c0b7b6a15c82271e5ce294c7dcc84f798c7d7a8ad07b2e418853717206
Date: Sun, 23 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787478633
