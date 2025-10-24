Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57A1459FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761348594; cv=none; b=A3q27DjguWKHlBNicRzii29PuDqKgD0yHifE9p1amnlWPiwx8EkcZM7L/xkqGo7Qr9yaNoFKgeb5QF6T9Amx29gjBELgUZV/k9fWQeBtnTU2vYnidu/9/DlgGoUJhl2LbXoLX4G1h4HvfrX9ebGQrp0gJjgHKw9OewrzCPGbJk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761348594; c=relaxed/simple;
	bh=6sGNE4AfgnWLueWsOP++SfpNtjTcUFt7v1R2cccILFw=;
	h=To:Subject:From:Message-Id:Date; b=bFjYv8lyNDf9FZ5RcCoUZquCgF4XwcALysmRI9bz81z1sUqjuP7HWKoIPdhVJAz05K5a7wvtS6Sm8JFuhXe7ZgbVmCg3qzrVhy2mr/1DAYTyPTphi60pT1x3H8xmtK9l+yy1rrJk9gzAOJkcZbD3IAyZ2ZdVdlhLWNgWwmIipcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+SjRqXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+SjRqXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C05C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761348593;
	bh=6sGNE4AfgnWLueWsOP++SfpNtjTcUFt7v1R2cccILFw=;
	h=To:Subject:From:Date:From;
	b=Z+SjRqXAew+E9XAk5+D94EtIgadwArUSJ88SwqYnqLDS3rSAK9TH+jKioDiuDpCwM
	 mS5LIKRP6Rg/bfJjHV+hhqk6Ft23Wfauy7lNtULkdnEx3OhrdXPgG+mKaSEyZc/Azx
	 tWJRumCRq8XpnDrOlI/KusJ/0HQA6cLqYLWAr4XZ/xI94v+gARE3u3PxBQI6gcwZVq
	 GnRU+QWF0o1PIEGL7AJRSyfmErMev1mxIjMbEBm54xYWmPY+O8+tjbVOAbU6uo8lmW
	 CSHEvpPYpqUM37bWy3HX0GJmgyL3+OKPo/gv6s71cyelU1PPovPHbToovhgJSmnFVE
	 6wxM2n4ygopig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33D5CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134859357.986.14052392517118039431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71811723ba597f4490ad67bd7aaba37788780218d480cba128efc0580a977093
Date: Fri, 24 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761348593
