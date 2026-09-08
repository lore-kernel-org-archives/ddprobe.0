Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B60B8635D
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788827434; cv=none; b=BYsEoFwsvezyc8y/58neTaZjEeHIURqDQbWfAnWkaDiD19VF2Pd12vak7fY7Lii7T+LbNKQgRACPiVG3N0Yb/0wnE7R81MmzJpq2rFKkqd+DsaGr3iG57LIXeQA2AwHDHYHDLT01vvKkrNLQ3X8zTGJ9WKN1/0zepqBcQxUUr0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788827434; c=relaxed/simple;
	bh=n6upoOE06KzWjniMqi9iBIAWemu2GcXsuzXybkbk6ok=;
	h=To:Subject:From:Message-Id:Date; b=UbGLq9CuiWvF86dVMhbXEzUEHbfb06sQFTH13YhprMnmYyoLaEZKy0JQyXM2yXuoFgwXEftKbrK//m8FkfiXZmzaXmYfHq36c63p70gXVvhUu3As+fKFE7jV7/DMfGoXAhtP9T5Gg5pCDn8xEHQ0fVw1RYqlMtcFOFw962xLM+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBnt5036; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBnt5036"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8328C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788827433;
	bh=n6upoOE06KzWjniMqi9iBIAWemu2GcXsuzXybkbk6ok=;
	h=To:Subject:From:Date:From;
	b=CBnt50363oc9QCO0UYYw6RYMoc4W/DCR4DmtrmJPfbO3Ek3Pr2U8lZ9+5+85MOiFD
	 APSRRChfn/g76eHJcnJeSf+1Q0/dplH/ck17cQPFkTOdjFyZqiQmXwlnRdRPQbKdJK
	 LljC6HE6uxrEy++8e+SbIXs7lSa/H34x4CJEaKVy5Z0/X2MkM8F/ky5ub1DSK1Be4s
	 1rIFwhLvdO0wqmi9w6Ww2MniG+DPXNL7pFVSbVzPZpBibbjg3wYE02Sr0+K/2SKUda
	 51hqmHu16DZ6kKu4xwwxBC5VWFa55b3DcM10j60zwaCyJkhMHlzWUS4g3ZXNcEhSJt
	 Z69uxgQex64oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F01C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882743374.25083.11568625910731889991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8934d813778bab72f3223af3c2bc91f09932773ff8a1690fc1e179e8b3aed0a9
Date: Tue, 08 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788827433
