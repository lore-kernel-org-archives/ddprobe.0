Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226402C0307
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775497534; cv=none; b=OTb0L545QqnMXrIHy1FPgZV9ORtsSLFxYrAXItapjdHMQeQTLho30JNq95BjEfK4HADyYPHeUnpKwCIbLYw6+AQhMACnncgPi2dDNggHYTUu0xtYMcfYeZ4lXgCUUZjog1mRl6ZNRcnxTgcDcJJHmYupoCLsIFXjVTXYR39HvLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775497534; c=relaxed/simple;
	bh=r3kqMT4tV9XDzQrsUpHM5etuPoJ5Nbf42DHSBFys644=;
	h=To:Subject:From:Message-Id:Date; b=D0XPmWcKN+bX49bivBoYwJ4Dqcawe0BLvPPvz2+vNVGEcy0z/Pxif09tEg2CBUfh2jN6myTRpXlFzuVPpWydoJoDZLQFDzgzLdVy6hNocji+AI3RXVCp21zcXeh+BaUaWeheaJZ1YDlm9bT+3cHFTh1zNcxPwUKwZ2xxSKh5UTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqhHzBq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqhHzBq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB8AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775497533;
	bh=r3kqMT4tV9XDzQrsUpHM5etuPoJ5Nbf42DHSBFys644=;
	h=To:Subject:From:Date:From;
	b=sqhHzBq8ElbHtwofQJJEKJwvdROtPDr8u5MqWMk2Hjx2NXRMNkAD0GAxdeuciq2jQ
	 B0QrSukkOSb2bMD+fsh1Bs4q8v4H4xpwFLETT6H6ihvT1D/TnVxWEO9O1bUXDpQX7Z
	 yaaIJe11Y0pC9nCVM3HbxR3ji0aY/NUAAFJ85Yozl55jYoKCAtH4xGGEFu1bGcFDdw
	 n5Gk+LS8BdMar3QzT9pywMMjQznorHZclh9fCz+ai89PjdajjvXK1r6BqwJ3qrVzFS
	 1BO/70mtZOcUxZUHBAAjK29XVJMQqkVdbHVlIzhOzI8RxyTZtyaPBkklvTpEA71t8d
	 ra+eMnJVmFk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB78AF46C62
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549753369.5594.15649613920571484733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64d3f57bba01b7994868d5074fcad840587b76e5067d69d6866c6fd46061257
Date: Mon, 06 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775497533
