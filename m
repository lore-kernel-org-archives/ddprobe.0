Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28017189F43
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776817054; cv=none; b=FY5ndRQPtT4u4X+PklR6s+d3eYMHWLLEPF13Q29XDpZFDc8CVj5ybKrf7mYcvdpLAOEbkY8GyAq4/ahc6vU/zfOQmI+/RzUH9Jfy/1EqETOBDawroLRwA1dU8mR8p3H4j7kN9PjcG8vJIVpeCpJr4aje91Mh5lpbvpIMSqtw+PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776817054; c=relaxed/simple;
	bh=YhfbWOoLhb6Yi7a/bYhWIurBKmeRaFQSShoHPwZ65h8=;
	h=To:Subject:From:Message-Id:Date; b=vBbVz/hpW1P7Zwp5DgzvLw6dK5SWZC4Tv1amgd+5E0L6tu9n135FMDZ1VeZxeS3sUrSr/Q5RwIxPVUGkNdZxZxLsVaN4Zp1qSKpprJX/adzNSM0Mx5KtSwzrK8P2RVKDl/XHuSbvCHAcra2ydXcLEbeaLqHr1GFPSkg32F+fysY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRszIGyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRszIGyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC789C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776817053;
	bh=YhfbWOoLhb6Yi7a/bYhWIurBKmeRaFQSShoHPwZ65h8=;
	h=To:Subject:From:Date:From;
	b=mRszIGyHHjL+NQOutieYOtHW797TUe2X7OAUQN45mNDJ7eIh72FHSVh8AeYZh87Zq
	 YJjHYx5Z1masFwmTv+MF4fPvkAEOOEHNPm7sN0T36enY7DGTqXOxPCNn3uuIF4IQpr
	 kaU2J4dRhvO62SfcaQ5nEvubDrEXVJ3Z2HJITRKDAA4CTV4HJkV8bTCUbRJNc73vAy
	 DwKS6ife6WNw+5NrRGjU23AG3e2KBCKfMxl4+WJTtLZVqEWBs0Xc5Wl0/8ChOV5iTp
	 PMsDFHvxaXjWZnbg8EsFxPCc3dzJ5YLdygkSDvfJipUnJNzlvIOBhcZZAY8ONrTboD
	 1J/fEBowM5ioQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7D1F94CB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681705368.6539.12562557096737049772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576c18c9b318f772b9fb615876f2934b232e02ed1781d3f1e1e6e3d172be7c3d
Date: Wed, 22 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776817053
