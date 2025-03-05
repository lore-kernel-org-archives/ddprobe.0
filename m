Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF6225335D
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741204134; cv=none; b=ZvkApLNQlxdZksvQuc0XYgQuxxVYBBpIlluk8KKG65YDOZisD7sLvnljg5AqEYYGeY2CeioMU0yVlTZyEQVh0hbRCkmV5RZcokkZgldM7cY3JI0uUw2PuWgwh3RdSjGWXebch8TUPJF1aAthjgx0EQrSnuMXDphvPcuBJXnCWYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741204134; c=relaxed/simple;
	bh=av7Y+J24XsBo9keezFHN/8d7h61AY5kQvLzPzQTG0NE=;
	h=To:Subject:From:Message-Id:Date; b=rhciG2uW4oYSLRDkSV5wONKOXapQC0ZznblUQTH0O5wUiAJv2Y4ai0YHugORSbbTCkTMgiM7rlPEKhOkjAGdVCPEcnim2c55buzpQ859Wu5IiVshdbrq58XcKfwtmVtsrXLoWi2PJH1mVDJTuZC5RJdmM6eWdbSMVbxzDoP2FBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpMIZ5vo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpMIZ5vo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741204133;
	bh=av7Y+J24XsBo9keezFHN/8d7h61AY5kQvLzPzQTG0NE=;
	h=To:Subject:From:Date:From;
	b=TpMIZ5vo195PqIvCRxaMzfEExdsM7zuPeM+TSu6LL6K/eDEiPvO9RGgb0rZE1jrLK
	 FmsIVOPIo3tRjfD9tE/AIIozJZzz0BvU52rt/GZgTPQWFKewjrO60ve260agwCUrMw
	 bQSIwJYVBHYTdeWS7FfIUD4OkvUO0fSTBt5GgVxfeE1tQgDNgeQ7oi4QmgN8ZDZ+z3
	 OAz1TT7goJ8EO1K8naD9It2fKLpB8MLdcY8Hz7CqoSFtxyfBVRzp5fd88kW0d9JUjX
	 T/q/Zsmgd7vATwoFHd1YBdy4a0NNW2+zeG/QBGeqwdpHJPNjUDnkDFiS5fuc+ihtTv
	 HL6zsmgxXogrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C0C282E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120413360.9486.6340347382464518183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5af772f7fa00d3d7742b38947d96f53688b4729200df370a183fd8ddb7fd028
Date: Wed, 05 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741204133
