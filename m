Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEF7354AC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760747994; cv=none; b=nZdGRJ5/8qVJerRUzYuAcSRMypiMLc/glxq+nS/gA2fTSEdXR8APQvwYjtwomdiO23WU0y6wbESz1xMLHda243W6m6af/ZzdbvmUVXXbJsY/ZQUqIhg3+nMHKtmkXHptTCpSmuJnjTcAjBajWcmWlNlZIgj5D7BO38uvI0fq4TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760747994; c=relaxed/simple;
	bh=4k361ZUBDtjhhCnzLjBIT6DHt6jErHFQct8yA7TjHNU=;
	h=To:Subject:From:Message-Id:Date; b=PzVVO2ql5Ggw7evLUpzzgbcoqCLr/Z6a9WJf+83b/ebFSRJnAXjuS/yo3CQPk8zlM8zBSRYZmVfqDc3555nwUp9VFXJ1dkve9Q9vcs3LQ+NSAuWk+uqp7jK8eUCRjD+6U45+v4MkO6IP8J2RmuEWyuOx0hdLkvLVLSUaKbG+vVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5wJRJ5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5wJRJ5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A75C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760747993;
	bh=4k361ZUBDtjhhCnzLjBIT6DHt6jErHFQct8yA7TjHNU=;
	h=To:Subject:From:Date:From;
	b=L5wJRJ5irnv9x8Xz205sUqmgbc/c/K+cF+TfUfQ/tmbv7X2Ed08yLhAVV5+YVKFFE
	 JYJqCrjgcRVR7rHVAHYUf547LMT0gpDCJMdNOya+gzEozWtZl/3ved6hranKUWVFeT
	 b+8v7cVr4AhDByxxR2CgarRy+n7h3uxSb4PYAx4Vr12fTzH/U3nQBkpL6sJXTLmhF5
	 IU83cc4JOCl+MZQh4FMxQH6EDweuet99dkdo85iX+jPfAbhZKI0+Ijfqb7caAob9Gg
	 J9T7qHfapxWqW8oX7yho75jKM+sHGKDEE1f7rvVFO6nWW9t80iRlBK9Q9WDeUzYrGv
	 LB6bGXu9m/w3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074799357.28570.15853750642249465846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f34eb1b3e014c4416058478fcd78d0e7c2333e2151f4f55a4b0424eab3171d
Date: Sat, 18 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760747993
