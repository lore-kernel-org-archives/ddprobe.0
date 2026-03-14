Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099603242AC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773481494; cv=none; b=nI3hZ9M8K/T6uxMlW7YMsFUPHS5I2k4YuIEoXVTPSIMZ8rN0nIi0ATm5x1z1ycOnxlbhU9b76GnEXFKxeBbthKNp1YqjG6Nlm43BGusfJhQYBkPfioXozigDWI+dQSDHZzmKFXJoBiH+VFdmH3K56qBm7kD1WfKmip+xk/0RhSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773481494; c=relaxed/simple;
	bh=DsqYJhguEeCh9kiQwCHhAVjzruZBU0nwuFefBYBACZM=;
	h=To:Subject:From:Message-Id:Date; b=SFU56s7WIhSdS8wzT9yJJHN1jbF+V/BQ9NwqnSrREWiab3duRY916bfWTKS5afbyBMh7NoPehzKeZJY+h0Dck3jAkPrVF2y+cI58DaEadPA2PF/lRMMe+PVvKiElEf0lMnLq5EM8W9vw2jOsZuP7pxwblu1ewC4DLQkkUu7QzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5x3W7oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5x3W7oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2131C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773481493;
	bh=DsqYJhguEeCh9kiQwCHhAVjzruZBU0nwuFefBYBACZM=;
	h=To:Subject:From:Date:From;
	b=k5x3W7oys8y8CzjURZG4vNX6oPMNxP/uaB/Ey5heLbNty60E+gA73qe+z5flsPuWk
	 JqTfaEk+HtSNbPT6It/pNOt8Y+mGVKCYSa18UzxjJ/pG/aA4k+sU4w+xTsjyCtU+Av
	 Mla+GPoVLRI0SV3BhzeLbz9Qllo6rHQK1jtd0hzIDA8fije8pj9+MK4lfRc+/XQSKM
	 wTfbKZATlk7o+UH2iwnWbISZYkbopb1jCCWW0l63b/EVry9LtFmMUMUeacwmfjYk5t
	 M8zSsWsZnbpw7RebTfG7D9KidE6PLKT80XNDhNkm4jkEO5jchJ6zHPRpq8XabJWxwK
	 llHts391UEqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E9105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348149357.11518.9327818044392964194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766e7677281e07de1b35e61c2e2b936db24a0b03ef39ffc6369ca4f14d10b5ae
Date: Sat, 14 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773481493
