Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595943E9C1A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792350634; cv=none; b=nJu7Frgk/0IbAllAow92McPUbOKBNa0dumzwAXU7eGGZa8wxEEnJrEzX9csLzfM28iadqBriVikHe/rkegTgikzmojq9pKJdGgLTEO0J8zTSP9NBJLMh+8K77K4c80sBuHx8RYuOFmI6HNOk9pEpvfzdcwOWsZ+hM+GGiCg4juc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792350634; c=relaxed/simple;
	bh=HtHL2N8gFOhMHdm47xk0hQGWSg+Udslh09CjTLozg0w=;
	h=To:Subject:From:Message-Id:Date; b=J754J3RmEcgiwnqiBs+opcbGOyexx0gDVgP7ZVdBxIeu0hf170aqk5oN6kpOowT4c599afAcHB8755jR8Q3cPZlkEriSA3Pt1GUCpIYe9SJ20H52K5HGGbGyD8ZsrjN/jN0FOa6yutJBHpHIQPxE4ARF/Bzf4mwBEpGOQ3MVKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5945USX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5945USX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21A6C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792350633;
	bh=HtHL2N8gFOhMHdm47xk0hQGWSg+Udslh09CjTLozg0w=;
	h=To:Subject:From:Date:From;
	b=h5945USXHwUGawG3m4CpkyVTlNDymADG7ncD5irMb8TrBWHD3i7FGbSf0Vr5WjLyh
	 mnbdJTFRWkEjzVpo+S8H7yDFed44tGm6xWL7GiwuK+MNgttXPmRBEoU1K3GYIzGvRD
	 wHzHQhcWQCXyzxtrcHfmTvq3flBUO/i7umf18a1antWJ3pdswzSvK8OH9DwpF387H2
	 1yiPqlAnmHamsYWeovxYWMsOhykNFxDAGvX6Z69VpXpsd1g/FpoYzBzwPjmcJ9r5Hx
	 vY4V8wXx4Ktf/PmB0FA4xKV//I0sHuZ3LYqGSLR3NRSPieJdhkP+zj8v5hLEGSSkKx
	 4LaHU2Q4fsd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB20CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235063368.31166.15474355784909178191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d3229ea86c2fa0e6b7cef87fa8a711b2f7f96e231349184df232b7b65772f8
Date: Sun, 18 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792350633
