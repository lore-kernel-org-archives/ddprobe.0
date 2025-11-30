Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D9C36D50D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764478974; cv=none; b=j46rvfgXzZSXrVVVkjRo8Cr4VQoSYMJPaSljGDV1NnFm5shTgkigyivGXUM0U1+a0xHtNfEvWV03lwZ7lS5OLaLcAo9dPlHSdhlXsjlDN0OXYsu0YlMbvUgGJmD3UqMeZ/KvjLvGEa0lw7i3/z4PW44vi+piglfMM8RLK+VCdeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764478974; c=relaxed/simple;
	bh=iEl3cMtR6GwbgmKSNej4ryjQhmIRa/DZXK0LoEPs+2Y=;
	h=To:Subject:From:Message-Id:Date; b=Y5smgBHGjDgxhzFBtEZ9j1KTLY3ZOL/Clg/6XJJDv5oyL4/RGynnRjfGdkxKrzdmIMVc0NQIIC5pfBrQmMcEKI296D3uQ7kFpLqGiD5IlXMAHhBI81SlOFQ4MsfNYxA+jTyL4ZngjhKzWyPhI8RW9fQnypz+oxar7xTmWr0WSoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R63m9GfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R63m9GfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764478973;
	bh=iEl3cMtR6GwbgmKSNej4ryjQhmIRa/DZXK0LoEPs+2Y=;
	h=To:Subject:From:Date:From;
	b=R63m9GfSuvL6Ysz1W6svoHFn75hHCCz6SBUVo4GgdCiPmaoaUdy+Q4FzZrTcCo/nm
	 PT0apF3B+dzMhgpmOg7eKEeDcu3BVsaRJVB1eTsO2QpV1ewS2KidOQ7Q4edwIpuMD+
	 kxHZbDI9rpTq4pg6U8HIyTWwVjQ04Drr5AiZiTUJLko8grdpp6xP85QVBWOB6KadOn
	 6wVDLYgbq9EV9IPW0WefVsPVhINpY5eGmsJW+DPRilJzGW6VuFOjhAOQygEMpzL6ib
	 HQqFDOSRwlDM2MoKha6qSQro6yfAYPqVv3dOSnLsH+kEhlh5gR3cDefMonq6sP2SX4
	 LWQ5+E8FqQZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DBACFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447897361.11579.8303857496873185107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03470861b32d62131fb33d4a92ff2c6b794553073647b4bb7ac87bc30d7b4229
Date: Sun, 30 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764478973
