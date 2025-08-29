Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD371D5147
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756486194; cv=none; b=OJ8z0bgnTwVL/U8epMUXYLVMuXtKHLMyd/uGhS9S2ChpJrz/5b2VQuTI2Q88OEs3BTRdp+HQo1RhwKF+FRHgdQM2uumxwxNSW9PLRvZ7kEkTgOXjxsz5OsuFH+zmLNjUZfzLyHoZ01FfdsKMTKbNA8CVaYQJztVnt+VimNtKWxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756486194; c=relaxed/simple;
	bh=VKThY2+xvLXIriioTXmRYU9Ei1+lnXMyY/hUksykrgE=;
	h=To:Subject:From:Message-Id:Date; b=ru4idj6YEb9Z3qMWW2S7jsDFwVC9atuvstjAWecLnyHNqrjuhThEOndPOusBldPsJdvV1Q/55LAKEiuaiRzKzvqEZr4fJq4Kv6To7WXvf5mOMUSQvjSiGe4JDmaWS03+I0EX8DfZsrNto+kINqSejP9Akvlr7mbO5S/D5Xt1Uvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCEEBWlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCEEBWlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F8C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756486193;
	bh=VKThY2+xvLXIriioTXmRYU9Ei1+lnXMyY/hUksykrgE=;
	h=To:Subject:From:Date:From;
	b=PCEEBWlD2xIRdQajo/WnrcKH0sQEt98b3WhFfqLYviJuLDH6/xz00fKNMQA8bbLLE
	 otoWSBIkkJi39PhjJxKa5r736BdyyHHS2IkXGAIs+Nz/WOSglflxFYCd3MlFV+XXYA
	 LlIj2zBRErbowTn65vxgK+QiSzS5o8WqKIpidMuFBlZhB1RCyCw6AU8LUuAbAaPgTB
	 nSHR2lpBrqpcSfOZ/mlzuJkFmrNSBm9Oj13LByfL1LfcntSNSnsZ+y3uu/2Tvewrbd
	 l5Njx0WAsbbjSEjP7DK7L5UD3932GhPTzOXa4aIaQBEYHOeLUYHN8pBSc96T5I7y2z
	 D4mrzT9S0IGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9219ACA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648619358.5350.9451218833100852180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcb1b35c12c47242f672e8ee3578ebff4be3927cfef1d9617b62a08c9873175
Date: Fri, 29 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756486193
