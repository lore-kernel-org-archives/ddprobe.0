Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524D1358363
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792021234; cv=none; b=Pu7HMtA5m1nPOFgBXENjp/XjsBT7GzyIYA0Dd6M+DwGt0kYfWWozsWuYUuF+WTTGm9uleUtGsOYj60cuayqybqlzREB/rDUBZUSYXqfgcmiwBRGP1WMRnBATPqbvDAGkKMh2RDb4FuXi2MOd8f0/SgiMXVTa/xHzkDkbqBo3pqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792021234; c=relaxed/simple;
	bh=ThUgVwInIgNS6LxK8CNhBb/7xzLyNDjIhZWl3wN4TKs=;
	h=To:Subject:From:Message-Id:Date; b=R4Q6mhVfiKxUmpP5wntBaRKGwCEEDjX84Bg+t/Un47nVx/mucEnqNuduUKoomjalKAFr9H5pWM7m1zawK0YqP626+JGcfu+wm5D6bJ9CWlgOkWPznLiri1yJ84AyEtHqPfdIYsrdRrSD3irq0+7FvTdtbc0k3ytHngcab152+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7BBaQ0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7BBaQ0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98F7C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792021233;
	bh=ThUgVwInIgNS6LxK8CNhBb/7xzLyNDjIhZWl3wN4TKs=;
	h=To:Subject:From:Date:From;
	b=n7BBaQ0llZlSoi91ub8MDq1l9wrA0wqhU41MFnDxwkKrTu/QJx3EgTP1sOb3S3YcD
	 6kpPji+NXusvqH6kBO4FDevIlhficRhOt95SEDYyMQHQ4ap7bfiNAR+dFhiuEnJAg3
	 Oj+Bn0VX41Gvd4il9jjDSgfeoaXV3YzbimH02a0Jz2wIPAlYDdwchZ3ttAtgHozqlj
	 UzxUJFHWlqJldCuCHkpaOEdodqOvwxyfy++TohGryobCMA/LjUbmGfOdILsbXvB038
	 5MMIOuC2Wj/t4m4V5jD5GMlWCjjlqQ7p9tlKRHMse5DGqaAmYH92WpMlm35B+HSPAu
	 bVYYp1sJMMJdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22E2CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202123369.23835.8558528678233665426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fcc3c9130d5a9d730435dba8ea304d08cc9d8c79a4571077c3ac49ed4ba46c
Date: Wed, 14 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792021233
