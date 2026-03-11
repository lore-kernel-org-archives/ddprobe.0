Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE8639EF0F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270294; cv=none; b=e8Al9DUEYu9a2NquACL7MfTWee9AtQfW13KDdxN3vnc8IdjJqCbxL41Z8ks5eOuvDTjPGDuwuKW83flYG0/kPURQ0IKHGPiWPdwIIgJ2F1bo1XX+a81HIiPZ6NTZh3B/GpgyIjrXqxOFtOPtNzdkRHT4u20Z7n5G0OvqQWdrrPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270294; c=relaxed/simple;
	bh=Y6IkwdUuI9WqAbwV6KW+Vvtv1ehstWpSJVVLWT2P/Xg=;
	h=To:Subject:From:Message-Id:Date; b=q7Er+sFi0T0uoNwex609mp+hNYMVS5ogh+5vsR4wVuRurk++L/TLKmr1ATHWSGlqjhgKGg+lWAd4lUZycjJADep7FIHRhvwt0F5PU4VeAIMIKVwYIyNpp3AFvqdCgMFP0MrixGblZrq1PB4LURTT+0CNBj9KJKl+E6fK2K4GfMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZAJPyJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZAJPyJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C0C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773270293;
	bh=Y6IkwdUuI9WqAbwV6KW+Vvtv1ehstWpSJVVLWT2P/Xg=;
	h=To:Subject:From:Date:From;
	b=AZAJPyJZlmcU8hwGogakcs7Xt6IF2JyG7DPEafGAdN0QgH7dY1tEcTrHo0MriM/tT
	 qmiKRJU1BTmSJSvWn8EWSVuvqHbbVzUxQfe4QsFCW2XtKdbaxsER6u/o0L/Xsw6Bax
	 pvPRJckAxSRKGnNspKWH7uH0mRPL6yFlCTvio3PHsl1/5tfYlHu1ubD+6EM9np2hx4
	 yuBc/jCD1eaXX5Z/Fv+pv+eo3f99BKDttye883cqL1uE8HoYtwc/Z0sHXMobAFuMw8
	 F2UsEedPYghunTsrAWefPGtM1kw8NwO6EmSHiu38N/MCBHbJjiQG5DwlksrLCCKPcl
	 m67OvN2ed+MMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E02103E2EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327029358.12727.16052225647371290837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8dea65f403e191c223ce628cc8f6fd2d94e751008ab54d13304a54e14dddae
Date: Wed, 11 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773270293
