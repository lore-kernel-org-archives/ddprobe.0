Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3322DA0C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754600394; cv=none; b=XZM6QF8g8OW8Xg5q7YJFQSrL5SxDXDduMKqm5pmP4iLwHP67+1h8hH02frMg5ukpHJPQwE8K3JXAGBvkuoLD9zDmR8V1s+xpH+mfqWeoH3W0/1hftjASeV/WznYLn2ncPr+niZMClmGPtzEJdDwf5dGDqLKzppHNbNa835VO9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754600394; c=relaxed/simple;
	bh=RIn2EDmlBvZm1QetlIBy9mig567JC2ing8StbeW5H4w=;
	h=To:Subject:From:Message-Id:Date; b=pB5AH+hGHBZ7vRt4XCn6g0JCRqQI1XXI6NfrQWoDwTcdTkVctT7MhulQLaLmukpSPHMKr9wg886lwKNGg/vBywzegVqYbGyxlic6WgcB+lDub0Rvbvh/V3oDBIWl+C/Xgqc1W0GL5JRmw6KpElN4A9fuw2dBPI368ZaBIumO/uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWgGWEWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWgGWEWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754600393;
	bh=RIn2EDmlBvZm1QetlIBy9mig567JC2ing8StbeW5H4w=;
	h=To:Subject:From:Date:From;
	b=YWgGWEWZ/A53QLvZGKqRRBmkTFG+Qd6+MPdqdxrTmZk8qqjoDqR9ArGhspndLx7lV
	 c63rQF/GTaJa8iWWEJWQ732xo9dGeLuRNEixQoT2u8N3xsps3jHpn0joOTfefxU1IC
	 44QDvPgy2e2o+Om7QHLc7D78icTCsoaj7fvGzPKf9uGClSkRP0QIbdO8T4jpEXqRdg
	 3VzfG04UndOvp31HHoWzgCHhzOSxxrg6F9uclVm4O08m7gHvPNraSZbRjtLqAIuFWz
	 4z8AH2aqCXXAcnq2gc4s1NgugB9tqlC1+2kfFwPiGeCb5LNsz41RnuwX9+JgTHxqQd
	 nSP/rp5MphGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC7C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460039357.19967.12930502333102469589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b09b51c7902b388fbaa8b67abba2afecc3db967cc1108d97baf5a1031d28ec
Date: Thu, 07 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754600393
