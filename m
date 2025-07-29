Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17428DD0
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753793394; cv=none; b=kQAPdbIoHiapD1U2XRPL8r88XFLQBWy6bwxLiauXdljklP4Aj8gq1yxpIY3WpJXeb79EdTDRnUTQM6d9VX6UV5KnoNteEpvimk/nYjfQfq3zg7Cxj7u5bMyiWml0lhU92c4UdjmT36l/pWSfpTYpY9ae18YvWKEz12C2PNgHZr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753793394; c=relaxed/simple;
	bh=2waOmgv4TmXdIpMff47b78LdsNv3XXD7IzD7i2YrUD0=;
	h=To:Subject:From:Message-Id:Date; b=heQ9vwn+y6eWFUchox+PMJIZ2CHmBrnU1EQM7g1y/2hqwa1ARuEvQY172pqLWF/WVkSyQgG9HnNEzE8f266zMLGOxRsqkMLTMgyJKkIEfCitxXChsHIeln1Z3vzP+xl5L3XnS8e9qlzdsTKOcBpT9wwb8JDqWuFduAZbFqXan3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY0Yf9IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY0Yf9IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFFC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753793393;
	bh=2waOmgv4TmXdIpMff47b78LdsNv3XXD7IzD7i2YrUD0=;
	h=To:Subject:From:Date:From;
	b=tY0Yf9IOQZMPbdJIDh1e1Zht+MYBwdToKDC3zp7Haz3M+W0FOUxjveSn5PobacKQn
	 WnTDRebx2ZD9Qzn6Z8puvqb++jGoDXO+IsDQYpjibRax44stkfWWPJW4e+i5bmm4X4
	 42vKjvpERxcIsAqBoZATjTCxcqwQnIU5Tf+R6gbRvbmgUUVtF/topzs521+mEx5X8e
	 0EnfzTvbzj/MjWn6skE48WvtnggN20EdbgIGqqwFleX1hc4VyX36v7zlUF97pGGPVJ
	 ka5KY5CWi8CS6WYv/lLHqARBpSl0NU/Fn6XEEzh/084sno9HRQNSDUgaVtHF7SXCTI
	 4EYmLI+jd4qPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CCC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379339357.21613.1893146418030100157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caf7406ee156d181f2451b3fddbb7a3f2028ec026b59a56d581434d0967acd0
Date: Tue, 29 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753793393
