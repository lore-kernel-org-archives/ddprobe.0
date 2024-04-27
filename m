Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB873F8ED
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714196543; cv=none; b=e20gM1A+lRZxaCP9eySGgR54pycG1MMXUJZo01RQmayrTVW/kOLBTqHHBOQj1UGDVB7rR66zzZjNcW3E5nN2Q2V+hFYkQdIIHOh9GoCRkz8y5oJZQFoBCUhUg6FFhVlZnfS4Tn0Y78E9re+x7vZ3/REn8Ua2B5LgqFSZti/zT+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714196543; c=relaxed/simple;
	bh=cbM97oibz51SgC28qVSLT29h8mWv9nI2AFhoyDhDW4A=;
	h=To:Subject:From:Message-Id:Date; b=n1l6udSAl6f8Sda/WETr6NijjzXRKVj75ak/7m5tL8CXnE4WHDvxF6sbFGNzNzq2fRiF4yUH/lJyRqteCzK4PDNMWsTWWF8/CyI8zPuwZzjXsfqQRDOz4fdGGS2TjMfriQzuApCgcCBNqCQJyMCjucbBuvOw0N1MiqLJLmqdmEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp8NZrZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp8NZrZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE744C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714196542;
	bh=cbM97oibz51SgC28qVSLT29h8mWv9nI2AFhoyDhDW4A=;
	h=To:Subject:From:Date:From;
	b=Cp8NZrZXgxrVPvKzI6CkI2qKL/3rfvmVOO95pCuQrNaS5QMj1b/yVtBTj+LAasSiU
	 9kE521xyr+/WUBY8ESjf0MenRCCBOis4Vt/LjLNGPGoihJeSmpn/PzwjcW/WPI5T48
	 jM+7OBgzwA75ur30LuyCIuhLNI8/XyraIPdgUISHmFF+8wW6A96OaC/fC9V/Lg3keO
	 Wz7wydTzQdHrYThi4bSjTHWL00cjHQrEowfwOGCiYe4zOAhvAvUNk5xOPB+Oi7PxYX
	 DXTIJVsw3b2QtBglYC99+qW0vvPur1SnDunwpTiscXyUZ+0h2UkvZLwba+vD6dVFnE
	 KMW5ZgARQ8nCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC196C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419654276.30801.3624847300088492865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143746560af316997fca3a2a557cdc242a30899837299a4705d1a8b41b0835d4
Date: Sat, 27 Apr 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714196542
