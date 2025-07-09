Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FF822FDF2
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752082794; cv=none; b=S5Tq4aTexJJ/9MLvcExJdrYzKdsSxH8H2tG5Vu+F5fPmHHFMtOnpd3guWRQpP3iOkt7W8komPQE4beXYe7LVXrmd8S4hkTidgYsrWYyY5T6OJqH5/AWx5h3j4GLxUD508vseLOOde3EHqHlAZjpnciw7mwh/8laFFh4npgVDHcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752082794; c=relaxed/simple;
	bh=9wj6Pao0/YBucnogGnqy+f0i+1kMvB5KtpgjbhOH0e8=;
	h=To:Subject:From:Message-Id:Date; b=e3FbWH4lfYyPOcOUfm9bskHBgAb7j80/ZkCYLyA6wkpOXJlddAh6/57abxo79AmFfMdUlkdVgPBt59G20BvSjThaNyvYxuFEOvMiRwXUjZTRZfQnYSVOFHpht1xqEqXWh3156+R4mxzI3XuT9ZTrVLT0aeQ29xtk9gYogCwUuPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx3sXd3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx3sXd3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE75DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752082793;
	bh=9wj6Pao0/YBucnogGnqy+f0i+1kMvB5KtpgjbhOH0e8=;
	h=To:Subject:From:Date:From;
	b=Dx3sXd3dZpIehsFqLLzx8c7AjyDfgyZNpmxT+OVdhAL7U5RiApuFGvwpgG7WEd/Oh
	 43ThD65dd5YNnuOh3HYmMpyxwyvBVFRRe2c5w/Jx9lzfoo1NUBHO5BF7vdIZr7ngdE
	 2THGYZ3P4TgMbLTPqh+y1hhyTxwoeJB65Dq48bSrrqIJtCsn+SFpwF5ip1GMactuDe
	 kq0/p9CQqPyPmxCFvy44H/7TNB5yueLVRYZaneKXPB4z2KdL2A331nQxdl2l4kbJRV
	 bkPbd8Fi/XJwY3TSoQUP/O9gvG4USg8K4XjcXjpOazeizyFxYuPQMpUUJz10ZZN6Gl
	 nYKAYs4fgPYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E31BC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208279364.4017.15208442690819764086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d55f9a3a2164857486da3172cdfcd489216d6ad15c9f9dd14f532ae0ce8193
Date: Wed, 09 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752082793
