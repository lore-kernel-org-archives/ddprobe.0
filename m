Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB2C47141E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790934034; cv=none; b=rcqvmY63ysXEmRkZbs9SjB11Kzguf/JSn1xR812noeBOk+JLaZOaUl4I4vv6yh4NZAkbpNTtNwnhUpBjI6bQfulP8u9Pp8pCzQRBf/zfLx3fR+u4L1T0VmfeESWbrXxtJEa69O8HlgIjs+1ydPylNU11//bIjY+W7I9x3tSKtpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790934034; c=relaxed/simple;
	bh=fHUZ9qsRGNU9tAThUXAMt2Qja20HsqnSURa546atqHw=;
	h=To:Subject:From:Message-Id:Date; b=ss7IcwHF8V/8yy4FZ3NKDl7iLWM2ZXiZAi8XL8MsFarrUpY3ZNMvkWs/RWXBWO7KtOzwNmHiJcuB05Phy0xHs3lwFlIsdorAl92y031L++gvR9WqAquTHI9qJ0IPZu6CSK3jXjfKLOgEY+mVG+p6pBrN587gj+oHvpJun47KXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqwWaTd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqwWaTd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA38C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790934033;
	bh=fHUZ9qsRGNU9tAThUXAMt2Qja20HsqnSURa546atqHw=;
	h=To:Subject:From:Date:From;
	b=oqwWaTd/F7+Ht3DBAX8ZMQiMzozt0GfpdLkwIbAEoOyySEX0loZnzjVbhBo/m9EQ0
	 ra+P3gSiycVt88hVmzpg53/1LuMzlBxmjgY7eyFWKcIcmk5UvuAOnrtnyS1XjrdedR
	 iRnB/3kU4womMR8M87AvFYKKnIgd5o6SJppOdSV2fN1ogyfs/h784lgvBadQAQ83S0
	 ICyeJazph9gaPyWyS8a0JMhgxzDuz3IrC00Fq+G0paZ7g3rjbQp6ZSOio8X8lkKKWl
	 cURmkwi66jCQ6QUqjjDDrBrd44Pd/cstZtlJ8KF3opDGWKR+WT+6akrvqCpSdMBMDA
	 DQCVpE5F5WZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951CCA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093403368.12236.5705262867488175571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6059724321208ff284705c536b02518ea17c4ffd2ff17db08b69fa8a586cbcc8
Date: Fri, 02 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790934033
