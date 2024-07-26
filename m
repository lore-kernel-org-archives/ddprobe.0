Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8A24205
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722021354; cv=none; b=jM6fKJL4M5euUZtDYCPIa8gybyRfwdbCfKcwUohDIqFA8/nl0COv9D02KScpE/J9gsMSO1uKM9bU8vuCWSH8AJDcr83HThBaCGV8WGmWrzSACmITDfwzRU+VKi5p3444yWXCbewE46mQVbpT8EGERuB6YmG/jreDVS5t4PUa7D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722021354; c=relaxed/simple;
	bh=oG7bwWGROZqwh8AsWHAK1PdMH6/TvjeQXCWhaMIC0XI=;
	h=To:Subject:From:Message-Id:Date; b=GNHtXdGdWUwtNFwW3XRYPJUwn2uLnMHDLghqxjrRmmLpar7LRJp5dTUGsbcFrSzX1jmt0Vz7demF6NFdwCqukn9OqttpoZzajRcr0YIoenS7OFutD0fjOHDqz+j+9u71BdJjmGxLRjIrfX8mClULW/0u4qSV+IlQgIFwKMkzHJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy6lKNOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy6lKNOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD63C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722021353;
	bh=oG7bwWGROZqwh8AsWHAK1PdMH6/TvjeQXCWhaMIC0XI=;
	h=To:Subject:From:Date:From;
	b=oy6lKNOFRxZtuJmICnYKOibADaC6pOZsYPa0+/LcRqqXD79VBgUtXihxg7FILpR2l
	 MpYxaPACLbUaZzwk74d9f871RQwUm4fglfTcJpeKcMOx7tZbXdY5ejaAgIeb2OMkHr
	 nvoR9E1rjt2axyfll1Bpoxqoe/Fy5awMJL0QzykC+/wF5SzLz3+l021o80haLU2Cfs
	 smQQv4pWZNVxkvlfN+z9OM/WNX+l/oMr8Ek/q9pjXerAwODRYqi5iBTa7lqMK4bDRH
	 3DHKQ9VZuLewZUn+P82ZEeuHEXW+TfGm4la6dKI6Pd16pqMNQlZox73g8H6lgoPRtg
	 665O8kVnbwDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B18C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202135358.13492.109617487249955403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce70c85371a68add2c80c9c48c2db367ba5adb85a3f8feb4d96f54144a81a525
Date: Fri, 26 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722021353
