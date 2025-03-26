Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534E42BB15
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743013194; cv=none; b=NR2NUItseAR4iMCSe9hihyJvA1OTSTGhWcFBOLejgnEeQLOSsgIAW38Z1O7SWryN0wge1tYmtNVn8LLTdlFgi0cyWDFkSWQSaj9TGMZKejRZl34ITN1ph73IhvJp4eyC4m+zan7e0xiXoouXpByE0GRPOGkG0lbC9/oOpqbblqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743013194; c=relaxed/simple;
	bh=OKzuVre9CJNaM2JZgmnvyGyyg5pOleAamBZwmLN05gw=;
	h=To:Subject:From:Message-Id:Date; b=qzVlyzrI6yS9v+yURyyc95MMtfQDgVWnAw4Z2idsJJAt/Y1pdJykafEJyA9NVqtyOpSt+DQwMWSScw/ussRR0b+4UQ056LnBCQJvEW1fOPsXix6PjC/EDWmypB0Fpqj0tZrgGg3Kc56ukDJoD53m1A+ozMq3bRax/z/eK83m5bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4bgslQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4bgslQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B31C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743013193;
	bh=OKzuVre9CJNaM2JZgmnvyGyyg5pOleAamBZwmLN05gw=;
	h=To:Subject:From:Date:From;
	b=J4bgslQ6+RBEqJlV/YDDsL4ScBZBZ0hEldhxnQzBdCmHGFCQPLK/ugPXgIDy8ZIbu
	 t8s0kLEmR54pokIIibWTw+lCMi6NoZpdUZ6m5155jT82xSHiC5/+u0E8o8WwcgEOSb
	 BJHwYn9FHeCuELBeaDtHsOLxGVtrUYgi4OxuLa0xm2SduKZ5B6JXhTcg9PC/zgmBEn
	 EoNGDxfsYGYOSPaDIRi/rSvTGueuolRPVUq5/GiUEgaOueRsVO0gDZci2GscZQCQUa
	 qEWKVr35H8PSjNUhFfqGgXy4I21oN5VAJM/IL17kmkpLEvHWqFnWnN7Nl/vqjtjNsO
	 kVkG1mEAF6qhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15E1C36010
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301319365.4121.5094684273612484855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ba53560b11d64f44840b90aebbf5dc358b5ea4214b679da7e51303481e3ecd
Date: Wed, 26 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743013193
