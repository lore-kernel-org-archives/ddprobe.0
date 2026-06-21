Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D943370D4C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782074794; cv=none; b=qy9nkvIU72HyXOS0XQsyGOUj6PCeqGzxQQFtesvMhBgsn0ew3mLMyyIJakH1k9JO+CBn8vgPPeoLCKES3MWAz5y34PqizBxJF81BEDURvrpOqP5voR35Ru6ccMGHUc2VI+DnfxTefLEQU6NOimlSphqbGFfrscy2+MLSwbHbmrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782074794; c=relaxed/simple;
	bh=FK+2NEfhmjNiPmmp7g1NhFUlNzSKDkKYpQVX60F2oms=;
	h=To:Subject:From:Message-Id:Date; b=adYZZvgYgOprkVtb5wgo8YQ2c7NudRAyZlRvs9nGZsjC2g6W1Vnre4jHhsAy8o+gwI2ELCPHnhVRm36T4sJwITRi4yOOdet3W3HuhlKc2GnA1UzeQ8ffB8+zs/9rfP3ywzvMxwFvHK7NFgISle60vJOvRyix/CJEOF3PE1UVVbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSaILpiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSaILpiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FD6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782074793;
	bh=FK+2NEfhmjNiPmmp7g1NhFUlNzSKDkKYpQVX60F2oms=;
	h=To:Subject:From:Date:From;
	b=jSaILpiZLPcYEATn8SUe0O1vzf9NegVAM7ulDTjPUiYhvqWoHU7BTGsMpOoTYDmSx
	 VvD4u7dHY7WhQGAPnDze09dfpFNkhp6iJHNgJfgEFoBoVHMsTTdnjR/EOSQ5W1hxOk
	 cjjE1gzXFGL9Yt2uaIHiUyNFK1DS5Tz0rvWxYy9+Nmr+rRe1X2gcOMQJFgyPneZvRh
	 qnrOtJjUE6cc9km1DO2eoHvxwmrpLuRgIBfNs4u6sAL8BtVZ+29FGWLcO9LizQujR9
	 pLViH3QaP1i3VbqTelh9HB3TY07uV1yhxZakt9ua5dx2WNbesa4eWRoaoxoI2h84q2
	 RcHHpGA3pKyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C2FCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207479371.29515.17219705497488250627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0ba172cb64c19062e1cd374ded00852d595476a8c086f782c4e44342694652
Date: Sun, 21 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782074793
