Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A643C8735
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777825054; cv=none; b=QLXFXGDURnjHxYpYMzibajRKiw6rk7CEompyAXZ4VpNGB9SDC1FqMoah4CEoRkqPq1UJhnMLak+mbncCCiRb8I9lSRwphfUc3j2FGJt1314cU90FK/sqmXGjWDWJpUQjMxgEmgEZEMbHmHFX05a83wmyneQSdfN9Zt0dSkmmucA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777825054; c=relaxed/simple;
	bh=r8APwbJcNljboIr3TiH8acvgcS+N/F2bg/Gn9U4IJw8=;
	h=To:Subject:From:Message-Id:Date; b=q54azctFR7aw2O/ZTstLbuWWcFZkrnVtjoG3pZPqp/Iq0jVQQb3tmYR3F3ZvWpt20T3gjgxsoHINWGpjm+mmn3FiLiyWjoN3iFnNcmSfWo0J6iEdZ0Fx3Uqk8ZymiOUNPtKpmIzQQBo1E/rW53iV0rxdt3ZjT2iVLMF+tgzGYmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAXjTgcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAXjTgcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5F3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777825053;
	bh=r8APwbJcNljboIr3TiH8acvgcS+N/F2bg/Gn9U4IJw8=;
	h=To:Subject:From:Date:From;
	b=XAXjTgcEpBvHxjy3q0Hfb9n/dkPvRMNdmAQmVhX4ngFESy9GR/ym/+fm8z+rIl97X
	 Whn3WvxpxyOTwh/rgzVQwlqxzBbS4MoEjDN7gd122r7mthiaa0cggo7qge0U2vrx37
	 rX0yowlrnq8TdtL9FRja99O6+2EWD161TZQ9EIKpJBeofmNekjalvTqhtmGar7Anw8
	 /bKYrlEdT/WP3Y/NvDoS8GPXFuWKWQ8R4dEjP1riQHK3foaijD7533/qzLyXiJ0K4Z
	 TBT7hL8MScJxUhGgOx1EiFkXH99Wwa6poenSup5B4aVk9Fm1LYM4J2gBitZU4MAttE
	 QfuF68Uv8WbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12BBCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782505369.17641.1581839171641759339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0a70821b144cd9fbf11d0c7bcd22d0806c48c1dfda2ce94d1512d825d33b02
Date: Sun, 03 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777825053
