Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0160C346E64
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771833294; cv=none; b=gCrMMA17aRYCX347WaQVSqJBf54naJ3bBQO0jqLsFis3e+Zj5L0X9w9azr0uW/rM8JjjCBCjdfffE1L6+UlZ4jJTxPW/l3X+eSDSVkwTy34zcQfZKfU8GgEvtTFYw0mpy7qQ5fQPllx3Xyt0yFdHb3Sux5Fvj1omT2c/HD/TkLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771833294; c=relaxed/simple;
	bh=EFy+H4xHvfj4fmvQxEoGOos7OekUOkhu0Xgt5xrgBK0=;
	h=To:Subject:From:Message-Id:Date; b=vE0P/z6LnTolUy04wHUU/h8CEB8DWReCgk/H6miFuhTnmcgqdOnlLpTuvhS9e8JlGoWY2PB3PyLXP59N7jgu1X+gobAmn2yyY+fleaAH9zqk1t4gEcfphuJ8fFwCA/1gVXNYgr8niL2thZosne1MZrDX7A2/L4O3q66ob9whqO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyaJR+yA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyaJR+yA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3809C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771833293;
	bh=EFy+H4xHvfj4fmvQxEoGOos7OekUOkhu0Xgt5xrgBK0=;
	h=To:Subject:From:Date:From;
	b=kyaJR+yAUb3BRr8k0h+Jdy9JeTAPYlFZRPW6eKcgBPulIJ5G+xkFvw9B9RnM7RtFX
	 LD7B3RXeeeEwGNb9zuX9SiezsML36Uo1CQvJGFDsbAIpEcXMKpb0iWqOenAtobCKoI
	 Cw4Zcp+DBBxcnajVVxr7cgcTj+My5YRrx3021SLvVvQWMdpaDeXj1C1ss5VCya6P3f
	 THER4x26R/IhXXieW1IuleDwUKKZRaSKmXWFXN3Z7B09W9aHLpCz2/2sQDs+bIhW18
	 LCGAF/TwTciS4u3a9ymPz9I6xX7k8tfwqP/xgY7XemwU8UqVbCBsKeoZfwacQeJ/ec
	 jsi0TjOATwkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A61E98DEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183329358.19678.14674051260738894276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0320ea8f2e01961e0a5fab45a45dfa939ceffb235f32a72223e98cec140ba5
Date: Mon, 23 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771833293
