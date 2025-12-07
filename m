Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCE07640E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765104774; cv=none; b=kox8Qpo4DzG3Mqq6BOeJp5AjMR1tXfsrsIx/WPHBWxw0iQ3uCZ/V15i//kf2vEC7RPgDBA/Fa8XsTt6dusQsALXcEi1oQyLEWxMX17ybVo6HkpsDGwOLG5h6XmxIJ11rTi7ZE+hX8BuLWTrxZr/lbwBgOBMgGed1PCJephuP9zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765104774; c=relaxed/simple;
	bh=goTqSFHVKq+4mtuJ7+XNu8mUlbkpbgRc6dVYeVIJh/E=;
	h=To:Subject:From:Message-Id:Date; b=s/vY5VNObCu54Sg0/WDjq5OpxWvYutAyuyQftQd8giJ7Ev+9EYzUQwjorNFEpPVHtQzfhoBbFPtJ6ptna+j/MZ3T/IrXT8JKdX4/EKCijhYkJHh3h7bb+lhuUzLmzCeXzNTvLni3lZqxhkl8aYqXASFASBqQNH6YOBWwfjAs7ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgxGU/ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgxGU/ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC772C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765104773;
	bh=goTqSFHVKq+4mtuJ7+XNu8mUlbkpbgRc6dVYeVIJh/E=;
	h=To:Subject:From:Date:From;
	b=ZgxGU/iggSJN8Qf2yxEGB8MSRjdzRg4yyuMm3dCbX1PxYmmDGrLLsNYjoDghVrbip
	 ZU2O9Adq1vkYjCpLDaYIxFiQZ4bHvM166NvDTXPi49b8J2LHScMU0VIndjUOjHInAq
	 ut3BdKJ/xF9Vve9Kl+71848eWxg2PXdGFYSUyFDaXBFl3AB3x2GSYL5iID191f4l0d
	 sN0WXjDWHq7UuBaUrCHlaaKkKtIZOv1sA+Y0sTml89MiQGQ6qsDSvqoqJsIVE0qU6u
	 dD53J+meVpsMVPSysbbXBwrOzn/N4yLdejOEW0uetbjV3eKhD02dbfQfqwdKi6a2Od
	 RFqegZ3Vg6Bcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F0D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510477358.24282.16647360754623775510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ab4a5968dc99ed023e036dd3b43b35abb2ada9a90b7cb166706d257426e371
Date: Sun, 07 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765104773
