Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA055403B1B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789903234; cv=none; b=etOX2Mdq9+Lgu3IutjO93nGcMgxsgA81nNTIqC2+pQcpBWLOs3nofP2Wmn+8HeJLB2M7E+0stR/6qdebFoza/8tYsBlC4+aasmXEqgV3YvkZoQUS2hptpiUVas3qtWeKMBtImsREQU5s5ZS1EPljFDi/mbC0GSjiOXJZl3HK6iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789903234; c=relaxed/simple;
	bh=+bu8S5KLAX++y8jfMYQKS1vFq/Nkf9Q2yQier+0NaD4=;
	h=To:Subject:From:Message-Id:Date; b=aJUwpNCgTf8VjLyyBM56pjJ0csJc24S6kBQ45Op5eSuRBI59wRo9UmGxhywFPqFd+dEZKPp6b2XrkD6GTgvdRRrd/jw8zxFcNDXr1ISuKHuu7BbO0x35q/R/URUFwloxJ88ASE3tw5HfQtTTy9cMCwHkKrkdji6KI3wRFRL7UzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTxwEFB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTxwEFB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC754C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789903233;
	bh=+bu8S5KLAX++y8jfMYQKS1vFq/Nkf9Q2yQier+0NaD4=;
	h=To:Subject:From:Date:From;
	b=JTxwEFB3zmWmIqoD8zxIzzgsbQoo7cW/AjrODYuZ03wdig3rbUTjLe2LQuWb3I8Xq
	 NL0pJI6Uq8FmhwzV7XE6VYKiT5vyXzM9e2lWuABHsUd43inklIn4U7fMxW+Ju6Ye6A
	 GkaIt9xRkQy6Taur3zxl/aohf2Q/m8W1HRlowwQE4onICWUqIWWqpcsj+zVwT+cGLh
	 Rt2CZq+6QAIb2qwOgm7cgaOJzNGUk5dOT4/ePE1odWOqp1jRZqD1tBdYCsf55nrwB3
	 bcWIR6a0bRY0O3v7HGpFOnrgFC5daTvY/VwRFlvz4Y3nGiHNna5dNXfhOeN42oKfke
	 ghzA07gRDCBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF4C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990323368.31375.6211841707080661567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56abbe2effc0fb4bd10d1e375057006a663e93656fe354468c52693367c7e792
Date: Sun, 20 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789903233
