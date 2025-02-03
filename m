Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B006339A1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738613154; cv=none; b=tk07mdCitUnsSN7/ApqpUUUBMj63a6ASmxwXroWV1POJJwT5u0MgRyr5Xt786owouaLFxwSZNFJQM6LYF8bsSYEUaKCGS1qKuN3y4tPGW300y0ZT+PvkzRK551fNAclOdsJiBAY92DIL5gNNAzJzqfbHABlUsab+udnakcVeTbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738613154; c=relaxed/simple;
	bh=tOfKAzua148GlZV81zQN8jrgGS2reHyjymN164KvnYs=;
	h=To:Subject:From:Message-Id:Date; b=Z7hazCi3/fnMYr+kP9VwiB+CJ4rU4ET1y8FwFMlMKH8wUMn1eV9yN9LXilKe1dulwOiAxT7OmXZPH8igu5BrUywARKiNaGPbO05qtSRzz+4ihFoxuw+RwIFq/xyjzcBZecsTtmXJvsRdml+ZT7jzHrxvbJ/JbWi3ozmp/4CVWv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O75hN0le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O75hN0le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00DFC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738613153;
	bh=tOfKAzua148GlZV81zQN8jrgGS2reHyjymN164KvnYs=;
	h=To:Subject:From:Date:From;
	b=O75hN0lehOBUJ1z0zMxAr4D38HdLr6oJWfuoiibInKVNk5oLWKM1S2BhtQZR1GnW6
	 sz4VY2QQCMOrZAc+ok42Kx5JkkdKJpPQ5V158V0QTUN4V3MZK+wJ2a1XwFQM1taFLs
	 oaDui91TU+8p6pagWdJR93hqWDk+oO6okFHT8VUAcJMiYOnM5YSNQuwivNxRjzgkyd
	 IDONBtDOoi2Zt2VrBdKH9NuE7JsAuzjrJm1Y3qLW+6v9RHfycAYpFBZigwJjosU3Yc
	 I4DA1jNd6Zsh7J4KB62t62vQGrq8wSZMLB7g00S5FCNbZAqX1Li1aAgWDCKcoGhhe+
	 GnUKQCqGNnbLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99052C02197
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861315361.20152.10706693592071885397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f577a0066deda0459709d7fc0973c1041a70e12f234d4d76efe06b4e91ae67
Date: Mon, 03 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738613153
