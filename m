Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABCE180A9E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716986063; cv=none; b=fuQVlY/vBwPlqdBLVmlSwBBAyKAtA+hHOyIMTtFalp165Z8NZKxh450rmzyjfBcWiEOtNPJCYRRdV03NMwfW25Nxx0KiJs900Km1nixfaEHD3eyUU3KM6b8V95kg2Jh1RRax3Yb6q2DLvG4nhWZay8TgAJ2nBBwf9V2pO9osw2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716986063; c=relaxed/simple;
	bh=ktWlccI8k12nLdCQGUAOoWWfsT7XkPyBmDvAzxNTh/Q=;
	h=To:Subject:From:Message-Id:Date; b=sSQvbEIKY9mXQekAWAnU0rM5xlvFi9wueSNKfOZa0bwTshxQjNS7YxOYBjM6x5A/3diltbMF9gB8FOteolFwSbkP1+ypzONtRjm/Zt9s2+iLHcIbN9zq6B+YpGlaN6WrfpPecllsVLLSjRw2nihaDGtew76ICUF2dqtTtKdFdVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejcTM+vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejcTM+vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCE7C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716986062;
	bh=ktWlccI8k12nLdCQGUAOoWWfsT7XkPyBmDvAzxNTh/Q=;
	h=To:Subject:From:Date:From;
	b=ejcTM+vriGorNaqMjYOftAraJMInWTyyfDJiF6uC5zMXPdZmNkRiVP8pqkkF3z64O
	 WSxrMLKypLJbDcByik3phA8aJHT2NKAF5raeQ+m5m+2RsT6zFBnAn6ocQcumGMaH6U
	 fnUlPZyIeoHPUHtOOQvt51/o4PybG8te9VfaemLIoL+nA43O21RMv0I/7pnUCHY57l
	 X+dIP0rD5HlSmEJVqT4q4eCyeIG0m2/v4lax507P59e2DUSSwqa/C2rqDtW+/2OYDW
	 ulqCUEnGpA65N+nqUjMcGs8+UqlNKmSeBqq1uU+hpd8rfHLWlgQvcBc7IU+NYuxrje
	 ZoxN+7ddY5q8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7303C27C44
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698606280.21744.3741840613287954701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5245c935ce897f42d1ef3fe9f89c851e3b75c0b8004a7b953262538d9e4e898e
Date: Wed, 29 May 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716986062
