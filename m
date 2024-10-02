Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ACD1CF2B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727871354; cv=none; b=Qn3obFPRftJ+b0BN7osc8zcNHFN517gll4KEfatS6TiiNMGp1CrWsShVEH7xl1l7gPl/o+OYzj0WzOZ+rwhCwh2cgXQ3tjGsZaECevpn0PxLTZiWPUnNiydlPvVHAdmAZvr3DYIlKkfK5DR1+uRPqGLhEhQNmJoI8X2KS4H76EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727871354; c=relaxed/simple;
	bh=FljUFlzVUXn1kq1wY3u6EBeRwrzp6yIhkf6mrXNpc1k=;
	h=To:Subject:From:Message-Id:Date; b=pf78FGRtyiM54psCTi/GaqbfD3tGkFpR+Mry+1ur5a/PLv2rFXGTrCTum0Fdk9tggOkad0H5/D9FaJw0reU7+HTLqCchcpDqahv3r4T6W9gb8seponOwn///weAiYFdjrB4XP3629ohOCgRbJK4C3SsKdlfLOpc62KhJNMeOJag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZdWgbS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZdWgbS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C9C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727871353;
	bh=FljUFlzVUXn1kq1wY3u6EBeRwrzp6yIhkf6mrXNpc1k=;
	h=To:Subject:From:Date:From;
	b=nZdWgbS1leA9/GqjBcHqnY2Tyy4ySDO8DNMrlPNUNyle93kPj/STL/l3zmyHhbL1p
	 OFspc4TMmYj7+dxCqMFKRRDxBY0wkrq5nbwgwbPZA0Q/NgtWDQCaQu6jugSVZ/LAqm
	 erhGGvG2WAUygb3r/MIZRAZAp6fjw4ZnFqefj3xteoWRgo8nNipzf5L9mFd4z5h4uj
	 sljs+jQq0wvSAKVq1wWVAXhoQ/95Hcge7JoBOUOoh1u4hs0C5CcTZvazdgyWW7NoDL
	 guMB0XyMBMa7wizLoJhCQx4jaLC4qEZDzJjPOIRTFFl9rX4bips58n6F5d9s1NIFa3
	 2Z64Lo1uaGTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C7CF31B4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787135359.5593.3364094871692764298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd2bd9db63cd416c011c1a39a191a52b8ce423fe3faed66453d92ea2cc45282
Date: Wed, 02 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727871353
