Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37503F9F5E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779105633; cv=none; b=gMCvkN4aIvAkfgBsei3O6dbat88ymFMUiXqmOq2SrDNjIB/GtQip3B/02RERKGr2IWsrbsogC9VUFTllr3Xm6WHNDjVvotm02eeZvDZXkNjeDbJP0Q1RGsglQYc+Jl+GkyDezjh6MR3VcQRUQ5wiuieC2h4ceFbUdiSnMpPaeu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779105633; c=relaxed/simple;
	bh=ycNk++CIX4Y+5wHaYtDTywrTq8fbp6rcPsQwHV2AqFE=;
	h=To:Subject:From:Message-Id:Date; b=qAvCFpB7SkWKig3+kqHyHWzrohnGnr+n6uTsiUEWVfNbNLpQN6McjEtLwvt9R0F6yEKJQv3mFLK5ZYghdnQCf+f4mB/buqvC9Y0iPqISgaZFqyL34DuCXTcf3jdqLc+F1iJoq77gIfS3ffUBS9pY/dc5mFhBp/lH/GBTNSkl5RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2W/Fj2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2W/Fj2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96FEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779105633;
	bh=ycNk++CIX4Y+5wHaYtDTywrTq8fbp6rcPsQwHV2AqFE=;
	h=To:Subject:From:Date:From;
	b=b2W/Fj2orzNWcGNgFlHhUd+/QbeSMHXXxwLzb8M0NhNf7K1QCqAZUG0/BFC0j2G6v
	 NMdr8Ze+ypvdnwsjeB4XXVfx8mXBUFSN9IjP70y5iW+7W3bqiBd8zPVeJ2JDhNDaw+
	 WkoHZ2DORNNPm7NzDRCua8pdh0lHosZvb4C+12OFmz+uyK5Uk5wFaJuF4F+b3YXETM
	 nJ7HcEuYHnpxn0TRr+H6Vf9DP8Ggv6xuBSX9Hug+AX/n3IsdVMSepXUwxTuzeK50FV
	 aKSLQBhV3d5irB0K70JUQ9ioTndjDbd3l1SWraX2hQBmHv+VWe8REfaTgLe3gSD0+F
	 TqFWRU2XiknGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D8CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910563369.31184.6969058798128436531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f65ce841526df6c8bd08bf67f221dc3f2dcfa70d95df944997acb824050704
Date: Mon, 18 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779105633
