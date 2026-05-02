Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3888D1E5B9A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777736854; cv=none; b=io4V4MAhnL1MyK/azZ2uTTpu9tAabwu8DDZBIA/SoJhzD3OvgItCHmWwXmFnVz04EYMcJXoUrnwRmQ91wod4ZTSzj3ffV2QyffW54Mj33QETnXCYbmP5q/tVrnFke0XX321HKezfbiNPhw3fw5cBWifxZTIln4QtPDttxMmp3rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777736854; c=relaxed/simple;
	bh=f1TkhEGcQGdsYzsLQXX/suT5sHoQZFXEZScRtRVO+xE=;
	h=To:Subject:From:Message-Id:Date; b=rdhs0DPpsjRMcccGxnQVHto5BBjYEflqz7vL4Q1sn6zlwB68IHHM/WKnTN7xdCF2N4uR0/GQpVxLB4aS1WESDFvIVHZBW+7Nbdy8SC3ostaJHzDdxpL0NYlRy5rctEB3wdyPAWivFnjhKZuEFLvQ0rXvJZVr+/DB2fPDm0A+450=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlosOM23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlosOM23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFE9C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777736853;
	bh=f1TkhEGcQGdsYzsLQXX/suT5sHoQZFXEZScRtRVO+xE=;
	h=To:Subject:From:Date:From;
	b=qlosOM23KcAT6Z5nWjDMQnYGt7pBD7jlnG6AH8IHLYEsdpMzP4zK6IVRPkxCSmiKu
	 XYeelSImIAhHJCF1HDXaolIQzg5lnpFZtkIaTb5ta+wSAg1fZ1lb7WjI5HwwTXZf4f
	 Pbe4khI0aXdxfXuuWI8FjPjV2BkPaEOuAAQlMZuArCP37ao6nH5LSCDVasKDgiSH0R
	 +eGbj6mCiFT/B3ER23bdE2U45j4E5L6bpEVoA8cfIklfMOOU/T3ykdthFIEz/ufbb/
	 EhPtP75FGRyVqPQEw0kJFGwq6Sq9ShKwkor8fLHRkMdEnFn1X68KhAFybLbOoV4jKj
	 cCwbb7ieW5arg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC433CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773685368.25882.15772472442781481850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff6edeb0267c6c75623c0c0481d6601fd113103ef94a5963c037feb0551708c
Date: Sat, 02 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777736853
