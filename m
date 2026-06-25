Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439093C2BA4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782382054; cv=none; b=hl9aklsDbJNSSqozeP3YPwkZfWO3zT+c4F0rDmaDEJ3pwvKvVzIglTSpTB4d4HQBLRicErM3JlyKfVP9Q2bIys3HxPI8DRpaw+z4Y+9WgCY8569sfCjMJBTZCmaP3Th+UaLwduebk//wDiWD+tbI/xobOURB29o5bDSdUusA5qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782382054; c=relaxed/simple;
	bh=A3AGgEoWpyMH8KdN0i3o/S9o1dmGP3nGNbpLlaLPFCY=;
	h=To:Subject:From:Message-Id:Date; b=rlyftETLwR7Z6wQydQ0oP66CPhNh60jyEYSdK1jX/+IEYsCTZKH7plTtx1Jyu958GD9TIVJ798fu13Paa6oYUs05EG8ftRDmmyXLhZzNmmL06mTOlRxTI11m46QJjB0T7YmOTC0M0Zj0isEquxjWp2H7G/wwuYyGFwjTplJ0D6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t24n8nLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t24n8nLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC05C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782382053;
	bh=A3AGgEoWpyMH8KdN0i3o/S9o1dmGP3nGNbpLlaLPFCY=;
	h=To:Subject:From:Date:From;
	b=t24n8nLBKcsLDJ6gXbi6ie6u9ISGMlCAhSaByGLsES+PtZ8KvdM14UKdjm2AhVlIQ
	 dmS1OZVi/P4MnnZODl04Tev9XEwGYTcnRge1oT6zywA6dstk9CvI0KOsaVE7l2FcGp
	 Z3GbQ9Va5VBj8XqjPav2zxBa7CBVYrr/lnBBbi+XMEajLr8ZpQoLKt1JBUehSyeftM
	 7oEO6QlDTNqL+oNyCMTj1/fBSVUG8Zlae1LJYbFUZX1NC0/cng6/oSoyhmWMK6WX4p
	 bVrb92rA1RHwLvf/Pkt6ES86hJSFoJgaMwYwhPX6FR8E+Let7b84nP11xx4bkf9F8v
	 TZ91CIIkbr1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C67CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238205378.21873.4368206245401524832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be32e0063be410ed8b54e7380c0ce6a89230f45f3dadd18ec20ab87dcb508bb
Date: Thu, 25 Jun 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782382053
