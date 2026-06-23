Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4AE1FDE31
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782185194; cv=none; b=WZty8XOnWWMZiAHOFNIWhtvlpQQODEdZs4pF2XbQFpPvZRqKXUlOO+InNp3auxIc1jkExwRcvhzD3kw1T6YPaJcX/skj9MWVp5DLzbmm8eMhWKfLuyLF9CjQsCqAdTI/jUjXUEtLmrm+ju9Rq0AWFI9qpVuiU1Bj0esDR9FxtNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782185194; c=relaxed/simple;
	bh=YP9CcO8fC0+oNkU/2D9g5vPeZ9Tj2HJR7BLiUyeYGsQ=;
	h=To:Subject:From:Message-Id:Date; b=gEi4A2ImKoHziiahVVJA6CZzcEUr4vMsIcIgDzjfMEBK7h5cEva8zn9J/+PzIZwdaSkf5/pbitm6hzigie71ZBz7AC3tpkFZuI1LrQHjOMklarQAzfZRCHZXejM2R8T9EQa/zLzUvIan36PYBXXa95JhjBI4Sgqed2WqsM7s/yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmq6kZx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmq6kZx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02D9C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782185193;
	bh=YP9CcO8fC0+oNkU/2D9g5vPeZ9Tj2HJR7BLiUyeYGsQ=;
	h=To:Subject:From:Date:From;
	b=bmq6kZx+kwybiAl1EKB7B6AImuGE5Wa0dpLpPSpuNXGe45TAp4VG3PUT1pJljC8K8
	 0fRYevCZlk0Kp8PV4MnR/QmVEW/HwZL+Ink+Qap8aq/Kj4lVY7nOnTM22DD+jvc9UB
	 KrIW/ezTfxqH0sTXo1a+A5ZqAGwarM3Ma2uVPlHsL1Fy1jbLKyxvNqsRLJoA8p6O/v
	 Tnflcm4abOiCqHhie/CqNBxFSUUPv3T+0hqHN4tRP8ZrAT6AwULeycN1lbgsqQ4YcG
	 tPZN3fOlf2PuO1hMmx3yUhivnfm7EIrIWeSWrmODpRxPpFy1MKuD3NXK3iPB9f8GlU
	 XjLhqvclpnudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B94CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218519368.7172.15472627074055902326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dfca4016d32f1149e2dc5aaa1f35c8f86da0ba0e6131032478f2b510de2a13
Date: Tue, 23 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782185193
