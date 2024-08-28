Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F41BDCF
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724814954; cv=none; b=iRxKTpEur40jBQbGcI3xfp0HVcA2iNCGU0C8LngA9a7WP7pGgY569D49X1gitCdlQiuYNqDr+gcsAgzQjNXjjrU5lus3qZRbiEYDTy1WsQ3pW0K4YoB2JBDvRGdJAAyS8rwdugRfjkiUFod7Lg44r/kYkfohVmkqX4r+1kssimc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724814954; c=relaxed/simple;
	bh=kfMRZcEUTXaFISSEgDRR/NiVcj5cxXKcH18R+bZRcu4=;
	h=To:Subject:From:Message-Id:Date; b=CReo/na4516SJR+tZVP1Co13Yw4cArYK0BX0VbDWqXdBd057pvelirH11EDjNTH4eL1qpn5YKCQwP1Ma9E2cnUyccsAJImgkEUJeNYb0lbg2dHs57sO8RdPtQCrmhwba+uMpgi58mFj3pAW72Mw0GGPY0e0XNeOqoHk6ZnaSXEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFIRqz/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFIRqz/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363FC32786
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724814953;
	bh=kfMRZcEUTXaFISSEgDRR/NiVcj5cxXKcH18R+bZRcu4=;
	h=To:Subject:From:Date:From;
	b=FFIRqz/Pm33YeiatVntmnb/tGHqMYFGc7cIuVv0kYQAaukQdijHAtpy9zq5hzX7Em
	 EOwdORfNqnsN2fYbfaXOG9hcrli4fzTnZgKTqX2wPn24kZI4U2lTivnvTqFuNGo/fi
	 6yvs1rAZ1dDAAGQ7PgU+kRfzGA9D0in55K5B6UvZN3VamAWhOIOjphUXgm+3A3XtRJ
	 stuN9PDK+CJutpCXJyCLFnf3IwxCpA8MMzIq+EOY+b3GRJzTzkOM58YyqO3hGzdiui
	 cNUyZ3nAq37PcgC+zRM03wb7X3UQgyhxRs7UsU/DjrtW95UdYykIgCFr4uPQLssjqi
	 gFJQOJKd2uX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AFC5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481495359.21227.1447195320170738337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4416da27a058fe5ddd3392d1aa0900dce81d0ebfcfcb65f86057da855567583c
Date: Wed, 28 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724814953
