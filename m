Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3F44E027
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778526634; cv=none; b=tyNHv9jdEA/WHhCkOlms8ICy1Quj0n/ocjxcXh9aZMFxAWaaa941IJ/xaET2S7fx9XwN6VV3pA3K1YU7ws9kEKrjGQqYIIBpeWtEh5/hJxwWD2mrpc5U4Z1aP26vnFIDufDjaRVNvY/gIAMchFxBjAHhHMhJ+5Ke8TuR2T9PCDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778526634; c=relaxed/simple;
	bh=t9uZNzd/WQ8qBxOPLZORkEnibvY/yHxQmtRLn4+DTho=;
	h=To:Subject:From:Message-Id:Date; b=cZ0y3xubF+K71jCLXYg7kATzIpSNjpaeXXHM2R/P7F4zTiVn3CVQIJXGQem9cHkb7cQzxrC+JjX2U0liaqAVDFZlI/I9QzjsDLXqXS2fcBV6WroucdvZTcbrIqlDOenpDQzVMwcTGtRgwAm/WGI8vluUEcPsIt7jkosurFvPn7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dygbXrdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dygbXrdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC0BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778526633;
	bh=t9uZNzd/WQ8qBxOPLZORkEnibvY/yHxQmtRLn4+DTho=;
	h=To:Subject:From:Date:From;
	b=dygbXrdBEDX5V4LC6bLsL/kTGgDbX4/O9zbJ3PA3j2kfOWFWo9sedsukdyLl/LYiJ
	 QP3q7r3xEt3jrnP9YDxbl4MdMeJcC9P5KCtzIo6zwwqCPE+liLCivUtd8hDvKXf+Vl
	 dkUW2V/yJWZbtMR11TX9nKX0X49LuFJKWtUnBL+BYLYRvpOnZ5VIdxd93RcyP4fQRT
	 svEi4A3Dnqn6wtRHanG1dVmvrSvFIo6I0AMhXqBZzF8IrNcreVu15Nscg1vlaYPEqv
	 /YXn1PWHqe1UiwyqCOCv9MJhrt9eXEax5Pquc+oxFDXPjKFto6OrGDfkOKvy4rokJ2
	 pXTq2s1W+uISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34CCD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852663368.9583.2904390233513643136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12472b61d38c6a1f5bc689486740e6ef3f3f7502c66d72be2600584a23279712
Date: Mon, 11 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778526633
