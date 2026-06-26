Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867053911CA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782470254; cv=none; b=ilIlkCOpAblet808F2/j+Lr3kF72kcNVyEEP0xCRBr47bH4NQ0168eHjUukAd3F4qv3FnC0mKkxOxIHNgM5y/McLXjwuxAag7rmj4aJE22fmHfjaOBcWc9A3B36Fg0WCDK+eZ5gOa2UzGJLWPbZJzQ8euEvO1LzINvhNpWdJ+Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782470254; c=relaxed/simple;
	bh=f2VgomH2jVB6P6y66oTRufEiBZyqmekdBR+01nAP/uQ=;
	h=To:Subject:From:Message-Id:Date; b=sjqVroyREXosemTCyVi3PXDehiTac9dBnC03rOCYryoBxwpy17DwGxP90WHEkWzPR7yMUbSjzfo+AfpKIWN5lipOYoctDmdrnv7tlw7TPfIbZfsGioNypCrsIOx44HmlkzOgV6wm/DleA9aoBcEgc0Ek9Mc/l20FHNzpXHzMd9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awxw7EJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awxw7EJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7ABC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782470253;
	bh=f2VgomH2jVB6P6y66oTRufEiBZyqmekdBR+01nAP/uQ=;
	h=To:Subject:From:Date:From;
	b=awxw7EJkw3qUY0Q/BNdM6eeV7iF8J3XwW3fIHGXD8nDjF9BtIH55NK/mrztGDNJ4Y
	 RVcFVJWDYXhUHfDjvMSOL7/72qx0djURTmjKM9XnStXrjDrOdL2GRC6dyoxkd4lSNS
	 WkzSvh58WB6Yj/MZ1rTyMDRPfXf0mqJ8st1hk2o+P68jQOXDH5NUQdxVZVI2Eyey0Q
	 L74ckOfIYwsu0nC8xyJSd39ZNhd7qasR/GIM1j6eSYEptjg4itvsDcMaJqpZbLJIEU
	 /0NR8kHG4lJFigkFyUGq0kMdoB1WLn0EwanKWM3NqZC5lw8I/4sH1ivSGQnYdTxJOn
	 w8qAiBlJP7LKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC7CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247025369.12754.369882468247323051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b94e836865e37122c62d4849bde96ca30ecc62047024327feb8d81441833850
Date: Fri, 26 Jun 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782470253
