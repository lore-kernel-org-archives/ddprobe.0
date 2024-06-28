Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA615253B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719597263; cv=none; b=a5ihM3z1lae1lOU9WUsI0D6hnRODwrpuaDnzE6rNzZp3knafPGB0Rgf9w/fWTw+NC4+ICqlb/aAZ6e8qtb+01ZRmlxvCj0HAeVtgOSfZOEhktzMl92URCmQwZuUmxaJUKU4MOzXT+QH8XJWOL1YkEOkaUabEYqa0qkBjVLnJuhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719597263; c=relaxed/simple;
	bh=OaQPnhZ5QlFg5Ee98pBp2NUXoqTa52qDlffK90FKdPQ=;
	h=To:Subject:From:Message-Id:Date; b=ATBIOrkAQMsAMd30NOJtx9cth9nioEqRnXRJYU792JEsq6PpiB5XP8lFbOuSNEfFhvIVaKI6vB0Hk6PmfuJUQ5S9hfOVMNwqX96ccMo5gXLCQdriR72KxZPWgoWgebnGC14nyifW4AloH8PQq5LkhbIrHLjQYUk/t2zqSGDD0gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcU7Z2EA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcU7Z2EA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7606C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719597262;
	bh=OaQPnhZ5QlFg5Ee98pBp2NUXoqTa52qDlffK90FKdPQ=;
	h=To:Subject:From:Date:From;
	b=NcU7Z2EATZUc5svjVHuT9WC9t5GxaZuOs0cfvLokhk0DNux6G4WnMTWIA0lZ9n38B
	 FR5cXGipSyaBNKmdR+5x5RcVaGnlmwjE/KGY/kekVY9xMTrktYQdqblf24T35vbTwN
	 sS5PS4hkhL1/lhECIoiux2yiDkip9gL9Adq5suRdC2yJ1cGS5qy7/xStvqcyto+y2d
	 BPVr+6qeCrSfR7oLj8jbHtt4zXkeM0IcSkztxZdO9zaiYPreYLaxoj1JAApsk3rdWV
	 V2ZbuOhavMaZyLcxRuvG/BUN4OnqSAu9yAqRCWfoPML/0OfaoZQ24jA2V2Yn/U+B5M
	 x7JGH+gIEqKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E06C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959726279.28884.8136312012603355543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfda57d0b4c7dd5205618dc1bdf779f11afcd85faa3d8e96d27d31f45c86130
Date: Fri, 28 Jun 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719597262
