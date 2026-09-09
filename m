Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3E7486E62
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788944434; cv=none; b=MGUvuHy8cgr3L8kdiN0b8NaBzX1SdeEz9n392bpVNAMebVSujdNMONkivTHNOCjXLBxOkAYvaOorUCWH4EAzexKFqxX67BptYohPiwEB1r0D4vqXIQQjmKDEvTug5i/5Nv7eJIURnR/i/iixZKg0EQXVALwWSUMyp7ShfQgVpg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788944434; c=relaxed/simple;
	bh=ZGoEub07yEVognFMKGMfGiZaO2HByLTMGruZ0gWGP74=;
	h=To:Subject:From:Message-Id:Date; b=En107dnUgXJE7Tw0sDW5khvNu0lOv4myujBxhcdNgHEbJu/aOQNjbDbGJCdp4WiB313vijmm8NuXHvp5z5aF3eYE7aBZjOoe2rLQrRD2eIrgpZRSw1xlZxf1ulMc4Ze7yZ953EhuNSP7efN+Q00SLmGah5/6qYmjgJe3sIjdI/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEbS0WXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEbS0WXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE01FC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788944433;
	bh=ZGoEub07yEVognFMKGMfGiZaO2HByLTMGruZ0gWGP74=;
	h=To:Subject:From:Date:From;
	b=oEbS0WXecKnw8UcKTeReF4zipUYHmrxEpF7AOuWnC4uxLFoTQIIdmgUeux0d37Mwe
	 YbLrvMWeaeD7lj5CqB6pGgXK70p1VOf7f2cYfM59wWTDwfZpWM7xiQBaDhBRSl9ld5
	 +xXJa4dyklcV+QNDu118GOyN47V8ZBdr+Lo4yPiybx4VJVD1rDPK26y0mfTnIN2LGt
	 c6GwSrKi1QJI0Q4DSM6h5l79HtFoYU9aUjKC9FBxDSKqUMZeimCuvBKjxXLAuu11Fi
	 74JxJrBg4x06aJUCClHGJNzqfH9VHsL4Lu7dkycuWjJWl+qBmQk4NQxpV0V7CUYBHQ
	 wzMTMEOaGnWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE78C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894443369.29286.1781643958443337281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c016a3b0652887f4dfa4ef29c87d6e29e1459bd2a11394e485b65974c55fe64a
Date: Wed, 09 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788944433
