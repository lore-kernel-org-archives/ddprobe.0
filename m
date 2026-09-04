Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E54419302
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788504634; cv=none; b=MQWjxbHetSnuzcWhXdI+AQ99CBO8K17DLYBg+q13CIDKu5uF25cgcmX2IBplXv7gCo7ROaO+jlMIUD6g/rzNexm4D4U/mhPLKdp68A/tQJXy+zUr4Ysn9MvOqM0e2jsW96fUovB8cafVoudmMhQF7J29tFTQH4KzKwc3ta0NA+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788504634; c=relaxed/simple;
	bh=c5nHqKyFpsMlgzp2QQL3APleGY3SgCujs5Xdw7XqKxs=;
	h=To:Subject:From:Message-Id:Date; b=NlLx+044FSHG4mETVzWZq9E/6F3uC7NKK+1ZF/L+Sqw+SlprAer8C6OKhZpBD/pRfuvknEziUWyfcmQJo3r1xNPgBp5w8jbTJ1FsN+bBgLxYB+bxDqqDcaVgaz4zlKqF5wKyEKp0k+ygdLeAQg00/cyomfC8xJ4xklctLAzBYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvTVQNVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvTVQNVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4288C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788504633;
	bh=c5nHqKyFpsMlgzp2QQL3APleGY3SgCujs5Xdw7XqKxs=;
	h=To:Subject:From:Date:From;
	b=lvTVQNVW6VUH+A15YGtv9guNx/LpYj02daBYiOUJS+XWbnmM9aW9zfP3hijlm3UME
	 I16BM/KCdFS1ATxqWB5MdkmI9aFk9aNSeAmWvZY+qa03LGF09NAZkAyPQDW66GXr2U
	 IoG17OyO0Bp8AWAkd4Nm9sjy4H74rWZIrMvUCeSEwE2U2LeLHyKPSrZYPr/iy6udwr
	 5zMkWCNDINJku0SLrYOsVEmHR4omJAbyIIKSLWs0i5rA5u3L+6bNU2GInRNZZFC0vG
	 vJsKJbRNPVytOOot/sM2MJQa7lm6aUV149tRSIUF4XZzZRta2Z2rl5QhgNLK6tzLOO
	 5Abza685dXUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200DC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850463369.19728.9861140116744043129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e5b9859f188140f89f3bbefd4bda3e2aecb9191b3af3ac4be277bba8fb18be
Date: Fri, 04 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788504633
