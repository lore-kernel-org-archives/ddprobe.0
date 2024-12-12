Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262E33201
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733985954; cv=none; b=op9362SmFKRlTtIk0cRZFuOKDUmUeWo85Tap8zWjlTVRV6GER0EmGnj5Ef7OkR6cW1+wM2VQvGHsXO6x2pRz3vItPPsK1wyeazxhSXrl9v/qAIjdFZsiNzFrUjvwNu/mzoITvAG/pVdg//hrA9BX0UC6x4fenMgUp0uLIrD3Qx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733985954; c=relaxed/simple;
	bh=ggWP3bhVof4EVUIHNyh7jgCBahvgRKRwCY0Znj1YF28=;
	h=To:Subject:From:Message-Id:Date; b=j48GeATw8oXHCL/4KhjooyBtb7yfBKpaO6XFu3D0TQUUHSZ/QT6svhHdcErGUIOC4TJ/mVgeDUG2cntfISYLmumsgcnvFBHJvQErsWRVlzGcnq/8zg1sqgGzWGXuZaVYymYdkGebeoLkYv/2QruZzJ6+4aj5+0eNEtgVHco7FjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poSX9y7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poSX9y7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE30CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733985953;
	bh=ggWP3bhVof4EVUIHNyh7jgCBahvgRKRwCY0Znj1YF28=;
	h=To:Subject:From:Date:From;
	b=poSX9y7z3TE4xSXWAUrpScVsnEi6JFSn63Khz7VN0pXhrZNXxM5bgebYECre7ewXl
	 zEx7kMP71eK8M0sX4s61QH8uOKuWqGyxSYSYwZHCZUWLOQk23SG1J/cPIKN6197DOV
	 3LFXNxn2te75nvrJg8p7cEdr3JGoBhK6dT1vjsXNDe7sD1zgd1H8eQ6d/O2gRUyHwy
	 S1o+HBAW14TaANc2i5ryV0dxZxO3gHdklMzoOoQ6TIaNSYJUapRLsRZhar7/c1WWci
	 kMZV78DmZfxbjTFAsYMWb591zluxNHv26HU/uELOhMcjmdf799zD3vwLJ7IldXcFUR
	 JDHPLOw/ZVTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A763E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398595359.3715.17420637038788465881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48ab2127477b8a05d9020224cb08fc3d4a51b6fdaeceaf373e8277582c3d6b7
Date: Thu, 12 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733985953
