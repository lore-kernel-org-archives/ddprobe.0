Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6D32F363F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752671394; cv=none; b=s2zwQdJ0hY6/druzM+7AcTNLb7jCqBb3D3x5gDEmprHlBV6/nWztnUm5F/bWJhpVRiOjp1PKo+9qjpsGodtytE5sgSeLul55mjCfBRssXeQ3iAwG9TQzZwAuMlMRdTx7x+kve2ykaM5ewH6x9elhZLP8KbYf/9dO3XtKEAUR9Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752671394; c=relaxed/simple;
	bh=l4RQfWF7+I+m3hQlouatcgDmeVD0e8DT3EoUmGXH9pk=;
	h=To:Subject:From:Message-Id:Date; b=Z2JjYkKCRI2WwSwO0beoptWxG5/Gk7+viqH7Cz47obDOJNrOz+5wsqf02yN59PyzMwSe/6i0aGsofqQSVw8ftHQWu47rEPD6SvPvFEEB70wlX/yQgzb/yeRVw8yLZh8rewQxp2+r5yD1lyHd7n7xuEoyrK/vZrYeIB+N6ykLwe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBDHMoZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBDHMoZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C07C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752671393;
	bh=l4RQfWF7+I+m3hQlouatcgDmeVD0e8DT3EoUmGXH9pk=;
	h=To:Subject:From:Date:From;
	b=KBDHMoZfEPwd6uCFKXXR1x8qloHS++aphX2yg73JTR4f5kZ2E3N7XmLlWR9cBSHI+
	 ikWAtK0RrdzhOzIgRl+YtbcX525ND4GvYkPRukzwEa5t4P/xvABfXfPlmPP42sTWa/
	 x0US3RpKvjvJduQDcANKwfc1a9llYij2tTTCavHcVOyZl/5GUL7HxVW8B7jCb8sN3O
	 LEHrzPyALfCHYA3NuNeJgZLqjQz2Y/gK/NyTHZ6aPFpHQlULsOKVabKsr25WvALdRq
	 ZiD+JYSKWXOq+xKsMCInwC7DvQWNvP0CXOIeutaHsYIP3BELIuqG9Q6+e41IjXsCIB
	 LForqZLWidbhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E63C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267139357.27421.1547217902694867019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8292f6904fc3f59635bcd8fe5a1367a4a5589f50b7ca4062cf021488dfb6fde6
Date: Wed, 16 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752671393
