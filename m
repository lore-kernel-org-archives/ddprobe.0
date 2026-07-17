Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9C6381AFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784279314; cv=none; b=esJGtBXPfLfwdiLa3ouxsrZrgt1bAWPCQVnjKLA0V3F4UzroQkBRxZ3LZrXHeWhkScSvTQNj9lPRWp182vOmUnoXhMMlWMzaaxoMd2rRU6iiD36AqzpcIdHTzdnsIVx+QJpRpF4PpXIfnxz01MY5eAJH5CJdjkIAVPPfBNdTg8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784279314; c=relaxed/simple;
	bh=xIdaRUIn4ifi/6A8xOnPiNBCJp/A+ISnFMwDK6A+fq4=;
	h=To:Subject:From:Message-Id:Date; b=s9UupgdFCJSa+jnfT+eUlrvmFSEpC2Suofb68POjzNE5MhOxPUiruiU3IfLSwJ6MOtQme91gP/9/4HlKa6EcCCJLUsfU+B3FO6NAOJM4xNsbgK/tKLGtztJsqE54pFpLqn3whsiR7Lt9D77MgrhumsKfh2kMDXZ8hcbDWRtgy2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPMR0Y/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPMR0Y/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC698C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784279313;
	bh=xIdaRUIn4ifi/6A8xOnPiNBCJp/A+ISnFMwDK6A+fq4=;
	h=To:Subject:From:Date:From;
	b=jPMR0Y/K//ROxrkLdILUMXTrJJtHZoJxiD1bcMSvrZrTCmg5/FhADlwrXfuSfi638
	 JbISY1kWLiDiKUUnThuVy/Ba60rR2tY3snc5alLZC015gOjBM5t2yzDWnwfcPj55Eb
	 WaHEKknbPyrnflCHnV/PTPb9c1dLNXdBhQcUBZjMl6C413ij6vjWEdEauNyKhZu5+R
	 0ncYmvAPvqMFithAybWWv9sMWUQUyTAhubod+c00Nj9zcHzHLquiIWcjRMvP0tRUOq
	 3AtjaW0dIk9ZitfN220UKQHvKarPZ6DZdCz28kvKi8SSufcD8z4eCraaNQ7Kx4Qjpe
	 nwpzUffxZl5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A857AC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427931368.5896.5401727191470718682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025a3fd7d0588eb070d5535ab26f7781b91c6b939d3f7d764032b8919dac36b9
Date: Fri, 17 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784279313
