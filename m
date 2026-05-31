Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495412505AA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780242274; cv=none; b=MK13jm8hqmKwXqD+4f60RkwDm42GJLlArbZ3BfaAjaN/z4tsgtcDrc9pjtL5xjMLw8jzgaPJemMiudd4VZ6aJ9Ho+FJc3FwJw7Mqbsv9Oc4oM3tyTOjErYLUutNgNvisuYhgOx0gQMAUm71RHHBuUfjKnvt0cec0isYmXZcKqpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780242274; c=relaxed/simple;
	bh=LLj1z20gRrQIYsNAExC2STkaycH4LBCkcfh/1qUeWQk=;
	h=To:Subject:From:Message-Id:Date; b=J85nIYEGHS7Q499PEqkEFIauNT77HkKqdJM6plfwlKSlrP9aEqLw9EPG51X/+x4dkYEqCg0Z+61/IZiThO6TtmDH85nSJfXGGeNxEcjvbLJUZ+51XCdDZyrWtZwE68JulmEZgh5d92rqucKB3pBkcKtNm18srLMJ+bpkBxYmHBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBXRxOT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBXRxOT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8002C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780242273;
	bh=LLj1z20gRrQIYsNAExC2STkaycH4LBCkcfh/1qUeWQk=;
	h=To:Subject:From:Date:From;
	b=bBXRxOT830TLuY7LG+SZK+OzXKuDw1iMpFCZmn9kNZxqogjv66nPwNJqpo8BeSjl1
	 kLwUomVNBgnLv28MYxlBoms5iHdGYzWmy+O3Wu0jjdITjvuNnWvNMuQ0Ud6+TaQjUV
	 awiwsgTnsn8g6AchalCSCHIUYoyoqZtxkq1ZA9E4TTUzdstbQ/eIKGK5SyOPBy56cG
	 XxnL/GuwKTYBByzK2jai6pEkomlPn9n6L1Y8jLSAem68z5yILB7arOyRzA02JYms9k
	 IBYGUprVKMSP7dtcoiLEVLZSqazUb7R5wKteIaN57WlWhcQF87btQj0ps9izGsA7W2
	 b0PgjiYCHiFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4CBCD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024227368.12506.11295121075105945102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fcb30f03972d0587ab9c92e7f66399b3b912a60c1efedd39d59fbce77b27ed
Date: Sun, 31 May 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780242273
