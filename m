Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E23F9C0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770929094; cv=none; b=CVDfeZDSuEsaNney6cpNva1YNWXJ4lDqVYRCZ9gF/uIuezJ7RPQAOi+o80mISvXvuV5bW91yzcIvQ+B/TyiT27Z5a8XJG5BobwGgpzkvOyS0k9fZnzUvxE9QD1hcYM7jGwGPqhSrxgLGFiwxZ9lBVU4mxjtJQqiUJXyhHaAuqks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770929094; c=relaxed/simple;
	bh=94D0xn2IfaTRM+0TLALixtBnAKC+qyyk7vU5rQk/pdc=;
	h=To:Subject:From:Message-Id:Date; b=CIGlDdP3f1HssEuT6aSyVFdSaE2037oqCGjTB1YbAybOF3rsL7YH6eai9MiWCeP99r5iz5nOBXVaKJRdKMZRMCow0gLj1p1IDsgc0VdVBoZEr/+ETyAKWN072d+LX4OOWZnHwkulVA4je8EGutpgnA8w6R0hLgTAuwtuxT9xaUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK6Lk5d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK6Lk5d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC4CC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770929093;
	bh=94D0xn2IfaTRM+0TLALixtBnAKC+qyyk7vU5rQk/pdc=;
	h=To:Subject:From:Date:From;
	b=mK6Lk5d9KtQIxrEHGksFJQ6QtKTlZIiyVITyjgidO7NyI2UzWMzbtyyBUWsAxDV9Z
	 qZ4+bJhN2V1vbmslW1rsInVzeiqcxI3iz3ZCgdl1O9QcRXmtZkAu83cRgIg38jIlQZ
	 9EYIuj/6kiKN7Gm9Ngf9512+xCfrpWfEzoa86HsV8N4itYSAYrsZdTXxTlXyezvwJw
	 Y7WenWwVZqkdAlHeNxDpeuHe7n9nBWjm7IRZXJghxKMpbkOJ680NggGoYC+E1Tv5mj
	 qeg4SasqPL032CaU4+1jEJTh3hfEzMicN8L+7KxC37/BtR3ji/6o2/IlgqlMxzxHii
	 rFL+pRW5AN3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FABEEA84F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092909359.13417.3604604688353158510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938b3bda08921b6c1e1e5619097bbdeb1d71fc275d6a7fe6e6c0a90c098f9d6a
Date: Thu, 12 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770929093
