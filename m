Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086CE228CA9
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765254174; cv=none; b=g/nTUbe7a9TZWoumQxcpGrrU1+2zsmUHFIWY4UTmVX0pUnv4ZGJ6YAQ8Gl5ScKkB9VB1v2ZdfiSzYNgf9mZE28GHF3OLrBQYR8/lTpHETjLHs+vQMlyoSXymkGpqZ2cVJDTcMtEqe5lop8GV24BkATC9QwRiyDR13D+W0NNfgTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765254174; c=relaxed/simple;
	bh=uIUU9JhxJEs9Vif4lYdPDqeaQbfaojABaR9gkfqpPZA=;
	h=To:Subject:From:Message-Id:Date; b=rcwsUk4VtJgy390RW43tsaaKUnwC5wYca5MHxFDCq1hYndpW6+5ZKAmxv53VhC3TmVSr3uy2Xrl0WBIVWSu59UPh+sKuXoOGJqo1wZ/nB0idzRZ2+uzpmU1lkOXj1RPjPCJ5Zy2iZwNN/rCTw2IrdtUu0u0GCT2P2XSF/6Z94xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3AEOgdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3AEOgdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB388C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765254173;
	bh=uIUU9JhxJEs9Vif4lYdPDqeaQbfaojABaR9gkfqpPZA=;
	h=To:Subject:From:Date:From;
	b=q3AEOgdSity42ZEGJb5YxvUquEEM2L3cWVnfcu8kotmeOkdb98ciEtQO24ZzBBdWd
	 STAQR6N8I6nHt+fkn/zrUAG9HVfUJxVdC6v4InKyJP2By4EYWS2ZZePDN2vTu+a6hW
	 aEEMizI0Pv5Ypqsh24oaYoD7vKpGWiaTtE5ko0tFD5rrFbW+Tr9DRbHdn2gB8A4fFX
	 gIwQi5mGXcmxPEYhIogIXQHLDlSMAWVJhaIGdiovqA+9xP3e9fgKeg3CkEV6KIABaS
	 Ntaykcc5E5wzj3LE7YMNH59Yg6LW4OMmwY0pmrGPdTbDDSE+9IjWxmoGiLQYq+ATmB
	 pwMtkxUWojbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6807D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525417361.872.15297889010598809359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da7c47e655f285d1bf6486aa7f60f6357d2acb378b87b02e2afa3cf5cdbc5b8
Date: Tue, 09 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765254173
