Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4D01E5205
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762489794; cv=none; b=Z3O0Bofo0fbTlB7ugb7E2Yqcgg19CYB6HBuXWgpDHXMZzboMlGzRhtDhQy2CnLrTVLO5Do7MhMzf7wjQMeqTJxTnvUBUm/3aeyc8mt+Ht7AO0gxkz+X3YmxQN0Ct4ihYcACilhdERT2NIn01NqiNR6tHz7Er41xjF8aT/ui1aPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762489794; c=relaxed/simple;
	bh=Dcg3A7WpZji2wx/i4C190cyaiJ0kg5zjitRlH8nXDfc=;
	h=To:Subject:From:Message-Id:Date; b=B9LGpsf5ELtO3UZbSi2442ikSy0ItrnsI9MmNthaNQ2JoQfrr6JwgW52//glItLU0IFICrbVi5ignhSyESlqGx1+44s/9J2rEgYap/vKMEJ/DDYt+M4dP/yS02cye7tC08swmkCcLjAKzfSN48YTwFLuCmbgwcEm/sk5xrAEfwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF7nNZ/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF7nNZ/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5492C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762489793;
	bh=Dcg3A7WpZji2wx/i4C190cyaiJ0kg5zjitRlH8nXDfc=;
	h=To:Subject:From:Date:From;
	b=qF7nNZ/hYkqDU/evcS3Olt4KUcBTHQ8BIhRMmgPBy3ntlxemlI8+tMIp3BoQBKPWG
	 5nowzrmXghBS14ACeV5eQuKmHbh1Xo6JzdQ1Y1wOAlbZ+75Vf8cvtebk+3mAcasewL
	 FzSJb31b6nAek2HAId7oLcFPUiT1eh1gnoVGKLxCB+5h468Vx4fY9rTiUL3+zj0IMP
	 6RB+uuQ2hhxz7vpLBwIl6xx2c6UO+6YezQleOo0vJg10GyJb0QQPaf13DX72gO/k1m
	 MKV9VdtQIUeBzIDpUGcg4HtBid26ZZDIOb0FwFjpJC3SxT4zFIZtay+axTnhpMhySe
	 cofYCtwqwm1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99649CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248979358.31569.7456490814169736019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d37c06f852f27a268147c8bb7b5df7650862dd2de8b275464cb1cd0cf28f23
Date: Fri, 07 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762489793
