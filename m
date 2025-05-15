Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561341A2396
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747352394; cv=none; b=NDEvbeXBoT07LkFAN5ADMr77iVeG5u9pAL+Px8dcxdk1XRjZwHB+pCKgXOau4X88ZOV5c5oK7wZBO+N1zAb2xTknTTcWRneDnjwiKjkTkYSQgkXgmJsc5kPMjEkh/2LrO4FW5COkPwdmJewmOnJGxsn/bKjvrzO2R24mY49LaEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747352394; c=relaxed/simple;
	bh=+RSB9B0mEU8uponxZ0fdSNqgP9gipdW7U3riVF4ycbg=;
	h=To:Subject:From:Message-Id:Date; b=WcNtf0z9FkiE3Zh1Rz8MmKjPy2rAGR8AUSLaiaUkfraldpJ2Oeoa0tkNmstqimIevuBZjd2P2wkQPsDn5C4H4QCZumhP+rhQPU1RKs9R4g9ND13Xdn4qPGdcS5UGUdWQDlKpNXHvkJd4VxYEVJttpabReL6GfPed9sjaaFOUpA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C34muZh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C34muZh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747352393;
	bh=+RSB9B0mEU8uponxZ0fdSNqgP9gipdW7U3riVF4ycbg=;
	h=To:Subject:From:Date:From;
	b=C34muZh8GqQblMcF9I7oPhOPC3ZxuEzZvf6kG/eTY41C5795PCHqXptlPSiwpmWe8
	 P6sD70phTXqU6gQQSBei0+QyjwBjp9mQ8VT9nruVPLgWyNstkrDdufxGv6eO71aQcr
	 aJD3GPIOrZhJCf85YUGTceYh+8ZN9DNfduX1yix3B2EwvmPWh6BSjPJmOuh4dk+lx+
	 UsRtcERolhgFbKS5Dmu3a80pCtw0GBGZ3x/d4RTU2vwuYCdIeXBHoqfIAAqLcu7vri
	 QlkK7KY+8cXNFANnFOIGDIVdENLCuAmQ6sER+jD0k+F3Frjjq2Bhbpy0OJRTYN3Uyt
	 0R54PWu3NZuiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735239358.23999.15384591148592669163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73cb68715f32720272f73fc7ba3d6aadd7ed67b1c779eefaa1a68c912aaea94f
Date: Thu, 15 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747352393
