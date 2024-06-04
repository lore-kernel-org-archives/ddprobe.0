Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748E4143721
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717492523; cv=none; b=JKCLU358fZz8W/lCZBlavhsVOwZx/UAcph3rSS/HQTByMRyJ1ONQbOdTLao0tlaLSlR/03NONYjCyxVpsHhxdO/jaKhFuM2lrm/JjJvrBKacq5qSU2Q8pmeXBbiSKgzA9fQaLPrA4CR9XUOkk6ASRwBp5Xu4EhnNp4sYAWmzFiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717492523; c=relaxed/simple;
	bh=7D11EWe3uXR0KJs6qsTCTzZyUh1GCORe1kJySCY0M+s=;
	h=To:Subject:From:Message-Id:Date; b=InZGzBb8Sae3/U6K9OJpSsHOzrqhWnMcrPhWwv4rwAqnwl6bNUcGhZz43ubnjT+Ic9WnrDOuZRyJEr97cXysCpwhjiEtj+UrFokpoZLWKju0xp7YsitGTy3cs+vT2J5Gl0IXrGmS5BYMDLUcfIIhIcmBeZkRfQZSZ7mPQVTOick=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZBiDcTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZBiDcTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A8C4C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717492523;
	bh=7D11EWe3uXR0KJs6qsTCTzZyUh1GCORe1kJySCY0M+s=;
	h=To:Subject:From:Date:From;
	b=ZZBiDcTf+2N0JiVT0LkhJD8kXt3EXPUwZzbT8VuNNGJTKy59JBKQSNYiR/0AysaZi
	 VhX5esG0N/d3kyRjd2lipVaFQdviG6hvAzWm/P+Bf63iHdBky+QgVZr7nmG43IHNCo
	 LJM7oF5A/1qFWSEOpC3zf3WeXVbVrDfAUHcs6Rnf0zesp5oF4JHM8N9KQqoqEnuT+E
	 DIFgn7o6YfoSnkkMJzi9yaOu/Ipt5OtpPaERm98nrQ2+5adC5Nfk3jMEWQiToWdDmD
	 wRDeyewXIle5M9ip4WJEFg0yfkkjhnDmN6zl1inUyn3inxQv81FQVkEOCLbIpAmciR
	 hPK31J4pWlbwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF50FC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749252290.15773.7920056920576402790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bf921a446f941b4e1b181fd78ffc6a1fce9db1d432c19e6b0eb174b396d5c4
Date: Tue, 04 Jun 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717492522
