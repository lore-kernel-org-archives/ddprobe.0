Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B873176F6
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755280194; cv=none; b=hV9uwDxaaAiV24sgxD6ZZqGwrPTBDcX+d1ed1jkTZWppWO0ME4YQme+aDWE06s92JntzZ2GjO+9DBigNkcN1H4kU6F64ExK58OqF2CdNWtq+FKFRIPCbePh13h3h/fCWYarhpbUG9xzRylsEQVG8RCo9Hfenc60IZ6FLg0hTwxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755280194; c=relaxed/simple;
	bh=CVyxgKppKFPw8EPGoFu29nNuW5ZYXf6MRjmitNMZnOw=;
	h=To:Subject:From:Message-Id:Date; b=K/xmnkn6ZDMrd6MHhxa56yOr00sW/LKfByOThX139DjObY05UMQTRm17bR2MHIGyWaev1SweAesNU5n5vXkOQB+t9Eeu1y+VfCC3amvY2D/+EuJ6ehjXq1gRvDC2LD+/wSPoh+GfUwPTxCLDnWDzQFZgaZH3/DGarAOzXHS5tlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kep8ClPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kep8ClPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755280193;
	bh=CVyxgKppKFPw8EPGoFu29nNuW5ZYXf6MRjmitNMZnOw=;
	h=To:Subject:From:Date:From;
	b=Kep8ClPbBmk11Abq5Yf0LGnjKGy1CpqxCzaAZa50hysEWYYOCDkF7xbpMhdewOQ2/
	 mlbXJA1rYtSzKKgbMhj0TOl55NBmCeH9tEZwWdpBrP9bXcoHeMJfv67Gcc8/vpc54A
	 cpwGCr/zvvs612q64mMk71u8NA0f7ZMOxCf1GphMV1pKWS1Ci7Bzicx08KNo61Hztp
	 WNHcNeszQYN7If2leWv7JyFSbIieiuUhKUffVAuimln6A7bpDnSAqhp6x2X0MvuBJ4
	 cgPkfpf6MbtWADQzX2PpVr+QGezn4g7Urs0lvYzSc10dJKX1GqAxFTrnkt8HZJqWJx
	 0+kbx2LOSaMaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932CECA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528019358.30095.15839977137922469880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb4a5889c120fd89454beada7fd4403d26fcd6596353c1ba9e6821eb97a5047
Date: Fri, 15 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755280193
