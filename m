Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FED34D4CC
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777565854; cv=none; b=S+uNNl6We4WQlFYm5jufUpvIdYj/ND5D3aC4zphdwRHjpvXnhezq72PFrm2+pETH2Lhc7yNXsICF2ExKbIoYyA1lR4clFnF8PrWUtJ7EQoAuPHQXA+KpkGMIOEeCt4zf03P9Q50MwKtRq7jFd3rVoj9QOkzBXXu3hrBwWCVXsoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777565854; c=relaxed/simple;
	bh=R6UhEjW4hfQxgygwzR0oqxxLWFKgNpbRo018+rzcXe4=;
	h=To:Subject:From:Message-Id:Date; b=lfn7vWjmIRVg4ODhJMzjuGd6eStYAr8te3RdqJJRziLn/anYwgYy0TDmcFM7SPQ65DfcJFktBfmU1b23xZNCg2jspgdvJyUvh7DwWI210v6Fdxg2L+oCMebmYFl2NxC4U+XuOSWPCiCzrDm7RptX3nTGEnv5uqjue58Eql13Mgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r06omGJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r06omGJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD6DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777565853;
	bh=R6UhEjW4hfQxgygwzR0oqxxLWFKgNpbRo018+rzcXe4=;
	h=To:Subject:From:Date:From;
	b=r06omGJQZ2oZ6ffij+BXv1HlLgCmZTvINehgxgcuesrSPRz0P6mIKcvHfsY1/ZG+t
	 93nrtGxheqLtDo8udyeWjLEp7BB2+6cEWGtje6UsofhjMNnZSpLK9NlpBJCpuwwkUi
	 fISArk7DRzcKqUms6U73/mnmbQGNqy4bGR6HsSZtr6cxSAomUPose/etSBJ9g/uGVc
	 l+IRbsnekWQIcCuOF6mNvPKqXWJs0+DbZj0y96xMX6orFqSUWtsRA5N7YreOcRJ0fb
	 Sw/5cFqhJcz/mDX6apwe0SBLqlSHV7sXy5DPZhCVsBjzvjs31HRa6nLFo7yyg+V3Mi
	 LhDdQJRdvLtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C6FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756585368.4738.3373814736416029752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64fc27f3ec33e023a56738ed828b9346863cf15aca600fe4dd4a0d8a0692749
Date: Thu, 30 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777565853
