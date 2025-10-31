Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615D1190664
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761869994; cv=none; b=bHYdf4VJ7tbWVzD9/+5n9+WQcbi+8J756iwvHNzTlZQh9AQa61qdMZNMp+7wihNM5cl7hE+ZmJyaPor90P/m8iB0SCgeiLUZWruWx44obudq58VicBpKB/WRnD8PNQOeO+xvUnVJsgHQ3B6AA58/bXcvPpNVVqvP+thJHQ9eWe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761869994; c=relaxed/simple;
	bh=Gf90OEl4WU3UZYjTWp8mFRUdK7gT8A41Jl5v3+s/Acw=;
	h=To:Subject:From:Message-Id:Date; b=OdeFCpXKsmuVnnWD0D5ZacgPst8d/VHM70SFYM9FwRo/qqYsFuF9rvZ7wIYZQBk+3DajZUN65/tdihGLM/ER2lqkJ6EH5w9u+2L0+Nt9gZnsd+OMJLo6Y8pUHvEBYaF6KABBhEBW7OHH4ESuRs4v8WkkJN8dFvOUgkcDxqJqyis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/4MzCgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/4MzCgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7993C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761869993;
	bh=Gf90OEl4WU3UZYjTWp8mFRUdK7gT8A41Jl5v3+s/Acw=;
	h=To:Subject:From:Date:From;
	b=F/4MzCgHjwIDHU01VW58fzSa+vyRIMUmfTnkVKHmknarPK27nTNfGrNWGZz0SL2Uf
	 BKdOkNPdciAY7ychpHhPgnJ/agJke7xZnHsqtR1IExtTstgdPU5vLEhDyS2Shx6gjn
	 pxnIpRerm4i1iKXQEuQmWCX3ZToTdL2THHUBPLJVpg8gM0ty3cVzuhD57mhlM7PdLy
	 vwDn5cSajrT5bz/PF7gq6jVEKEJFsmcN5Bfcju1lNcxnJi/600psY6QBnjXL228WGN
	 e/rQ5A4D31lH+vc/Hzr1uuHNfJD4VoiOxHGieehs65nKCkrbrZ4UZtRuZ3FPdssV6X
	 HWSh9ieI5Ll8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5FFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186999367.24280.302376100376860958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cabed40e846668c04b859e6138105c5d5ce9a934081c7c87b5636e951a6b18
Date: Fri, 31 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761869993
