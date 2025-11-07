Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D4B265CC2
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762474794; cv=none; b=fuyLwSzimswW3u69ZYoAWDqLgX38JyGKwNVpVBr24E8qYTInKHgCeZGeqJY9NTwJvb/oiincQuKp3yeo71XTvKRwwInqMsjqNg8Yv1BDvL5v+gkEkjsPIKnwUdr9OXMIVpUxI3NT9YN+Op1a5qTXuxvd9NpWVi9PbyPqd6wFx9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762474794; c=relaxed/simple;
	bh=sj/DsnpqHfEOEmld20X69qGfZy8UvBup1G3SnZZS8IM=;
	h=To:Subject:From:Message-Id:Date; b=LOrY9Ch7isw3hKIXl8cUqs9fXaCOFb1UoXsuhZ5ByjtEBYs+o+zw/rcE7Dx8irAP5eKWMKnvoTCH61q86yEkkLs0DQ4w2xZkM5Rq/X52RuXizD6bvBxMhFIsqhaP5knI2gaaMQNHVPeY28XR0q/lgCUZClUKEo1L5W+c1zIImoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cemtuJ1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cemtuJ1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B0FC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762474793;
	bh=sj/DsnpqHfEOEmld20X69qGfZy8UvBup1G3SnZZS8IM=;
	h=To:Subject:From:Date:From;
	b=cemtuJ1EYEUtjw92A8BgYr16lbFL6ixQg4VTFZRzWVBpFJ+7vwMGqV9NWV2rJztw0
	 ggGv9RcmCOlu9aXj4PckYq8+aobMzIse3TdeAykCPE3djy2SJzHdNm4tmuqx+ACeL4
	 muIGt1SKArgbHYNkot04DHEch+Ymo/BoGTW/WwakAVmXIfZ+AgMVbgK6s7oesK/cQ0
	 RKhcZgdVZ0N0kp7gvBG2eLnk45TW7PKPoI1rvI6It2VFuIgQ5e/+Xa21tsxht0gTBD
	 RioLdgFWDU3EHDqb3UbfJ+KQZTfuDhklfquRu8sreTdbC9pihrbGnhXKBGVxCdrcMC
	 6p5qkpBtV2H1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605ACCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247479358.15631.9605238529176436943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266c3767876a462b5149ed9e6511ea0a241098810258c1a0e0a1080aaa2587f9
Date: Fri, 07 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762474793
