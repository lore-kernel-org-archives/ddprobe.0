Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7124132182
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713334163; cv=none; b=mkaIec1+jd/YaIdggcqkgsB0jkOmAEpJ92HmiswzEgf4YY0DmUMGN4psHtvGQ+GW+i9wZ8YWR+9tho1aSCu1AnlHDZfNW56lIa93JeSPXzTO6FAwIxZ0fQDMB9/99oIgQ90oEFesxgIawpoLOL9aw7wvpv/EYOcGzIBOoUycA0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713334163; c=relaxed/simple;
	bh=B6N0h3oxlNILVEs9n12mU9oa8UWV4umeUi2uZXNWelA=;
	h=To:Subject:From:Message-Id:Date; b=HjzndtfdAxXjMoDIn2mHGtczqwHlVSZmNla6xR1oiz+lHRwTWTBvASYzUyuzq99BFAn2dZRXEQ+6/9UE0EFL3vdLrH0073KHBucJLLDf3FiOibaTQOMpLXkxOn6J56YIJPqTsUjkJ2M9JYjGGWebiiT6imBZVU7hkX7PR0nfh94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpdvBayU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpdvBayU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B03C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713334162;
	bh=B6N0h3oxlNILVEs9n12mU9oa8UWV4umeUi2uZXNWelA=;
	h=To:Subject:From:Date:From;
	b=UpdvBayUwz3fMuN/v9bj84hGwl632YZH0UdleU9ZKcqJ3iPAqKE3P2P7a5DoF4Yvw
	 F57SfWKKWO/36Nr3KWlDxvK9Anm/9K8dqLU0QWL37IL7mGNRG+RtJpMI88rx+4PXRO
	 OpNEY+qchfIbvl4Ijk7KiwBRx7n61q4szY5RXEdtVqp9hKg3nyWGmzAWjCO/xnjztS
	 KDcT4+U2WrZ/DvLRtmRVGr/e8O5x52jM9a1/DYZ0C9cnSXrKiGVCgOUZbpJuT0Fikg
	 avmj0ezLY0yRai3gLvmy0ui2RVCA13s8SJtF1W1dBNpMnJ3iJb6gQgdq5As83ckwV5
	 Yt/WE5x9NGXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB0EC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333416277.12878.16047520956262111718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b790046c733d4dd0a16ad3f95ccd49820fbe5dee0b4f1078e16c3d1c7acd167
Date: Wed, 17 Apr 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713334162
