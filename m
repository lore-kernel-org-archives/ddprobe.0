Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CD4385D6E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787043634; cv=none; b=BrNam9o9dDPt4pKJsW4P20bR0ui5q+scCTcH+sRk/u5tZIo7N0VQTYDMEAQfDokGmqIA1jGYSDd/vC58Gm6Wl+PsSOOPipUQ75+qSn7ZZieyXMyTzvn9C1JwE/Oo9HQsRV0GHekseoOo7FrMOqK6C/4nsEpbcWI0pl2QB5dKyMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787043634; c=relaxed/simple;
	bh=7KCnbARZ/XzssZGIYsP3Tg1ixWkue0U+/ZI3gVtvptA=;
	h=To:Subject:From:Message-Id:Date; b=qWpxTv75P9OLxBy3kB9KbWIiGTQqPFUL9GhbIPT58t0PFtTGba9v92gJKcHi7e2yxvNsLjqcehzG8vnut7mV7BDoDdQN7Ho55nnE/7k4KWiUNplLW533C6NjV2UtSTTz7gNMfRxQxp+nA6RYriUhnxRUEMOdM2CYtPn/WKd6Pzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceDwnQ6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceDwnQ6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E70C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787043633;
	bh=7KCnbARZ/XzssZGIYsP3Tg1ixWkue0U+/ZI3gVtvptA=;
	h=To:Subject:From:Date:From;
	b=ceDwnQ6s3fRTQzfR0BXHKe3xhj6/Lkyiu/wrbigZMXxTis2LltcYcYsjIbgNIDS3Y
	 0KYSlJhGegoVwR/LR503QWrGMlMumN0FQPOYZyZD3vVEng0sii1u3MlV2u9u8diOvc
	 6uKtwW23DspNJzVxiS2ulyr581LxaFWSp74GiDnBEmzTrD8XJwyitdk5dDgkm8AJSA
	 TGa67YaosuRPq1JNQy23dihg8SzkyLjLq/BCD6tsvwaOuWvwmkx/W+ZUgmDSgi/fHT
	 Agkb5NUckjb8koBNjURo287uxQ7iawD7yCgJJmWndjH4Hp+GrBZmh+6NHlcCuZji2p
	 LjBh8M9TjcNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B2C5DF80
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704363370.3832.14349313082379980921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef9fff52aad7b885c3f1c537581f3b2d6aa424518f2a59af15829c5095f8bfe
Date: Tue, 18 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787043633
