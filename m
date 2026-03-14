Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1161A2F5328
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773522894; cv=none; b=Xosr20NkM2snDno9Xcybzb4BoNHI2/ozm1nS5CQjX0j0JLirFmAzuuZKEqzG+zaBqUFeH+3VYbaLMr+DtFEcCkE+pMKXBWhhNXQ8dclVRfitzq5B/tokGCw8bj6iGIX+KGz6klm1z+e3LIoxn+ghQ3TeKIYoM2S9+OsuGZTjD+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773522894; c=relaxed/simple;
	bh=YdYBaiv+BqA3w5DPUu7SffwM/cgU6Nheh6uHCVyrJmw=;
	h=To:Subject:From:Message-Id:Date; b=u56xHs7J1XLMYW4J3SryY4XU8cStLiLop/l4YH+JQVyoH+0axcezzosqC5wQsXh6+SHETPNjOSbB/IarSinkNf3IkzQhIoo5rqutC+YhmGMPjeOHb5sG1gX6SPgb6xwKXJwjMSTT1Xls7M1zbvNzSQlbnp4NcQZari7O4elSuUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLet68t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLet68t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA43AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773522893;
	bh=YdYBaiv+BqA3w5DPUu7SffwM/cgU6Nheh6uHCVyrJmw=;
	h=To:Subject:From:Date:From;
	b=KLet68t/48wJy/bNk/rPC/l6VmpW29jfkuqwfXySigyZsHcQV5utbx80sXU2ZzfHl
	 80BGMV6f4skUxa6BAgkwtL+XwfHMFapUgEg1VhKbwv0gHV9IgDxMblMVcikceLP6Bn
	 pY1/7U/7/3/dd8j3M+lw710VcNM/s28MOa7zSHEHZ1kR40+CGdDZVAXhJMeKKUfF60
	 i2iPd5yi6uIS4+vAJyP19dFhhhqofwcWFs/zzXP9NwCFoEH/27WodJbWgM9BhEcy0h
	 3ZhsA2PdSZnz0vgjINmHrnGlozRN6SB7S2SDarFD+ELLrrEvU1cI9pabhBSg+iClfs
	 J3aNjgr3GR3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9349610854A6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352289358.11161.9758267365831460183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8528e844ec4d525847f1c0e85e56c5e8fe71640998fef99f28fafa971fff72
Date: Sat, 14 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773522893
