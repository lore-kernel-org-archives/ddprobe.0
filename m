Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B72359F8C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860635; cv=none; b=eI30XNqECEX+LI4EoVdcHE3C99gkqiuweLFEa1wVneKD69iYUUtXoQYHeybp0HfnZaaqx31lb0WdIsKZOhSQQcaXPWY0yGnaN0+Qj2DCvSKj7p6f6FJdd9QV2j5aMMaXSgXzGufpPiNuyiUxAl9c71eQIK6UTRLsywp2DGgHGLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860635; c=relaxed/simple;
	bh=lS4U10F5WWAvNtnvixKdQz6n7N2YZw3kEoX4dIbLiz4=;
	h=To:Subject:From:Message-Id:Date; b=Z4QSIkoKPBLirZBahA1SxTtwf5p0qJKdG8a8WSBRPI7mSxEAGIDIJ0NOcsTeYIi+ll+tzTCi7ne42qJWmqA2Mvyw8wTfnjyCoPXFzWiAhkJ9OfsD7GNXdZQshUpEeK1g7xBI9087GPtlHE/IEUQjKr9R6BY53xp6khsIXRcsCj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXB7hizx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXB7hizx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE59C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767860633;
	bh=lS4U10F5WWAvNtnvixKdQz6n7N2YZw3kEoX4dIbLiz4=;
	h=To:Subject:From:Date:From;
	b=JXB7hizxg2ycVBTMfZI4iPaD73xZWZnXCM4ntgValooKO0yN+Hp1J+sTvlI6/392i
	 AuXwlYDrZLYey2KFWlLq6cnFwSl/l5PB+P9rSZyJ0u/X1LDEF9xB4EY4qrcPPDkNOF
	 grizFs7fbg3kSM74es1SFKDFkBSPvIURai8TZxAd4GGv6A+DBgAKJ3Pqb/SB6TCdHM
	 eK7KLq7AklXGpKhyz3xj0XXqIwPX+FwFULEFtgdKFG/fs5OgiVWi7e4oGqRnFfu1Gk
	 ASGwIXaXc4QzIsz7+hyIMjZOkJ/vI3i1GEeovk4Uys2/SJh16qiBKLWKiMd+ipu7B/
	 4dMc0h4G00KiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F034CFD635
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786063357.19989.3398024941786815911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4d5e5b56f48e01a3cdadfc07b007dfec9996d23a551b698d5beb1ee78d32ba
Date: Thu, 08 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767860633
