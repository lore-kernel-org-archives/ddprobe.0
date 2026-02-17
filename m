Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20677CA4E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771293894; cv=none; b=QoOwewwULtyMHrHMqzgADJH4Jr0FI/umbMC5IP22RWgio503MuAGg+i4gxDbyJcv+fH7nnpqB5CAA3o5iDxL5oPJDklX7oVBllGEaLMHjLSSNY9ib3TUcicMJFmJOivBK6zbGOnkO/zbzqLqAI69/+tyYciNJ2yInTF7OdXzQvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771293894; c=relaxed/simple;
	bh=1kXw5leXJiEgdqbjrOLbv05JAdJ7hCyf8vEae9cyoKY=;
	h=To:Subject:From:Message-Id:Date; b=qc/ZA19bXoLKl9+OOvgwDG0bTNnTSrmv9R6ptnYjzK98SB9pMGXVrYtysomxB7XCfz8Xv6lfDGYM4vFwpjVu2XwB5OXTZg8pqTTxqp74mwZcL4PjyHTpLLOJ1mfVgr7kRVLXvlOUC37Z+XBtSPCoJcGqRwf6wWkVX1P5Nbb7WHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Gs4xOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Gs4xOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8428C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771293893;
	bh=1kXw5leXJiEgdqbjrOLbv05JAdJ7hCyf8vEae9cyoKY=;
	h=To:Subject:From:Date:From;
	b=O3Gs4xOIgbajUoKqfvSN6bRxVnVJ4K29UAt//73SAELf2cCmb2IhHfhk66Wcaq8OC
	 1FNSlDUH6EqkUKkXV30pOAYZtlSNlOE6IRkEE3g2E/8oR6YjHPFTzizkBJ26oNFGxb
	 IC/8TyR6BP3kQcmqS3Yrou+ENgtxGTG+LMYu4hBwOJOI99WEhhMrvJOGnnnoWUzFyJ
	 Fz5YbVkO5nLzj15cRlYwtSQtMEYHOHUsPq6RzXdU1kn3xZ4Mh9nhjp4NqqbeAMzRnv
	 ukuN5zLddPNfT+zBFZ6Gcdaa5an5ZfVblX4URUg/y03MOMKsQoRE5FFzWVQ6H958BM
	 hMkQoqHJLKOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92641E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129389357.3403.4823158970293550485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dacae6ab3dc78c8ac263fecb2ebc4f58b872ad33b8798777f6e5bf24ce039d9
Date: Tue, 17 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771293893
