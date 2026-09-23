Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565C0386C21
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790197234; cv=none; b=SUeYPd4hUGR80GaYEuEEtIY8MMVlusG6fXZdGG73Kyw9yOGi0zxpEuO+Uo+3cZhMQgxp0DFIL6q8kxHwGII0s388aM7nGxQo2QnveFxtuISfgbeHp+jgmZg0CSrhaBy45RzlZzH/eN5lWMFPRJVX+taletc4BAnzmxKi3yNNLu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790197234; c=relaxed/simple;
	bh=lQc7oiyJFWmfdYCQ8iWDq/lRtji56KaC4dup7XSCamw=;
	h=To:Subject:From:Message-Id:Date; b=eRo4AHu8DD81q4GTA+vPmdeKgmY0IUng8I0CZXwZF/WgRqU5+e7m/b4caG983QCPkz9104JB9a2seIqclAnaHzwREjuzaYwdkHiHXUw34GsXva3YjCdM+NKV+aAKP+9G5XzCAbbq/A6JfdbPrclzgfoY+RbVfwYyvvkMM5Mk/co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WluB2Uge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WluB2Uge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE56EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790197233;
	bh=lQc7oiyJFWmfdYCQ8iWDq/lRtji56KaC4dup7XSCamw=;
	h=To:Subject:From:Date:From;
	b=WluB2Ugep9SrG3AjdOSra4k3M54vZnH4f3dJDVLOrGco2p1jktygeqWQ3uz7At8zL
	 wkapDkHp+mti2D/FoWXhq/JOhePzuMQ/id2jiqDnrnW0cWTmuEjbfLh+GvvpV+1nXv
	 RKvTklIyHciFWDT39o/lT9FV9R3NWlmvxxW9djBIjMhYujWgGhBm1+S7EpWuIBTeqD
	 2F/QWv1XeCt7uKQZ7ufPSFmDM0c0mTSyMTvnD7qLUemXLGRJWysSX1DJsHa/y03REN
	 b4YFpP736K6XyXlegMTZbhG1yTTZeX2oOWNW0PTtAsmM0NqmPCtFjDP+HpievcFRau
	 UswcPEOKib/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05A6C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019723377.10910.16980385928024524263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdbb97c14035ee85cf9a771dbda24c296099688f57a738b804334ffceceab43
Date: Wed, 23 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790197233
