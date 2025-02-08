Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8157319F101
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739019354; cv=none; b=kcHRVMqHsiFb5yCzDIb+Wwg2/waKY47D3XIOidGSx16VYHui536uGPabn+nmVMvP2NVv/LhphDL0TkluynW72P1NZlQCO77KlDONmOFKEsJZwOgpI72qz2z/h2tm775cK0g3GVSx+loMSGcprjR2xqRVDS/eFmL7cVbqEqFpDFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739019354; c=relaxed/simple;
	bh=2J9CI4s0eSPAz6CdxgZBU0oBNhA99VNzaSu8HqS3I7g=;
	h=To:Subject:From:Message-Id:Date; b=A1NOPbQlFV1zcgXJPu0jJrlabd6qY0OX76+WiSlBdqPJQ9XGeByxRvqL3mzqIq8h/lPxEmERDV9eUTWlgpWaxuubth5xhTcZs7yTgfqf45ZlXQNNgCqRwfA+4smKiKKZo/UsZGmxKqCXb8MOBuFNNjvgPqfS1t0lch/Xw6BKf0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtCwcd0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtCwcd0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD34C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739019353;
	bh=2J9CI4s0eSPAz6CdxgZBU0oBNhA99VNzaSu8HqS3I7g=;
	h=To:Subject:From:Date:From;
	b=MtCwcd0qqZ0sJrNUr3fYTnwCvsjwC0pGQCs7B/a73chg2BQXqoKpxNiOW+YheSDhJ
	 4pk54IDobgNNM5grq6ss28peXibuYqUzQwerX5ZBblJtwNlUTA2piiyYn81/4v+2Mf
	 q17S3eCS7gAWOdbqEAWr5RT52lz675jSwse3tv92rRtGwpyz8YAxYYstHjBgCVVy9M
	 WKaF3179UCbouqJJadjxuauTGtu9fF43i1AB0rKqgVcH2Bq1es97ZktnQU0u1YWIz0
	 LViJjCHScQRW1QayZgjeqput2Wa4amhMSSufgOHevQuvvzebQN7MG4zqLLpHaiCbLF
	 jrSknr9Gx2AEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5955C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901935365.25568.1521799132023970362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9871fb4ee3be0502b2864a8e83bbf86301aa6524c3fa25a524109b432e879c33
Date: Sat, 08 Feb 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739019353
