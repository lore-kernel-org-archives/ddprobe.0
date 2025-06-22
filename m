Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5C579F2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750585793; cv=none; b=Ipm1NK8p6y3A24oz0nsDT6BUWvAbrruVW3a0mI5TNeV3UIoaGLAJHKk1fXrC1nlKr0lwpHW5nJM2R17wwASHtuvSIfRi1pdRiPB3I/sI7xuymKGcLW9o9BwcE/cCjUenZlou831opkmgUnEoMTYvPdCkAY0PegAIkyt9uC6QMdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750585793; c=relaxed/simple;
	bh=gBop8/epBC6T5BNBa5e2ztGFGWcJiYjP9ua8ItiVZD4=;
	h=To:Subject:From:Message-Id:Date; b=MzmC/m24r2u59PM1Q7GF0epqqlRgGORaTVgtH5idD7HTFcPgi69d//5I4NM9SJ1im1zmhmOd6i7IS8Qn7z/Yh685grBRLd1vsRkubUl4l5Rs8j+5z8d3PnwzNnbUsCpnkWqHxHdoxRcOCq/BmldXF4pSs2SBE4E2GFQLj4pNF28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmUbhLQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmUbhLQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD10C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750585793;
	bh=gBop8/epBC6T5BNBa5e2ztGFGWcJiYjP9ua8ItiVZD4=;
	h=To:Subject:From:Date:From;
	b=UmUbhLQr4lTY6Ror2Osa0OcMEGkEx5st9IC/lPPNnsJB720Xk03IexEkpl8Ib0rgR
	 iWv7X/4JaSTQI6O56wbvyRoS4PYkp9HdqWVbgxuF7nZcQw/QRQKidFQ2vPnZyhRIWo
	 /2TbLYIZVOai5ELUsUbDIJeCTbfzASZuXIGe3ZMUbNzOldpWoD8LOO2Py4adMVs7gS
	 6ljGhIQ0YhoDJjMXQ3JuNxQowGd9U86z74HsjcfNReGGGBHl65auVIg6nL3agDpiUm
	 1BZx+dFPXf7TkPYDwfy+IMjpwN8bR+DKwzY5ilcrS5YP1F536ajOBGakBHbdjIBTmJ
	 BebsqJz57moYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A21C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058579357.19540.3475850002472971187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a443c7e7b12901ce76f2834c2f64038389b18cf25b84df3e300e55de05950f0d
Date: Sun, 22 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750585793
