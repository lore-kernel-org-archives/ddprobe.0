Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBAA214A79
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761479394; cv=none; b=ljtLA9P18N2G1m0BHVQF4fJi3k4NTpuPqOvVyoTtCFErLVfIYFgGyQbdbNFUNxj+RP+OQVBUR2dnpYaZVLPTXcBvPSeXcbqgRO2JKtXBgljdDcWUkdnVO77nJpd9VI7wlYdS4oOaYp6TyHUQZayWvOB/H/L9Mkf0in2WTT4d8l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761479394; c=relaxed/simple;
	bh=LNPdQkPclKAkDoT8incruARc4XPX/iOKnSQmByZycfM=;
	h=To:Subject:From:Message-Id:Date; b=JV/0yQ74fyjXzur/vELTQtcv+DUhPQZocDwFXfmsnv08W9VoNQL+/8fwrUkI7UgGz9WDaAyDdwVVcuzcoyMTqdREKuTfN9WWsZXICS0K6C7qrz01o3PHH04qyvSfnJx9jHMuB1+kUFruBrwE/PoTvXSPcxmoHdspIfpM2LD88Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9b//AYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9b//AYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A68C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761479393;
	bh=LNPdQkPclKAkDoT8incruARc4XPX/iOKnSQmByZycfM=;
	h=To:Subject:From:Date:From;
	b=P9b//AYFTmyAQ3bMiil1vqXFMTg058CwJYZVjWKkjc30xFVngj3WuINt3E8D1HV0G
	 jPqkzXewVwzEViv8ZfXS204GWtXPmbnG/Fjik5xfEbzHSqr3/4WMr2bs541TGehRsJ
	 IUgZ7fdralnoWXTHCfieXFrt3QCpuOV7ZmSlwHCbKo12KmJQr1hImWEhn3opn29cXp
	 Tb70kvV19awzLjv7SLXPWtygrTAB8fjmqgmzm/Ech5jUHumcyF/5hpWrlNIoc8tTUU
	 9p2FxPC4ASFDHQieP0wwuhSbp/K1+E0IxW0sdUkz9UrgBhZSovBLMd9sqzNXOjbJIg
	 ON3nPq1f5A/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90571CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147939358.17336.3026344985103961007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7729090fc664619eeba1cabeb0d9516226942d3f8c3857514f127b90e9d4273a
Date: Sun, 26 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761479393
