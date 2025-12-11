Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C8B1DE8A4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765464774; cv=none; b=aQGp5Wrl+vR4Qxm4O/dJkycaE2AFUjZwvQu0m8ij6rHApsP7U1EAX2KpLIy2MJV+wU1wUGamgL1me8HcuKP1ApktnUGh3I78Z5TkEe3wX2dD0bcPEIdLsNjyNYFlhC3wVuabkU7uO5dHIK/B6wJ/NhT4KdadiDka/b1TaSttCRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765464774; c=relaxed/simple;
	bh=P3X3QXBxiUvuiP8hNAiUd5AcVO/4LVJsb7dY8QS8v2s=;
	h=To:Subject:From:Message-Id:Date; b=JNxcayR98oJ2KNCfVNmcFz1818pqpRAn/GZoX3KquG4DSTPNhacJ4eTSGCGlz9hX8tTbg6ogfUBzP2f32/U2M0xrdaulziKUFJ2lZK75EgVmqgKSNJuRJICsSTybFHtvt2g7gyh4CqiH++DZBTLO7rvTeVndMKubpiB/GFIHso8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHMTiJdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHMTiJdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9ECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765464773;
	bh=P3X3QXBxiUvuiP8hNAiUd5AcVO/4LVJsb7dY8QS8v2s=;
	h=To:Subject:From:Date:From;
	b=ZHMTiJdM6vbo28mO99EHhnlgmkxF15it8N50SRhw6Fl1AVriqoFuPiDTvwYN6na2I
	 YUcRlniFkTwKU8scMLhoJ+RfTxJVTtGkIaqEkTZkwRTsAiZfuyzHVgDK0iNAZgXk77
	 XHsXxSUN9PANDHeDZkCLa27nvN1tTWKUlMXdbvGgx25mOc8RNa7yixKq1ZcQb/6peJ
	 wRas+89Og7Rjjs1R6nvMnEYYJcDRFapekGDrnzjCFUhzZ4PAMzK5djQnBg3+/mHDRa
	 yleeRZZDxC1tj6yUyH7OcB27fap758vnOQEw6E5Du6Cyelx8QAxb6/xiT+6V90gI8l
	 ejWgSJMBjOXSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B716D41D4D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546477359.12942.290571028255442917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054c3c6ba49780f6a2f88644e006252386d464f869d39e3439a190cfa20e3244
Date: Thu, 11 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765464773
