Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01C52D0269
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747955993; cv=none; b=tGvHkwRleTuDas2d7xtNs6tzvZryc4CsmifrrleGFzKRz7uw/XayhhD5TZNTfZqNZ/UkWIiiUMdVIc7pXO5OSE4zX8HeVgPBJWVvEw93570iJ43w6+kviQJ4ulqlSsJMhGQzcUeInJSKNfwvEzQc/ancfuPy1XqrvH8xE7QXwq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747955993; c=relaxed/simple;
	bh=5PqZ9IND+fPP2YTRZchZETKDzZc4ibrcTtRcVgkOAuc=;
	h=To:Subject:From:Message-Id:Date; b=ncIT1mG5BRR80lIMOxnz6ywlxpn23m+j9NuZq6QoXLIjYIdqMphM/yyCQnK8zr2EPHnhznGReds7BSKTt/Y2CBPHETqsAjkdSS5xRUOYg2q2ipQb0ZgQyReWRwKeS0h3YpYnU8y6uMgwkt1xRxnMOvCnyTUyk8/8mySscNO110w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/wuHnu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/wuHnu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5125C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747955993;
	bh=5PqZ9IND+fPP2YTRZchZETKDzZc4ibrcTtRcVgkOAuc=;
	h=To:Subject:From:Date:From;
	b=I/wuHnu4mxznxJUGf897Oe14eFJdgLxT8a4D6MnWWOapFo/zY5bnPyIG+vjxE8NE+
	 yCNsI5ZsKC9Pnv9clMRVB49numXHxG/AchlHv1zS9BhHA5MR6g8JHL07/pbdteD6WZ
	 DGLUgwuKZKuuAEF089SuSzg6ipF3D2lo+1vwrjyiGzz763ckERWBj+Jjwc5A5ZINpO
	 mFagLde2qpxtfpYNSt8zA+X6/sDrpljrdGfAMkWQR7c4CaNAg2/mpAhjCb1guatoDE
	 Tm6BGPOcG2GRjPsowaACLtACKJOmAXCMPsA8EvgoM1+VAjTZxRGGaPXtVhmEBx6FV/
	 jJ+xpc1cyvG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409FC54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795599358.18103.9011624209972210878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9b10f5a765ef5a8c14d3e4f05f4755d0d18c1a2ef6aec6d97af18999f10435
Date: Thu, 22 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747955993
