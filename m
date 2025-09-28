Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3715C158
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759047594; cv=none; b=bN/PQ5hwfRZpcTYG2gA1TfGtgAtVOper70Er6PFU0L0LdCi7YIczHCxCbfkxB2ztL7rpZMzlwJaI0IiEkcFA34PPRpriPHYGJFud/bZP64ifIr32HTMV9BVlHSqArH/HLmyzQ38IfRsvZxeMfkBlJfJQg89n1u/Xm7yztcbdGRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759047594; c=relaxed/simple;
	bh=n1A2AN1k+MRvZpH2PJ/BRyJPVfp/rK/JEiENxMHs/Os=;
	h=To:Subject:From:Message-Id:Date; b=kOBbF72SdE4AU3hKIxToCwWox3OqUT0pwX1vNxZeNRot4Rr7+gO4f2F7un6Si+WhRXYF38NYiWh51MOn8vukjXBvUEeRPaoDTEkB6/swnKqndEXc0crCntcuov4Nm+ysYKOEB4Ju4DkhBMWST8XAakYjlAuRSGkODqkdGM7S2Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF4EccT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF4EccT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F57C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759047593;
	bh=n1A2AN1k+MRvZpH2PJ/BRyJPVfp/rK/JEiENxMHs/Os=;
	h=To:Subject:From:Date:From;
	b=qF4EccT6RPt+LcqC6s3ggGi6WV8lrSc6pGDSYcqSfvmTQYM/xxvhT8/g9C6K+ktl0
	 2khKRi1n1bK4st/uF/Bad/cHJgVHiESZSrrIVVuU9/IGUttnw3CXcy6UvbPu1gaFJ6
	 Z1v7G+cUtZj8aUUz3n1DDFTEhvAeS0B6nWFUfYWgA0c9VI6dyiPndh75FsynIKeOCI
	 MWb0gwHTRGwtgeyNJ4tMFKB3clnBFa+7qYhlr5FrwpX5mHFPS5UAtDMa3LtFtVLiCk
	 jFj9+dK7bW1LEnfBGVoSAo5/rrrd5OhRBV4liFeXKUFIzpC+hLydr9JtVctfw7E8p9
	 0lvxBitHnxFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904759358.29626.453905328574392080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8e8257aaf1337a254166ade87c2e0939e5f8464bf21bccb5440d1d04a359d6
Date: Sun, 28 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759047593
