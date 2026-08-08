Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139701E1A3D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786164034; cv=none; b=EkudEiF4edHPhF3TJePHEQ1SbDDqL5Qi9QZVeBxaqXqtxfSJbZX0tNeLHUI73sWD11f5jow1R00XsI30hnBlA6qkougs8GuC+q3X1mhxa+LxKyk5EdGvwZs65YhfrDrbDwqJdmpyUtxaYTaEethns8FWbZsN1NpMgXz8Ecmsxro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786164034; c=relaxed/simple;
	bh=7j9yyCZ+SGIY8QGJiWWRlGiUiUVAjJP/5aIsHm7SlsY=;
	h=To:Subject:From:Message-Id:Date; b=tDt9Y+Hj2XVaUCzXEWSWhcUzvx9Mhf9XbttLnzTrDQB3NpP13o76EGR+V/qGSjQc1j/B3FiNU75wAnUTDnKZs1Df3jDth7Pc/Tvbc1NP2b5EPEuiFPDMIsLV8hOUkdmX+xvYKK5P+Z9awEW/CBZtn4jeAwGFYGdEjsiM5doWMac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcZrxCfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcZrxCfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FDAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786164033;
	bh=7j9yyCZ+SGIY8QGJiWWRlGiUiUVAjJP/5aIsHm7SlsY=;
	h=To:Subject:From:Date:From;
	b=ZcZrxCfvPCOEVV4S2SUKLKSzE5gemyiqx2lPXaAk2VHlLD/gIQ91JzfrEGW7qNr85
	 rSmzoeMQBe3G25C5a6Bmv6MGPYv2aottnV7ObpEKspVi6TCGNZSX9gdFoANbQk72KD
	 1ZwfoKx3pTQsSww6VLBPoz5EnRnFmCTZinEgkpl30CX4uJtDMwIh1W9Ja/CJkDQI/L
	 RtYVUNAR+PgJ0hraQMBiLmlaRrm0uJPn8Sng2hB5gh/WobiLCwRX3ktX8CH1bzO7vg
	 m+UN765PLQ6NdfWSsfWNQqd0vwaN1XV0ORDx/pYC9OIdIrh6pf6SE22nzb9Xu9b8Z9
	 q56FLY3g5Uk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3779C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616403369.4675.3500620100211215081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec1329a1d82ca02d6d86363792f2ae62a9d90fa27fa11eb66eb9cbfd9c74cc3
Date: Sat, 08 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786164033
