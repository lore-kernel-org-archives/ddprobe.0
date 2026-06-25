Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6F939524D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782352654; cv=none; b=D+HFhin7gYyNvb1P9DW+U/KH/NSpjq27PNelah91Jj0HKN+6M7JceRb2uV/z1m8tXeO7gLPnyvx+2XnCPBFMxpvt634HngqyRjbOMIn07FaiS5nEJCpnfVYjsvXIahpG/UpNXcHOri4s8dU8Ihd5w0gFRd6cLf9eTa0f0QzgCes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782352654; c=relaxed/simple;
	bh=1N1dWMYrb18VRSjBNfrZS47zjjx1ZPLP6vh7qUqDAdE=;
	h=To:Subject:From:Message-Id:Date; b=ZT8+IgmERzVJGqSDnvIjBKelswiuY8EZQ3NXzEd1SbJuEDUpkcSyEG7j34d/xiHRqtrvkKmLcGPbSiZkU0aX2hyHer4LUusufXTvWmq8saI73yzTOApbSSfSl5h6ewUvLbpWpn/g9YVWhsUQ8aiR5obaBoXbooCD5A7PZZWGDtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBOyTq6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBOyTq6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7ABC19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782352653;
	bh=1N1dWMYrb18VRSjBNfrZS47zjjx1ZPLP6vh7qUqDAdE=;
	h=To:Subject:From:Date:From;
	b=KBOyTq6y9vDSWSkFjOOrF88mNsGvK4OeM0CMy0Hc5OF+HoCPQpFt2fpatvmiU12Di
	 uXq3aJH6driqhKAhsqqHlJg79sbYxFeh32QhQYhpFrq8rUNgtM4qRGPRINb95b9oTE
	 aJ9bfLUE/wDohgx8LsCIDf4DtI66FnsgeqWSUk8fgw1dphe1z/XZ10NLeImvYb86VG
	 4GYGba0U9aIf239zXnf7fZl9UQZ+g+DgN2kEOy2//93yPxIhC0orGkxWMEC9DUX51d
	 Ut8gi0p3mEwOIyuVPD+9v4mK56E0HP5u57cJNjUTW7C3RR2NpynaHXOj8cVBHleizs
	 udjMPBD5IY3ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF58CCDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235265370.27307.7543428416186152983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a5562d6f64e0311d3f53af3dca493df85b339e6de96bf5060b9ea97d68437d
Date: Thu, 25 Jun 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782352653
