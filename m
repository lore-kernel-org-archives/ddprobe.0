Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAEA21FF2E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769221434; cv=none; b=ThCG1Wpik50VgNOmys14yme2dNGxIue9mCOEuVKPOhU0dM2KBRNFKTo8IAbGXQ6jjHrgjMD9BcUu44RdUMT9CdoI+wjxVLWqDt43rooxBAPy7YgfuFJnjIy8mZBe53j7Rv9pEJ3cXE0pZU3z6h1Z5RS91MKghhLbKAEsIptzYJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769221434; c=relaxed/simple;
	bh=nM2FCuFVvphRMwaSrWIuw/eGHwUdocfg5o0JrF0f5pc=;
	h=To:Subject:From:Message-Id:Date; b=GSdwwHPPGmok8tIpyFgt4UnCAir4e4i1sXCSp044kAHJDYvExiPHucxJytv4UBffopPlWDcEkUzAm8k+7LMuLAPNzKGE/qy/+aHUgPzNxZYVv57D3J67dzIITJfGyi8bm2V5l0S7q/XwqW7mh23Dob860xfwTTtXqYdbOjpVIDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cU9mdPit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cU9mdPit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC770C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769221433;
	bh=nM2FCuFVvphRMwaSrWIuw/eGHwUdocfg5o0JrF0f5pc=;
	h=To:Subject:From:Date:From;
	b=cU9mdPittIusddgAlZSg6jJwEB8ydSHU24+0BY9oOgD1bG8kxpz8ET+yS/y8UdixN
	 O9bfi1w2yS0Nv5vCvO3lxAmSHj7X28+XeVdcd7UDnYcNRQsE4GhVCiPqeWbBv8VMJQ
	 7dZM3N6Q6weabkkSyci28uIby7wNPwE0s1se52SK6+ReTp8lFkqn3e4vUghZ/KZ/te
	 MgtKwZnYsHaE0/sGgcNg7qdrDevVKJliW4j0F+feG5e2oBwtONMpnbb1ng/ZOaZh9a
	 4cyR+WqQUCiS4Yu3iHjmEL6eLxa/EOWIZnhxwMas4yfncLc3BPNSwC9rgXC3GmWFnT
	 ehJyLFPoissNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97887D778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922143360.3665.14716524011282230770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c17c8182f799f104031d9cce8f117982af7350e0020936edabb12184eeb282e
Date: Sat, 24 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769221433
