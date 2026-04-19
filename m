Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B252E413
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776602856; cv=none; b=Llpvw1DBok1jjzLutTZH3VTVaul5WL02Yy8oSICHZiY20BwYfZxtcotONpkof/z14/9EdxgDFA7ie6v3yWfny89T2z98MkvVcwT81XWbC84KzM8s03egus6h6fTCcSV5oUx747WEc8L2Z10dgY8H2Gc14I9GJ1dBbUUzE3s23OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776602856; c=relaxed/simple;
	bh=gEnDZJj7J5DzG7miqA8RvItQw2ogLoW3DoioEbF6GoE=;
	h=To:Subject:From:Message-Id:Date; b=AWlQxEvBFEfNFn7oWy1+DKj+K7zdQCRY6+YxDhRnPBSk6GIbMv58ISFxMcs/5oaDs3KBgIcM1iv8JkPlQHCVEl1WBAsiRgU0KyXfdjNTEiRAikUvCZvbmCFsnAh28hbGAJYK4BdxLCpHxRkQlTTz4Jxt8pTnQZA6mlUD2gntLqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkYNSP5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkYNSP5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B3EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776602853;
	bh=gEnDZJj7J5DzG7miqA8RvItQw2ogLoW3DoioEbF6GoE=;
	h=To:Subject:From:Date:From;
	b=XkYNSP5iks9mtI4r5cS/1UA9itI//x5pg1HIuB+D580smU1NF7UM8aEaZOPrdrqMk
	 vOIwjLJ7ZzmMtI/9y/CpeaGjJDTl0KOQkghx6lZ+hC+TnPz+apU/wIYlZgeIvc55FF
	 GdLtKwBncGpFa67EHKEaWyU+hpoqHhuucWfNkTymMhpOwAOBUsVY8niSP2EqML/m8V
	 lmzOvp3r1re+2I2nP2+VZ/1t9N6L3zxpBZ3KRSYaCJp9lzcCOwnZd6zMUmOE7nWbwt
	 HOyTg4h3WufGYkMfyUG82O6npk0vGxYcJTNZFcgDexsf8dArTKOzamo1hjRnVJAxgk
	 o7H5qN/VmaG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F7EA7199
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660285368.22228.5487489050584814312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9729e246aa824abda403c6a6032363823a0f8516693462b01d6af16a945949
Date: Sun, 19 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776602853
