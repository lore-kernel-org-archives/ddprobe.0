Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F273D40DFA2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774743894; cv=none; b=QQacJQQP00ey9pNtSmloy8M8UqZD7EHH4URoEH/MSoITah2GOzMVms+HpQ9ohJAVpMiSnQ4/9DUPVIUhabd0soFEb+PIQyOvHuHuX3njwHbddUJXXiA/quMdmrzoLKmJjwm/FnnftiUdHLSFM02BcKQdWBAbz8kLCW7hynoP7O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774743894; c=relaxed/simple;
	bh=7pQI0QMVzVh0UZIkFhu0YunRo/ymNV+VwaZvDkofw2U=;
	h=To:Subject:From:Message-Id:Date; b=uvRCpA9yTSmgq+lgPuU9Tz26JMx5BWB8KW3Wpa6CPEPWTL8eJFo32V6wA+K4DiFSTVepyR/tLdC87vnTMBDMe7L6YF8RqrwwI2FQcgHr8y5yzZqIR9MW8VjAEZ75TMaT6Fl99399tZEaOhs6eYgH3uGnYhYJ1DTig40mCUPMY+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqJOlKyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqJOlKyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8607C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774743893;
	bh=7pQI0QMVzVh0UZIkFhu0YunRo/ymNV+VwaZvDkofw2U=;
	h=To:Subject:From:Date:From;
	b=oqJOlKyl3ev7TiKBuKjOKyMSgLgxafr42id8NQXpiGSp9OJQyzaR1SAk7ipPEzZXR
	 P57mj0WD6evE5OOO9ofrK4pUapiSvZ0oEXteedJBtwPWdMObh5Tzm9hVFTYURWFJ7z
	 wMHg5QXG82GNbPy+XgSOHQYli65tsf+bj5zGyk8+EbpZDTrD8XMPrWhDsQ1ZmwC79S
	 sawS7H0tmIrgihyrxXr+JM76FfuBTd2pgsf/WFfx2eMTvwCdhN4Z2BcUCU+6akdrXx
	 bOi0lj7q3MIW1NICvsHB2K3jw6362q1ktd2IONe9Kw6PLx66ESZAesdDIVeRJXSE8J
	 YQpW0wbOsmPDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCB10D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474389358.24713.13376315619425691359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30922b2aa4f540889017406cd8cbc94beb339d63825dc76302468a16e051efa
Date: Sun, 29 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774743893
