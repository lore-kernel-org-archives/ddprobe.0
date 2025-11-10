Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B2D2AD1F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762735794; cv=none; b=AQHFguAuvHg9f0ZShKBX9OIY3HkIEeHKWvVqC/28EWl3Ho+L+8q3kZSVUUP1+gOkw78bGg0KS5VkDiSUh4+D0xJ26D601GxjLl07Lvn0RiUXRRAYVA9ITJuLHqIaMjJZLFCTXSCXUVSpT6ZRVjj5Nd6pvBWnbrPQtdzCMfa/1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762735794; c=relaxed/simple;
	bh=ynf3UTKoZF71GpCbJBpKsk12lEHLoPWeQj80rf5HVHY=;
	h=To:Subject:From:Message-Id:Date; b=kAwiKae3YFtBGJ0MGpy6SMVr+Rvd8Jl70cRS6LJEKDoiheuFbHcuqfBAxY3y+QWUkKU5Lx91+GJHakEAT/5RY7JYu/0bC44QqPBuOzTKjQ03EAGEEZWS2c2o/8SiVTwUNY67cizfyihfsum5fjE/X5h4DW1GsYrskbdPnojEYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7m9NqzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7m9NqzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CF6C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762735793;
	bh=ynf3UTKoZF71GpCbJBpKsk12lEHLoPWeQj80rf5HVHY=;
	h=To:Subject:From:Date:From;
	b=g7m9NqzNMNL4Qvo0KSuMaHiljvOwoQvpQxaA8wysTnHH7TlUwvIE80EtgiO9IjeqX
	 qjckD9ydOmoKz5O5NM7KtpPUl+siltTpCKEtU9CVQQvUVngr8YpAXddkRsPeNIYDou
	 a7Yceo0gQcywpwCurxcDtX/roZWQ5E0dhdB+X9KhJpbODAwSpaSe4v/tVqhF8iZQWK
	 W2FIRXeOTPPnKVaCUo7GGzYMzJFovJ2VeCbdkExfwIByim1BZmgghGvpL4L8rU6PQa
	 nEnfy23kT9psJgKYdHyn/8Ae0etRbi5wggUXGuBFQHWa60xCvbUUxhRI5aNl+akRdU
	 5M8bEpAFDUF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8CCCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273579358.14514.1973427312348624947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb49165d035c8cff9bb6beadf886ea2950735ea124e0481627f0865cf3ba8469
Date: Mon, 10 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762735793
