Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8362BDC29
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764696174; cv=none; b=KmmKDy7yBV83xXf9EXBQ/TWe/KL4w5yGjZpWjRzgIZPtEtK11sVdsScgVzx0ijnpDwqcu5+pRM9o/z5GKeU8aetEkSYGXaGiLHSV9wX8op5cRfLCkgA2r6yCcamBg95dUxx4NiYBMLLYDtvezCC7+HKREWpIytzk1oKROcessgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764696174; c=relaxed/simple;
	bh=amsmER4YJ4N6c1Ptmb0agHRUoRvJeHCRfwOk0EBHkWs=;
	h=To:Subject:From:Message-Id:Date; b=obAdHOyqkfO08KNuR145fduktmtSuIZmtNBnmtxE8cgU/sYHcN9ZyJ5BJhtu2OReBkXyOdxGolVP9VOsiLJPQWGCjMsL2EVsOjHuGDdsZ4hEVCnuhyGFZvaN1GNGL7xEcD2RkInISndXl8jWZCD2FsyoYtGc1WE6wOG7OMtYtcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8jusxm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8jusxm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34DCC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764696173;
	bh=amsmER4YJ4N6c1Ptmb0agHRUoRvJeHCRfwOk0EBHkWs=;
	h=To:Subject:From:Date:From;
	b=O8jusxm/i++ga1XkU5MMtnXaZkNd79N1/HK6+tErqoQxWtkakkUlRE1J3jBDLUnBC
	 kCiJVBu3zdiDe2ccsU/nyd5iDStLncXnwMhsFg2Qhsn52OHqzixYdRYeey7u3GI0u+
	 lORcMu//3ylKGdh6DysDZG3wf/pxoRFYhfcWDHa0pEyFT1EVFB+8vyz3PkRaiS7CdR
	 o7Lmb5dPpGkWosMTZz8Cb1sQa6GODIpahZb0ukdkplfh4bZ3Ea2lWIc0kd3VqZN9Lq
	 y8+Q12ay6kOXOjp0ci4AhhBoZmqPTpKdezP9ukg+cr/+L0W37a4X15N8qICs/flOoa
	 rBzSNddiGgFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C9D1171A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469617359.9795.321175864594570974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b447464ebcf2cdc4972f9d1a8086c08a2fb27f43460a30db0a4b2401074a3d
Date: Tue, 02 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764696173
