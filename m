Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA0718EB0
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743892194; cv=none; b=iaqPu0ZR59xjHww28+FnoyHWMtL1zH1Exi8lbv6D9btKI1BlAF+/+Ru3pT4Z72aSlkM3Y7XzyrMwC4dbGqeb0clxVvcqYJZJl5FothYZi1RFGulGbGojyM9ol8ZNBppn1+fQjJO+HeHaXCyA37ueZ9vor1XFGC24HGOcsXRk6+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743892194; c=relaxed/simple;
	bh=W0QoI5jxghdbIPynTcn4nbpDE78TJLEO5732Al+mnL0=;
	h=To:Subject:From:Message-Id:Date; b=GEDucgolR5OtDQw6zi18hyfBBoMXcmJjwOsKgP7q0nGYSZx5QuoZ6QF0FcTtNelHvm5lTduP84ETdOZy6tjJT6w+f6XiedhkhyGmpsQdXdKQJmScfXz1cu/YH6PFKDGpdKfpAykKLHY/NOiYbieiRUX3i0Ie8yV+aRfFsxFPyOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAkO7Aad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAkO7Aad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8520C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743892193;
	bh=W0QoI5jxghdbIPynTcn4nbpDE78TJLEO5732Al+mnL0=;
	h=To:Subject:From:Date:From;
	b=qAkO7Aad0Oy2pWBwtTgY93nEAO6MZtGOpFyXKU2aOKgi6BgFgTCf3WboQ2g/0gGzx
	 9cvPuhFHqxFuiaSRgI81TV/FI5C6vYaREB1U4rVOdKg96g2KOJFn/pccSFFHF09ve/
	 mcOMTt355OiY6znUbq8v/eDJ+XC5xzi6KWcCud1h1026pJgdN3PhsjqYnm97fUdzIe
	 xw90OGfFtDOAd307JTEZgwwnFn7zB+23m/NqKt3JOm02QiIcyVdZRdDDyiqysdMVQX
	 HCDPDLMcwT4WCjqPv3ezlNCTd4ZK+CH1bbKXPv2F2jCkMBzEAWyfBVNXdDp+sXkHH3
	 aFbb2EF1FXYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B5DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389219363.3343.6886290689556659112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78fea9cf88607f2426fbfa88b76fbea11782af98790e973e4e0ed7612b48677
Date: Sat, 05 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743892193
