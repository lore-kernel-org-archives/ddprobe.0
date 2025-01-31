Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA8C139E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738363554; cv=none; b=m2ES79VaFjgScPxxLwCdYQBNiV01PiM/TteAZ5HqSPLdSrFKRrTPqY2bRKhoUPPompPwlZVFXtMO9N08jfR2CJhu43V66xCozEmT9fRf6PgFPLRihDpBwIOOgb2nKDfMRv/OLvYgsgPz13xjWgOaMZbf9ayLcN5zk58148CRSQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738363554; c=relaxed/simple;
	bh=pSF7GTMNTy8b5aVHbNXlWJgc5f1Yn0vCx2W7thzRjjI=;
	h=To:Subject:From:Message-Id:Date; b=gzi+eKn+waJ+5LyZyEqQJ0nia/OF2UMtoX02UmcGeaBo69tFnA6BGveJnemXKHej3dmc8DDkBuzylqTAne6QRi2UbFExzPhO8QpWva1DQxHOrpFRNbfEgXURFo/LiEPKS+JyV6nt5X6mrMiK1JVisapVJOQ7fesOkZ/x8g1dhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew1E1aRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew1E1aRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77E5C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738363553;
	bh=pSF7GTMNTy8b5aVHbNXlWJgc5f1Yn0vCx2W7thzRjjI=;
	h=To:Subject:From:Date:From;
	b=ew1E1aRtR0SJx+eA9nKxgpzkVZbLN3o/l6WdFHDi0/pRBtpBtLBWu9SutxwxTDr0C
	 QHMiRDJEq2fqmnsI3JOLzOY5R344YwE+d4aIxmKo4T4WHRaMQIVv3GR4aH+s3bZFuT
	 4TyTA7l7azLy2abHWAA575bHhODk4RVySDepZuvR5tCdgfScIZ8P/79cKfK4DlbxI0
	 Ci2w2yodeS+VHdHVn2W4Q4ZL8lr4P1y2+RrX2w2URO03OYBz7BJ5DLhFskkhMJ1kfP
	 iJB0hogHyFEMJAvxgK3q6dPuxh1hpOG2Dn9lQFuKfTRcdf8VUCMfvi7X73wjPpg8YW
	 jMNvRnFNSkvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EC5C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836355367.12394.15598589284442036102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e7a87b7c58b9af4a4c3d59c03105046c7347d8ed06637108e38d2f5d7fe725
Date: Fri, 31 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738363553
