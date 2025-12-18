Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CD12DEA80
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766086434; cv=none; b=I2hX+oEC9wbrK7HM+Tq6PEs8dYUjOh3zzaH6Cg1fqt77DVSfes0K2mRa2oVV+oXEI7UzWI3ViYW3azuQUMYOon2/wUGTI0deW2SAQ2PxqsMo/UUbt+0oASc9e7YGiObH9lZoJk3IccIthgspxFgnvau5xDsdoBYGeg4aEkLZEkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766086434; c=relaxed/simple;
	bh=77MAVgoz3csJx7atbdQlkYoa9Y9AEGSNYrBwQ+6K+d4=;
	h=To:Subject:From:Message-Id:Date; b=irSml5mRmfcFDiaKuDm+qUJaYdD5+dP5GDzC7J9J9Lyef3fFeIlXra4t74NsSbbDAGrKEJlgJipJeE9FsznRNLvsjTsgZRPQIE9lLw/nOsZUabyeGCU6LSag0zrbeX73b57l8VLjuMmV/JFY5Y9myX1CwcUbUKOZfFbMENHjwqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0gM0GrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0gM0GrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F973C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766086433;
	bh=77MAVgoz3csJx7atbdQlkYoa9Y9AEGSNYrBwQ+6K+d4=;
	h=To:Subject:From:Date:From;
	b=E0gM0GrRersfTGP5XkZV2FsG/gv5Qoh1PDanrmEGlzn0PT1qfv0DLw5pHtPN0Bxly
	 mk56MAusV5PiUx53zXrlfON8YiwJriPQpUbH7HgalqKcj27bZ5tziYMVPcm+JQEOMF
	 dPIvDcPTpC1DUri5ybWH9VaFAwjFkDiAQJTuJfZ2UkZqvzQ3yybiXil13/iaODDpSa
	 oB1u/IdZAzY4BDgasMh0AZxqkv5/INo9jPMD5VAPf8wGOE65J2r/VxJJBuHXFMBQ1z
	 Oif878Zvw9WrFr8iYu6dSCsiEt6xArPpMFY7xHOzD9RD5aBxlsL40FqWu6DzEgVnbS
	 xibSJVLxeye7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D6D6E2DC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608643358.31800.2315380836682057886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c076dba74f9a19e4ccfb0f9ba6e903182e0d54b01c15cffb63c084ccf83844
Date: Thu, 18 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766086433
