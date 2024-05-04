Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D4E1C695
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714827143; cv=none; b=EmHDbDW8IZypj9XoHm5bIkao0viyuGEwMu+HI22Qwgf5BfpcdoUtQlGU427CfvjHOBeHKG/IsT6peeyG06HSqiD4QlAiRy9JcxSY/GuhKl8dyIwXHzeKUzflL/sfZpoNSgs9FxG0htQCAiUDBDOtzhHgIUbrPRwPE1/M3tid63U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714827143; c=relaxed/simple;
	bh=xLBbLw9XzglwFDb5hqCYCL2/x0Ln0MwByz1WqJ8VDPI=;
	h=To:Subject:From:Message-Id:Date; b=I8m5J0bLePAVWdH1YQYxBncnxKua1YGltrJgVlrJ9490CyOdCmxkOlUFUpjZKvxCbQYGsgkJ14WNvkTvhjDRQANKaorFpFBbADGNp6uv/6UiNx+OIXq8x6BlsSV2Vw7cZ8HrPIy3wtgQuQYn2Rebb2Q6ybLsF9CNK5R6f9EljEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvFATPyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvFATPyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEECBC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714827142;
	bh=xLBbLw9XzglwFDb5hqCYCL2/x0Ln0MwByz1WqJ8VDPI=;
	h=To:Subject:From:Date:From;
	b=bvFATPyK5nMkm7xufQOYvwRxZWQ09ke13EEgtRXE0m7QFqVrfR8MSTLsd9JHENitU
	 +0vd8wumfYc/2BhbJVaJZWegwba+PFVF/+Fo4pfujvHSdVgNT3JsyXrevD6wSPr5+d
	 A9hu/GOvcjfVSfoGiMvufy7Tf4IL37U+1VBV7eEejCfpY91WDc3q3L8fnioahLboz1
	 CT6z9NSANAo4sHkPUz6bLgYhtgeJ577erNDAgODl+8t/psqMvxicxHaWxaU9tgU4v2
	 LN/TliigOpe4T4Z/+wJoL+2pNTbAJfOx+4N9N18oCiY32qQZuRZEEjtYOAMnWWxzwo
	 JqgqoOgy1wvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB392C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482714275.22400.13788313958193947584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf7e681a5b93e56cae1c5b41a3ea33ebc67a067d49aaec8531aa1f3671d8415
Date: Sat, 04 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714827142
