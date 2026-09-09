Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4CC1347BD7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788951634; cv=none; b=TJV70G/bMLYMbvQhONfFx9mEB+eZpF54ouuB/rJgm8s/S9GwhLyilsfEZXqhqY4QKPvVvk/HM847YO548LDIus3YR7tPIAroVNLcAQcb9VqRSyoweXzdTn6DLqK0kEp4EK4TZIbuQ2E0E4ZlkSEZzH7p5pmAKmVD4f1FimtSgYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788951634; c=relaxed/simple;
	bh=VI3qBRI4xxNrqwDZdL7ESVdObDgK85pGpRMya5Gt+Ew=;
	h=To:Subject:From:Message-Id:Date; b=KxZTiPTlZTOEc5vf+lREdPLCYVcdnRCwFN/W4HWw7nUGSYxsQfVP1NbiVHudjkAa4FViGviJRDaqxjRU1KmyE7keaLKiTJp0UxzdMDb2Rsg9YFYFGOJYPVkZhZEv9ODMdvCm4WXiOM7MHvmzHjT3Wv8CaA+44+UCpuvZQUtI3Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjDq/4+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjDq/4+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD38C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788951633;
	bh=VI3qBRI4xxNrqwDZdL7ESVdObDgK85pGpRMya5Gt+Ew=;
	h=To:Subject:From:Date:From;
	b=jjDq/4+kXHNdHmExe5fgTwxO+JdugPKF0PG0NNeCC8XQPtH1953SY7cMRUtFZpe2j
	 U84Ea18fI2faQgJs8xlinAc5EwoMj9imzk3RTrXI3QYSARHP8l8OkWwWCPNm6tprut
	 ZKPbifr45RMGtpO76GqAssaUG1P39+mVRKFL6gABU1uj9NM1EwqA2IEOHK+ZPTmMIc
	 JC43S6ulkGj69gJV/XoLShKePxo+QVcIDVy+Kbz+OVB29WHICgwv8vXcmTlIN4tbBS
	 KDy6nJkqWcLHDbDJ6mSKg5HUpG4qDtQfJq6XyR0lV+2L8By7p7SZeqkzv10Z2qbTlQ
	 KjuEEhWgqK9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB6C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895163370.26491.1993619301959638737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9e8debd8b75fabdf1cd2d2645fb608ac98532c9cfd4fbe790d4219177c57e0
Date: Wed, 09 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788951633
