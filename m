Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5D1F7569
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777610254; cv=none; b=IJ4l9ETHKBcCx1CWEloBHdIIzpb9XUx7N3ZA0+Gzg7Pjj10fgiqaXV6NXhfni9fQQDJQaNtHusF+oZYN36maHmxT86rzb5ihcYIcH2wkxne7BCxQv/0T2wRfCW9VjkmJSSP7rLE4yT4D1nYQ6M3XcIl7nY8gQtHLpV/dgN49LgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777610254; c=relaxed/simple;
	bh=sqPnfQjlaCWlJ1IXV5HQOl8roUrNMX5jRRHMS/2WJuY=;
	h=To:Subject:From:Message-Id:Date; b=qqyOC4n+4LO8JANK5egubcsxG7Wr0nntd9qmXrHO7P2TxMgZbnUUSX9JDO8DsbxbBso9gM6EJlyYY6LijOWGwZSA9atQvjKaNqgdaS+fCdWOn0AA6HYMMNBoZnmlJ518K5a2xEoJr7+6HS8p+eb6M2xpaTNX6xE6RtZGTck754I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvfKfhrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvfKfhrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65A0C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777610253;
	bh=sqPnfQjlaCWlJ1IXV5HQOl8roUrNMX5jRRHMS/2WJuY=;
	h=To:Subject:From:Date:From;
	b=SvfKfhrXqk5RfRYhlKFh+ej1hA9LpBeKRviz4Tb7COqJzeh00UkW3+WFLw44/jqFK
	 gKdGd+jpGE1voXP258VMCCXgSf9Zht6dVjuGunydJ62tLw3NNxLPGrIZBuUZnAc+aH
	 g0hi89I5VrPBp6TtoBUYBcpgJdLubl882ZQVLURDTYgnS4wl0ndN1xewK2PFUjT6ha
	 bJ7hHhy0WKkA3uhPuPzdZZuaeqI2E6go8424PWFnjsEt2aGmJyHgsQwyI3q8nrTRkS
	 6Sl4pi/omr6qyeOGhGYUeCCKAEH2obLd2PLsTyzyAEQARsv2EhY9/6rxSPWGl+Zwxe
	 W3EVfLKp2b9yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A5FFF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761025369.2233.4186083570495838311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51328b3155b4431c37c742afe6eae2f91961ff66196ba938c89a91f7d4f79658
Date: Fri, 01 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777610253
