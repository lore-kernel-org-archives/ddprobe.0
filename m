Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4571FAC42
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766281434; cv=none; b=pMhAuQ+fjxlLfF1UODH0C+2lG4dxYY3FAN+ylHfegHBydeAMioC7hjpUFlO3S3lqZYgTQ625CIlNzb04wmFUqoN3l7BddrN+S90qWGGoNpOEbC0h7Y85AWEyRNJn7mhnXtaG6gXHVefHpCI2820m6ThVklGoqG038vvBl1WuhnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766281434; c=relaxed/simple;
	bh=dL74Cd3qvo/Zv1wd5S7n2cf5H8sAyrELVh6a2H+yb0Y=;
	h=To:Subject:From:Message-Id:Date; b=prFEVoX4qpGcIYz0zaN/dNofWUwO+6ETuY+mJqETb3ycB3ywe/Xv5xisfgNx1FFlU1H/zGBuj3YmyObg+2D9+2/nyINCExPdjTEjmRbsLJVPeYiPTGCuW2QQf3CL9VxcPWonN+x1wufzJ5ixB+1qu7HFOPlRgQvxkDaOXSoGheM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyGZ5JNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyGZ5JNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96F6C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766281433;
	bh=dL74Cd3qvo/Zv1wd5S7n2cf5H8sAyrELVh6a2H+yb0Y=;
	h=To:Subject:From:Date:From;
	b=WyGZ5JNTrX3VzULRBqz+w25UrllgO3ksdZHwzRnkdJokE+NS9Gh9UJNVJnztrTmxd
	 i3a20qjx1KbSrQPe7kPcjz3ZST5VbH/AulXD71TAEaJkm1kxR7vLMxYfxJD+qSrVHP
	 TMlDyWqEG74+BnLbpEOnjBdycTkV/qRatmipI2gI8391mG7oU1PdlrnjjYeGIkrDC1
	 2+4atGMhLm/nc0wlTLI44Sf4BeMClU4+9xSpksNxlh1dGP270MLlqfw1fZcnxInovH
	 LjhLSwU9DnwwVZ6We1XSqZbKEH8rk01ZSr9u3nXWTzZIu0YopnKBaL0UA0UhZw3eGV
	 fVV+SMZfLjLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9896EE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628143358.23000.7901442660955944235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054e7a809f7b477d23d12a4bc7ca11a0a4057a2256cd1097ba60a0b09317909f
Date: Sun, 21 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766281433
