Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5822126C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773264894; cv=none; b=TFH8Hb0/YahrHrkC9nWZYgKvFWe/wIkynSqJBCpnAiMkeGxfC7oiQtgctIeDzmLSpL7jytsDDgJeNfdbrLNrgcYtKS2HQOfYU4HBM6nPergN9/jWnzAXL6fb0nGf6nlwgeFsfIJMGhiOlXPXORdK/R/38wjenvXLZhmwJJ1hmB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773264894; c=relaxed/simple;
	bh=hCqBcRG33Sr7WwipLUAVPCt5hVApCC+MnBJ5505YlUk=;
	h=To:Subject:From:Message-Id:Date; b=GZyKuW3KzUk/iB4jo0+8WXpFWpwGsRjo9VSq7vpmRemW57N7PjiHW+Db31cn/1DiSIy+vrVRjdCdxvCB2vc+QcNkPFZZPPpY1QKqaya7tn0/bgSvWVUsFueUiAw970FPVdU+7edqZW4QMBncJtEM+4ib67AaImj0zKb97coiGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbHq5oTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbHq5oTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE717C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773264893;
	bh=hCqBcRG33Sr7WwipLUAVPCt5hVApCC+MnBJ5505YlUk=;
	h=To:Subject:From:Date:From;
	b=DbHq5oTvRW1xqocdJEhwW86vGCvI/IkjuwJJ+o4mIL+AmMWSQ4+kbx2yzYJxRhdDG
	 DyEK3se+UHrBAuHKgOYxJkEAfBfu0h12WDVvJPwIFcHNFjsHIO8yjY/FfX0nx++2x1
	 wDBWGIPmgXa8NOW32Dl3YT/13rVGSFkOKprOBOI0HDxigija0S8fHX9j0ffzldkn/w
	 iPxattuJqemjzycHdzJ03mf8lAQX4At4iF0k0jYJySkfdcgWU0ZTFn17NiVZPppWMC
	 uJAz4euk6JkKb8kt28F/i/ahZ+iLziGk281Ps2z6feoar97T0+0FGg+r6lBfhscTWw
	 PC6wtKxCdF01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9CF103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326489363.24211.3285043141908426369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01cdda381c15a55ca0c34941a8474e13e343ab6f25086590570c58d277d9ba0
Date: Wed, 11 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773264893
