Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8F48834
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766768634; cv=none; b=rNkCpntkPBG1bRqK+foRNF9wjbNHZ0Gc4RRyi8C5UTpNzgGw3BvJBuvN2xdEcTFRdsGkjqYkRlVwtFR1wxNQPff44n1cF3zWRa2cfgr150dWEnAMWdvH5w5UTmsB0TUlzVaG9TPukxvuPD2eNO+ns1HDJ03sWhpBvpl1ePdz8cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766768634; c=relaxed/simple;
	bh=0UJ6izGHpZ67WmmalAPgVZuIb75ww8Tv1hCids0RjPw=;
	h=To:Subject:From:Message-Id:Date; b=r8QiZH7mdpplZQ4cSDebCBzdltu4YNWtXC7f4mWGfKs/M9aFqFJGDnPMvWYxMbH81RCbRQOv/Lw0mTLd5LQWHb/LqM2wQSbNS5MFV6onVOOghN3qXK0tjx8iUyFimlA9xptBL46Wro+Io5mfsAscToqOeW0+bUmkH+VmI7i3ZkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soKxFrJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soKxFrJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766768633;
	bh=0UJ6izGHpZ67WmmalAPgVZuIb75ww8Tv1hCids0RjPw=;
	h=To:Subject:From:Date:From;
	b=soKxFrJjzGW9eNzh8Cifv8AG2AuxVkOEO2na/thz7SquVb+5VnesY7nMOhB+GLlzp
	 HegHL2GkWVBQ0L2ijZKkYCtNRJxQ9mjdWDCepvDmk5WpHGn0vSOHUw2TNdIeaP+uGy
	 +iSrzny+Al4jFSO8ov/TYtiqO70hlEzz292LolgwEUV8rqEkyAPg8S8DWsYrV9Nux1
	 IujFKADXldF4yyoqKug+8yj9geA3bhSYluVL5csWo+IECF2RwQPmh+XzuB0MTXETia
	 qcqh1GjKZzzr+R9INja5qvHImCbfVTGOyybC+Kb51+Uf6lI+HcKs2RpWOFkXTYZxfh
	 o+3Oo3W4UmCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773FE8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676863358.27343.5817995888921792894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860263e3705a3a0e91cc9f83271cd7ccd059fcbadc943721872da8aca6f4ee26
Date: Fri, 26 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766768633
