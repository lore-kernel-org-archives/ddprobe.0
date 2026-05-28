Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515832309B2
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779942154; cv=none; b=d/aCUrsyzt5Ra4GWMmc6Gq4DWZurATWaC8KbU3J1XgMHwJtnFPx0raYPVDRnPzv0DrzL594r6AAXpr8qBURPCFtIEzHOGYv4ra2wKu2jCeuIZzZ6kgG7JsZu3oQhpKub/qlxh055ZUEXap9vBtcmtEC1HnQsLDvPH4B7nQR8IO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779942154; c=relaxed/simple;
	bh=IGReb5x52AJDwa8c+o3o48ROE6GKLjDk/N+kATF3Peg=;
	h=To:Subject:From:Message-Id:Date; b=FBTHz3S+f/AsHw6VFqjq9mPynEGbgNi0WxznzzXlJ3C4rCs/UoNOaU4X9ncBHzZ/AFJfoc4eTGOSITYel6jD16lfKaLL6aj4XDUSifjA75pvBqE6ri+E0cQKhy3Po4M7JXdE8gwkpnf7x3uaGArge0toc0O7HKztMUX1O5nOjwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiCrM2j3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiCrM2j3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4908C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779942153;
	bh=IGReb5x52AJDwa8c+o3o48ROE6GKLjDk/N+kATF3Peg=;
	h=To:Subject:From:Date:From;
	b=DiCrM2j3OiroUY/i9OJyCcN0o4XnDWB5TVsaIdaMDdgX6zhr+dGLB6XZ7TzsmI9CT
	 JZkpJDwwRnXjr14x0SPL9dD3xvBDa+PR6eWR1PlG+9zmjcga+5jEJxJ0Zu6hZdjmUw
	 7E2uq08SAFJHDPXKLDtDuGPX+Gf2VtLWj9OjZcg8VXk8q3rWOIfP0VtB6YXC/mf7sV
	 uqjOCLGm8JSVcVIIk9jmmraKX+0xhoKalUacpUl2UBiMIRpRh6dWLIQH3Z5FpzHaLz
	 8+zOZ6b0iXjrcaBHVHx+zWhKUdxMumqP8DeHJTdCZBvFHIK+9V04QDxWldWh8Pk/zL
	 A0nw3hTMKK32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F92CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994215369.11392.2303938784503365355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0036ac96d5a2368ec5ca57a11d935d12abddfa134b7bcf04dab99aeb864cd431
Date: Thu, 28 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779942153
