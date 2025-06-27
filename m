Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0DD22F75C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751025595; cv=none; b=Ba/RhqJubuXRDqX0xnKqhL+2DYU5FZb4frrJivViZz8SLEqpiEpOzBIpU+3oa5XlodYLwHqNq4rvAfWiXZsoZEatB3korEHFyNKZ2iTR3lLP4WZlKnwUMMkgA+lV0aL3MypYRKgviH1+eAZJBhaa8tonfLo0ORucLFoJqQXnGTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751025595; c=relaxed/simple;
	bh=AEIcoPKD/iqa0u2Uh7Z4xRDTzB+FHjYy7ulms516HEA=;
	h=To:Subject:From:Message-Id:Date; b=meO05A0AjHGJlDCCNREY/CcJUwB08VpVOmGhPDqBrA8FJf0v/zytjX42ev8+YpwDXAS/XiOhGsuR3Gblp/RIc+X/YuNH4KVdobWJGWhrWRpPf+1i589xwYtdNzwuownM9Lw16cFZuWqP2z/fJxORS8df6tpwFEfn0vvOG66SXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px+JYLsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px+JYLsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751025593;
	bh=AEIcoPKD/iqa0u2Uh7Z4xRDTzB+FHjYy7ulms516HEA=;
	h=To:Subject:From:Date:From;
	b=px+JYLsqkvfR2sNPoAMzDNFoxdegR8VwLVykVCvlkIYl3Zu6dVY34fj/JVu65ZUAd
	 QffvyI9CI1wyaDFtu4Aey56c2j6kQO99WT4Ec4K7hv6QCIAbDgUWyIkCJqJ2CP8S1h
	 JlxiQ8AfB6NnODKn2ijWdWS8LL2oLxsuczFoQMREnvxVtutxaU0zRcIdFq2L2LlKjB
	 AIJLGBMBXsjlqhuBKdGoqyO16a5Foci7IKDbk3k03qaKuKLiAMp4FbIvnZyFgLstVP
	 R7oERv8xivUOgSyP8GFcNxgSwTOX4epVCCKoP/lDh0gvYQzpuSFaWDiZv9SeG5f+Ub
	 W8dsted+/7Pew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923AFC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102559359.2435.2012108387374564964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6350aa26b0945d82125bd6d0628c97d5b5e1eb2a511408c41b16d1aa72798b9b
Date: Fri, 27 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751025593
