Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4C637F007
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782476854; cv=none; b=clbymj7KgyIMkxcMARHyEnG6gxqVZ4Jc3FmrwHDy0U6YsHU3Kq25d1yXfKr27U76b09RTPH+epPUfKQUzBT99ja+SCfcQjkY+/kq3CG/KxtCgA/ebYzovUXIKUAWBtHNBzB0qQMKRD9HfmAM5KClIva7vJOpBQvO+umg2lEaz5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782476854; c=relaxed/simple;
	bh=4aQgMvFN1R/dvPWv2l4kXU6pFN+tYUWJijv7BHWNyJs=;
	h=To:Subject:From:Message-Id:Date; b=tnFvbwy9LEqwT935N3HdgWvT7I6aLhvHN7uDaVzGMBwPr0piHyATK7+ACcJ3kVxQYwFTIPUjXuz/iKzwmV0Bf24U3rVo0l8dXwHNbbcH7WbjV/5pGTY1E01G1rusSseX4+FsSguRG0YFHZ03XFeqpVYOZqS92bDAOXwL6/G2lEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6JFSxqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6JFSxqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD96C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782476853;
	bh=4aQgMvFN1R/dvPWv2l4kXU6pFN+tYUWJijv7BHWNyJs=;
	h=To:Subject:From:Date:From;
	b=B6JFSxqow29Z57SsLRo9+nFDKqKyNubbEHeNABSlvyxdqRHsCLSJm4DJPvVxJdu/j
	 Ti9VwJ1fgYc3wPAF1TjI8pAiP04qaezCModM9QEJm3m7ub90iCWXSa/va1UgWSJig+
	 wRuTQI05hEuoSHhGJiyW20JReaXmnmHTxSGiByCO7hHDZxYpT7PjT1rXxn2WDGtuAa
	 hkR46iI0AUK8lJTEEbD63jvHDyS6Im/E0nPtpQMSnEbIktJHvG9LqEtpVYb+34Jxs9
	 KPtFr2WXTkizo2uDff1ZwGxcJs67eMVLNCES2jgSfwYlmBSvUhpDVAOA2LqpddORzf
	 lLt2/NYooAnMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4110CDE002
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247685370.10551.18080156213081036986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8c2571bde672aecbdffd91bc3d703f0a05e9c30795fcb10f6fe9ac9f6293fd
Date: Fri, 26 Jun 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782476853
