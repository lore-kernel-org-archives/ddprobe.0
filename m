Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48A3AFCE3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785522634; cv=none; b=s8VVAz/nbDd3nNGPfjEfKvJ9RKdB2St5CY+eRCWuZrO/cb4bt6PVpW0QSW57msgN2V3xlEPYCq4yeTJRHAnS29X1T9fccjtTCCbTa6kdXNWTQ6Tt8EuUf3p6Y0RH9vjvGW7yxfRJixB8Y4jNm1ZIRvScQtZ7DAwAF7celuXQLPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785522634; c=relaxed/simple;
	bh=5DH7vRNX+FdHKQgXrgCMXwtgcJjzDhamfZtYdC/gYeI=;
	h=To:Subject:From:Message-Id:Date; b=V1Z3/5pHskfpbNIjNwkEibMrVfRJMMB3OVZ1ceuRT0hskQzqKshOKc9r8kBssfd0SPWExSSNytrOemHy4uAQp/H5aD/zVZalMEuQBYtQp7lSAIe0AUUT0jK4SlPwQiSnzarl4O1TfGWrAOIWktHzG2iaYJ/0Dn+nw4d1VQNqt/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc6YZbL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc6YZbL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3C7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785522633;
	bh=5DH7vRNX+FdHKQgXrgCMXwtgcJjzDhamfZtYdC/gYeI=;
	h=To:Subject:From:Date:From;
	b=Bc6YZbL9/pYYEZfhvC00fYEJxSecDP4kma58TgfGT+8nzLaUD5Ds3TOVWpwcaOMuR
	 Vcxcp6Po2FNqGZVKFnJykgKY32vTAex/L3XznlOCDV0hcl/ztaxk7OtHMqfJaFdpdv
	 0bMpGdN4GJpm0ibgDumIie6aBmEwF7q9QMz2Bsar0FiXWcyy9DzkJgMiMHftO+Sk0d
	 vHUKSQrC2BtN78pfI5cMBlxnzW4ZeXJJjoK3CY3+7920py9geI7/32rgVarwRsKJ/Y
	 svmoCm0P63YwbXvsYBjMSOy9hcucVlWNPATRlehwdKO5yzgcZ8/d1VMeBeUIk4YpjF
	 dUG8Gg8RLr+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9369C55174
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552263368.6013.751139793666673514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075d039f55b59b1cedec7c0bdcdeeee63da0efe5f95e9526efd82f20ddb9f927
Date: Fri, 31 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785522633
