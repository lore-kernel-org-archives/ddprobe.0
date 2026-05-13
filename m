Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF4C1D63F3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778639434; cv=none; b=ZUd5ekSgvsdJvDQsuImKBrQAlBY2eM3s8Tsg7UbMMjXgrIc36XLP9bUBsBWf+OsmqQYME9hxCLZwvfqD9+EFz7r7hbCzWJOKFmsG7Zo89DtCPCU1ZV1SQF3GnEGwgY5ttAiBz/HVD+6w+bJk5wCb+FyyyJwJPslm2mskFu5thBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778639434; c=relaxed/simple;
	bh=LWehLblOqc9pfuCjSuJUDfyGa6bvu93wXLIuCBvA7FI=;
	h=To:Subject:From:Message-Id:Date; b=esyaDb7f/VMY091TBrZgdtjtULl95QChaFoflLRevt+WV5gIvHhKyof5cFzsGsEDVEuxAp9auPBIXJoRTzxXuqgsMYA9iX8ef3p2YQ9/PsjssIknTQG8psqVvivfECWUT3ze7eB2AEsOJqf5rP4TAOIjdvmF21WRX/busGZDqKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O94jCtor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O94jCtor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD908C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778639433;
	bh=LWehLblOqc9pfuCjSuJUDfyGa6bvu93wXLIuCBvA7FI=;
	h=To:Subject:From:Date:From;
	b=O94jCtorS9eb/wBQ8LUMaxYhCo8AkHXg2384gi6xICh5USLBwC2WSFypdSHEQb7oi
	 EueNDj1ZGZ7ZGk3figzDMNYeL1R0zhFXnDbpA+Y66j5hd4vTNWPAI8hBr518UeNdqg
	 sUxo2FSZ2q2wdrHnaZROFIhs6cQpIsvgyPLY2rPuv3rTCu/2Zqc6ZfsJToNiax4WW6
	 OaRnG8BihZzn7rykF9ZXLwD0mvLFRnfmgC0ZY86Iao4Hk6BPPw0mBE2+wWgnBnxaN/
	 KKaMjBVdRo1GDHuc5ichTy83knz2A2tG1XUQbjOzxHJaDiEgowKoy3EdT5GfkpLhNy
	 lXsRxfDgTeVtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89ECD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863943368.18476.3184581165481976907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15ca10d46c09de7ca3f7dbcdb2b60eacfdf419bfdf2c0a1c6fa9d33bfcb990d
Date: Wed, 13 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778639433
