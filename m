Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2225C1B4248
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753549194; cv=none; b=e/xOWPqmgQBfW6Xt5PU8/buaNvIVEN2Esx8V+HvivvOmnwvF5znXv37VfKB+EAnyoISG3IlysUhvO4pWpC5ySh2BpV29CCHLzCV7yCm/Gxz+fcb8LnDIoii4sEcXMzm30dcD7g8GPYw22OrzUjUMLz16gX3gu+OgUqOHTEZA2BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753549194; c=relaxed/simple;
	bh=bYWdUKNSDmxFVXKU9IyRkjgqSN873+RlJxmYTME2A3s=;
	h=To:Subject:From:Message-Id:Date; b=cLis1lsX3RSCEbtnYOunvmc+OeCD29K2vvD0Ex+/8zknQr8CCc+qssaoB0fwf1xlLspwsN24TT0ZUaYK7fqatVAfBHd8q8cRG/E6rEyX3NMR52lTpV44k4OKirILQLSHDTWSr7UIZ+R6u43+oXidzoZblRlyxjlgQw7Fct5FVfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5GnVjWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5GnVjWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753549193;
	bh=bYWdUKNSDmxFVXKU9IyRkjgqSN873+RlJxmYTME2A3s=;
	h=To:Subject:From:Date:From;
	b=l5GnVjWsXSvlaGDTrt8Q03sBE+9ss7YFEhPjLt5ZqSTwLAQV5ZLHz1elq4c79EdRA
	 vjZPAs0euP9pxwYUDOQQdF0wIvJuwcrnf81Tc2+06UvwxpcYhkQE3UD1M30ALTWl++
	 M09jB5IKfRCsaX6eIuWIQldhMhQOhw5L/oGcs0B9nAOT6gUJZ+m315k0Jy4sa0EAL9
	 zGGkZ3iiFvrVQbkhqB3s9Ti/ZkLymyKD9rBuKNvhqJsVHAfDXdAq0zXYZOaLNsZ2zA
	 fFEUPn248pg/jP71KqPSGZ+0j0YlMNiMP1uVDuvcYnV+6mdjDtsvJ2TqJQdf/1XS1N
	 +wVQGqiPUaLoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ADFC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354919358.8147.8418932790633246569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a44b9b482e7cbc72fbd66199f8b463214c11d3f787df848df89bc268ae2ab92
Date: Sat, 26 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753549193
