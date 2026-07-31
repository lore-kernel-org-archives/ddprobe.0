Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31863286A4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785459034; cv=none; b=Q3SIQuMJa/uoOLcJHr9lf/4eSs+/8D27V5EBekFZWXzENB+8b5nWUVBu61ILNOUSxy0jqiE1L0YRAnlMT1rMv/zw6BEM5zRgaKYKmp8xaX4cuD0mk7q2mxvbp/qzh+X6KmcNc6BT54Lh0uQlUVJ3/fnrpLg+yFXZHxaDwsHcamI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785459034; c=relaxed/simple;
	bh=Vw28Mr+YcIB+IHXJF0o6+rvLM772AXBlHT3dCcnCMIc=;
	h=To:Subject:From:Message-Id:Date; b=LlnMOwIxdwS1YYUiPQtRh3rkWp2IzwEXkUQQMgBRs2cquspGgCyFRJlQl3bb74q7SwaLZYrnUC8BVsQ5pqUL95Xrk1XZISWmEkc+LQv4FsfoF4Nj3EHGOUaqMxCM2uBSdnLmTd09uznRK3ju49VSBbCzkI8HEqoT8dkz43t0jk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psrezaKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psrezaKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8BFC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785459033;
	bh=Vw28Mr+YcIB+IHXJF0o6+rvLM772AXBlHT3dCcnCMIc=;
	h=To:Subject:From:Date:From;
	b=psrezaKuM2oyGrZnaVJRhPn3wDEQ9EgdfSx+XloQBd8mDJsvj3lSO9lpU9Bxz9o9P
	 8+Mh19TojVbjkBYdxWCrnnf8Xu0J6mPqLE++OEc3gGNYVxJwWhqtCfcOGWcMkpNuAR
	 v3e5sz2ZmTwfV8zZqXSEWq5MLpjJMxtQ/BS9vy8gCJddepA11PSC4EQ4Y04WH6c5II
	 WtQT2wh1YMLwSC/Bby+pdvj+oLVPKwHcqZMmJXUuT8PZECcoQgLLTcu9Lg926Vq5Oi
	 FX8U4GSLaXPz+nt3DMp83qcA3P2Yx+vhGPPL+UGK/6DolPqrkO+6bFAcNpWEE9Jrq7
	 9djIL2AVfwf2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B199DC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545903371.16160.8198195755841395965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6cb03f9e40bb394d4eb5eb8214454504c01d93b57545dacccfc0f5ab6266ec
Date: Fri, 31 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785459033
