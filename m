Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72412C48E
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716558803; cv=none; b=r1jiaGkCRyZM3ebgP5aqrTs0OJxAYippFrzCTIBqDQO398eL0k6KbpuThfLpBZoRIMTo/Kp+ML0UcswZ5XUBRhZhfnniuV2mARL+pMycr9iEJnN6Ggk4EbvNVesXtQBI9Gr3fFj9h6VXD/74QCpJQNJ3eQ0dfSw1OjBBszqxa1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716558803; c=relaxed/simple;
	bh=MmK1jjhziOJOLnRlf6zOd/XY4UUbiQW+FyA3al3CzB0=;
	h=To:Subject:From:Message-Id:Date; b=YrqIfQSu6xlQoy1ubG1ZLQ8oBwVeot+HLBJROUzZYI5CwxjfTdTqkpeoKHXWnK7XZopGJRa+MCuFl1n6aU7gRvTbFWbqghEFgdgZtrPdukAtTrDpK2mJ0Hi77IAS4xAXyZhruGaENSaJ6MV8XpGI4tWqAmFKvdjO5hCUVmdkyuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixJO19iF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixJO19iF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0564C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716558802;
	bh=MmK1jjhziOJOLnRlf6zOd/XY4UUbiQW+FyA3al3CzB0=;
	h=To:Subject:From:Date:From;
	b=ixJO19iF4cqwHAWSzRMaF930VDbNOn6Ri7AXc3ro0/ESzNyeqdWUpdtPx/8G3uoH7
	 VDQ1NNB2R4KIkJ5YCBKJk/K+y+qKfr68epWrSXSs2fFlNnp9GM7j8qUy2UT86OQM8t
	 Y7Qsp+VyScs0ZFDM1TY1rhhdgnt+kzKF7H5QQz3JYyM5+EE953lcleb2445CkB2aGP
	 bRg1nGqkzp3wmhGYariSHytMHT6gIItcrJyOdjKtK5m1Bzjiw3WFnqNCoC/CslJ0Cl
	 XBx8R8YSizwf5y7FiOo2/n3UnfWWu+baDchL/OwBoBVGk3nTxA89VlHJtum8SIGCD1
	 b+HINZ+EwIghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C557EC25B7A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655880279.3960.7892096604526324537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3460efb746e66c197ed118f2e0aa91c9c3f1b7d8c882ae5992397b477b84e99f
Date: Fri, 24 May 2024 13:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716558802
