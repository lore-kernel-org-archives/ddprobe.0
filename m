Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2732C21C0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756987794; cv=none; b=SQdFABsZqtmt4ZUoWSP+TOoOYuGFh8WEHCGCsIcUXrM9gtoxy/rBcgVh0UVhamW6O87ZEFRkon7xyb3xEP1TZrzoLVn96Es4O92OQnpZ9zP6hk5aZr6fzq6oQLXUyiq2GhRbZIPpVIg6ZodmHoNHVR5cv6SlhdvcYeBYCx4KY28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756987794; c=relaxed/simple;
	bh=/W0nKDSbt5Imq+1jZCXpDkZp/ujLG07+LFynqPWDXa0=;
	h=To:Subject:From:Message-Id:Date; b=Oh6zpzSR9Nl/6USatBvHFksLwiU9UyVNJMNkunIG2nx2GLRCCSl4xSooKa30FBZkMwRnl2k5JN5kkbmqsZu2W3fottthRsPxK0IoeZho8ymv16hwdzScIhnPJC6sEK+LQ3LDrUz0N4xrgHHsrvHlKvFiePgPdK24GNtL1j2JgrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOm1mQHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOm1mQHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5532C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756987793;
	bh=/W0nKDSbt5Imq+1jZCXpDkZp/ujLG07+LFynqPWDXa0=;
	h=To:Subject:From:Date:From;
	b=jOm1mQHJCB2uibwJzrv8dlpA/9u//RdvmsKv7PN/OvxLbcDuusX5u7U/LB5Fr6Zm+
	 DKDutY5LxfebvEJ8iqRMamxaiaT0klNSc6V6rUfep/wBc0ku6yOJudSxP05OovgtDt
	 qyh48BkFvMqzEAD+9CdNLOkQF/3Y2QDyFHfuAkFdxbseV6/TQ9rVWDcJlZ5Z0pIjKL
	 VuxiddgHTm5xzH31sCENEZek6k/JOYv3JVqGroTjTfdKG5wzxBO8Rtp3hSzPD0emg7
	 2AJsDOyBnwbcDXwo64uoleRPj/vpBSLXafVi5zb2ujbbEHPTdJwwFYSkR9wBzihIy5
	 kbGxG6F9iuAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91214CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698779358.20128.13275293804049832536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d65a0446ab26de416c8521b7a9517fb411521113a531e7cbd9b1c9a5c70498
Date: Thu, 04 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756987793
