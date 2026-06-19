Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5399731D72E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781832394; cv=none; b=Ir8t0H6/vaHDtnNjW1R+UsxBX974on4+b1EYpcZEO7KNotAnaCX10FWYdG1B3h7vLNYdy4C/O0TxM2SIt3vCnpTMDi418LLiZSbM3RSn9modB9uZjXE5iGH0+lYzIA+q1IDoYtYwQ7ccXHAZz0gsP2QCj75nZYOuNYSx3+n1K0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781832394; c=relaxed/simple;
	bh=cFRjG4a3DoA38aIG23tMyQzfD0ty61lE+ki37hB2eZ8=;
	h=To:Subject:From:Message-Id:Date; b=bQ6Azt4BNQtE75jif0wcBoNKCuDPHeKWaKBSSGEpSm3RaoBXRHpBC4bIcwj/xDIpqaIUW9KLPu5ZUB8Zll6lbAb2ww4fxVRtxa4IdaMgp0b9NtQu25BKrmUwabRRj6OZW9T5hmNzcvP1kHEB18u66QLYiQ+TRUcFPznwzvpxHV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVVWKNNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVVWKNNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC8AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781832393;
	bh=cFRjG4a3DoA38aIG23tMyQzfD0ty61lE+ki37hB2eZ8=;
	h=To:Subject:From:Date:From;
	b=VVVWKNNCDwHWGTAnjgXK9VavDNo2gS1e4TMyW5SnJNFF7wn1B3XrJcjgBbgMpul+n
	 EoQ5Wj/2IP7yc2/tvKeMrEVAyUCrS6G3M0fRqJwvYCfbFinZ0yq0Ud/FFyR3KU4IMA
	 r9ufCh+oN8yf6/HDCZJ7gRpnsNXUZA3rdG+PT8lI9nTxb+pii9CDLawK0ahLkogmK6
	 lQE9oU5IGcJP5jwErb6nF9ld/GcRMsNmOhFPwe4OcjOcDT7XPZdgsHfVE7MhaScj7o
	 RESvBHpn4dUFyN048/aeMalVutZ1bB9/GeCLfNkGSIwWWbjJADiOKOOqPikYPpCVB3
	 w+jwivcRYkTGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2ADCD98F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183239371.16264.17264704333006180595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4afb00e9b6478e20a29a1c37f50c5042672f44400328a5f333812ebc2ec2e7
Date: Fri, 19 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781832393
