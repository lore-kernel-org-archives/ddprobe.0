Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DF53BB67B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786416037; cv=none; b=lpqcZHJ00mD0Bl+OqIhE4oSZTgFEcrVCyXutamd87wNJR/gKTPTcpRVlrK222DDm8aX0v4A0GnMU/IjZuzy1CkBvoXdDi1OgfXvaPxkK9IDJCAEZFN8XaoEoU5ZN9Sq2eyus4KB8eUCNKqJ1WZa7anZQGeoKbcqp80Rs4CymX+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786416037; c=relaxed/simple;
	bh=4pNqfGtxLoI9i270YyYiJQdmkSHL2TSO8CYcHYtkiMo=;
	h=To:Subject:From:Message-Id:Date; b=sTpywfY2aT2pAXfbDmTfr6tRMYY7nLmwqUXTtUh6Xh7Wjn/DAW12NznMki3AGjHBTmJj+Ij4M70Rvch25jHrkvel7OlPaiYpECJ3+ZSBr2bL6r+VLKc8/Lx1F1fPIWiUatVNnSYsBOTyEGFOVbOR17gYCcZp7G5/zoeJubWX13w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubYJi37d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubYJi37d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D117FC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786416033;
	bh=4pNqfGtxLoI9i270YyYiJQdmkSHL2TSO8CYcHYtkiMo=;
	h=To:Subject:From:Date:From;
	b=ubYJi37dnA68tqUrR096PTUMCcBYp+EzA+VJqjjzkWu56nLUVcaQrqIoKdG/8st+F
	 vwXrUOxmSlO9zDKw8rm52+mdFyta1gU1sBCjlg5AuS7D6pt3WxfFNL76Pcqx91d8VA
	 crUAyy1yLijWWfEeaP4Kr8V4yyAyTpAe0Ur9SZVHxvF+FuoL+uh25u5qpRr7qapwnT
	 VYcU97BRHWiHOvBwUa90DE5tWzVxnp6OhVjjGB4G9cVXw4NZxgbQp7Sr5E77wHJLO+
	 SwhVxhBOUbEZCDaqhGuHjPOUVjreG3t6JvVk2uj1OuWx5WGxU3DrGg/2J4m17AGx3l
	 Ul+qg8g2h2Fig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE8BC5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641603368.3986.14800821545248156360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d4df1af3a9d4bbe858d00826e4f4cdd2069fdfb2b9fd5babeef756e9919fa5
Date: Tue, 11 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786416033
