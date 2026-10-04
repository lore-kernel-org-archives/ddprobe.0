Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B062134CCF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791098434; cv=none; b=CzRuK0SROgZQABvrIiLMurhuk1sOAUBmS2t6NSjlkwpeHxvVaw0TJqf9vc0ADTOJxpFTYC1gfAAsCTTKAOmPn3ikvYikfph3FwE8Psl0yFOhkAqdMs0m0NDqYSWHU6kw5CuGMngitJPiyJ2S9+3q+/SsxWzjWN4JOSwDtg+RzsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791098434; c=relaxed/simple;
	bh=A3e/lVyb2JN7OMETUIT3WJH/2Bl9WXzWAWjTDi9Cfpc=;
	h=To:Subject:From:Message-Id:Date; b=Twxcs8ZnHKs8b9EiElYZED8+i49II6Odka8XINJ7mgNL8VGWYLFk8p65xUYABhF2l8ZoTAjkGvq6onfiDPKiym+oOL4G92/J5BEIClkzxmonfAvrWLlZk7x9t5yoWxMEyE/p/aumFiFP0PtGHi9i7nPCLj+8PEcD03uAq4RiPkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyUdPxqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyUdPxqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EF3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791098433;
	bh=A3e/lVyb2JN7OMETUIT3WJH/2Bl9WXzWAWjTDi9Cfpc=;
	h=To:Subject:From:Date:From;
	b=hyUdPxqdk/L1yn6PaVe0R1Q0/kB8EKcLUWmFVZN5a9KefHI25PeZpfc5a6POjcAHL
	 mnf2t9bFBnIsb1njt5DENhHQd9nD4/00UFPZW7CnpsSWbAVeHULeVezh9EZ79zg0MU
	 bt4cSKSO9R7mQQ8HEOH3Yt7Lc2Tt40og6SsXs5Yf3SMYoxD13Xy/0fFOKzNEP8mzKc
	 84gIEYNyDBhd1beLjg5Oh5xcuoDC3ooLaGo8Qj4NHzFALrY+1u19Shp9MpE77x5p8Z
	 1Sj9oy1Pt8ZCcI+7wR3Q5l/09YntWyj4gehdnwUrR6pcAYKHHjPZVo3tzegQO0o14e
	 rIvyb6amXOotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CDCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109843369.12183.11677786487644985617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3420eeec247affecd7758ecd0be86d2d483926dfdd781057964c8f9f89cf336c
Date: Sun, 04 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791098433
