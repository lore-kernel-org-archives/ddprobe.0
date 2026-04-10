Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D663DFC92
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775860654; cv=none; b=Q34PukKvFNpyHCM5ifvfmSo9LQRfbYHxIcaM0DSHPxfaqMTeuU075E6zsyVqs49/c9FYe5/xEgRHRsVC6mNLw4sHMmpzdB8gqusy3OW3qT0h4/fNx+MPsDQeZLkzQ29g06x49VAqM4NboAQDJ4LnfkoFT8u2z8beyYIMJHyu8WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775860654; c=relaxed/simple;
	bh=NeebxSnjcuhvQyhwXHpvveJ7mE444V5mwOHYOQGSL2s=;
	h=To:Subject:From:Message-Id:Date; b=iG0qI0evUMHhu7tC40vrbCnYGzf23CdIg6g2VYP877B1RuZW4MnUcSaR3RWuPMJ+Gt7ZQb0NqIr3TijDrhSAYt/ZHINDks841ZCu03nVlWWutleI4aL+itRxeVOEcFQQHbdZBEoi9ZVBsmx5jno2fQBlnD36Q850Zm/vk/PwJrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL9gWqTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL9gWqTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0227C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775860653;
	bh=NeebxSnjcuhvQyhwXHpvveJ7mE444V5mwOHYOQGSL2s=;
	h=To:Subject:From:Date:From;
	b=VL9gWqTWAuJekyFgUp8/hPsUypOBkVFe9t3YUMCaazR2LeMbdTXQWvxSYcdptyN5c
	 GjyBeMW24xw0MvJ8+myDXV1keUbmlNqGIA4jk85rP0X4vJ2u1Sje0FJY92EOP4yiWz
	 5uMAaEKTv2oJElxrYp44PbvBwMwvTFK90X/TnJEggD2YJLkJI/zyWZLfhxh9ZHll/K
	 NImmce/i4e2uhbRT3I/BGv48ctK+DmWw2c6m6IaUIAqV/CYk5HOIJGTA4qGQauLYvD
	 3Ygk+OmOGy879G8CBSutF/rOir1xGdhyZXvhlz56Jln4ZmgcljFxFIcgQdYfkg5W0X
	 9tTfH4AecBJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE11CF45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586065368.9380.17652950869343306700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaad83e3dbb23ea35cf98ab0f0f39e261ff7884f6b1c92639eea51ad8ca077d
Date: Fri, 10 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775860653
