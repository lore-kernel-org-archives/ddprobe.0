Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5481A9F93
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763290854; cv=none; b=j0u9M5Ljjbc4imPwmEeDayWAluQQfPD27a1HhCdCK8ZEhxk+w5Ty5nHGhNReuO4LI1F47w1xrMdebrVat4X2ZRT1VoGt5K7s5PF1ZdZg79EuBBXfmFI9fsr4hA6nWfIlMrjTqbRExQXdc5t54uNWlk69DZu+vVZ+gPjmgtCAzVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763290854; c=relaxed/simple;
	bh=Qy+ILPwoK9jW+4znzlgc6XenkMBgjdy44hadNwb567Y=;
	h=To:Subject:From:Message-Id:Date; b=eYIxa2CZkKg+yYNHi7QEV8MegMMzSx8J9S8w/UNpPYx9snbF2BaCy0vnrwilw/T5p/Ex3oCbiHWnPbdsNndPgpJhv8qcxWAR/kAbJRlLmPKYrNggGA1yt1HhaSxpQf+8SfFKzTPJcifW0xSJlaUFRadDucyZZCM/yWtgxciInps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRMrp8ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRMrp8ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B23C19421
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763290853;
	bh=Qy+ILPwoK9jW+4znzlgc6XenkMBgjdy44hadNwb567Y=;
	h=To:Subject:From:Date:From;
	b=KRMrp8tsHkUw5lHZqvwGHFxWdwguV6N2efsw2QWtn3NFAn9hEwi/Z02eGvsadCJ1d
	 6zZ6hyONzdzVWsb6AuKV72e3qgbXJ/zaWZmo5BvDcSDaRNfTjeMNfxUS1s6wFeMRlS
	 o4F0lHCJTEyswwKlHoFTJc0TwfkxwMt6odrjCvBsDjqRinneRVxHRHbLU1sJ2CGsfr
	 WGcL78E1EtIcp9VremDGIz8m6TiIbERHuPTk+IKkIHgWU3/3xFGXo1sFy2yGWxI5NK
	 UouJ1zldfhjfIiAgxTT3ykPdKUkJTrLOE63FY4ZLqOVSbXqfOJOzaHVCXP01wh+QoK
	 thlLr3Ouw41yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF367CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329085374.19260.14695721309030854622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5e6757fcb43772e84d77f28535be4969b50d811e8a9bac2e9a31a7b47f49ac
Date: Sun, 16 Nov 2025 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763290853
