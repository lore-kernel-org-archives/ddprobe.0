Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F28218651
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722911754; cv=none; b=Tq/QKpbIkCr5Ctf3StmUg7Ej7OWMqogfTAL10apV06Ta+IGWC1/UhFy9vzjq6sNXo1ox69IsbEPju4cGRTUTjef0Dn/co+YITAuCRMobP/3P9zdoXIztWuaohIvd1hUpJoOha74az6oERQZzfPijpHyPJsNoO983OQeZIUHwYlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722911754; c=relaxed/simple;
	bh=K3AMzTtNbZg4oYh0mtg0/KubAaZqZ1Or1iR4AOKr/f8=;
	h=To:Subject:From:Message-Id:Date; b=KJmdSW+Tj0LUonOmGrpkCbmWq330DV+zHyzeFxTCRL3eJmAYUfeiiO7pm/ofgo2yrtU5Nh7pplRENKLErvS9sMhUlNOasCwpRVB0HkKCM3iHOt1f+/GzqOe55u2H/25TkQhYzrcI/ysBYmciRwacrSsryKFm7CpV/tJCiD3EsPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djR7QjEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djR7QjEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF661C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722911753;
	bh=K3AMzTtNbZg4oYh0mtg0/KubAaZqZ1Or1iR4AOKr/f8=;
	h=To:Subject:From:Date:From;
	b=djR7QjEWwXBmAmxKT50pBBX70vcihfAaGLra7RGoJkUe2D6VH8jEaZAnP4jm4SbYz
	 urRBJfZoXqsUPREdAbWR7TQKjFoCpdRPKoybb9daZ4iHBTJ8vlyIJrJznYrxGLHdA4
	 KkP+8rnhBQjS5ivl+RNYnBR5N/SsKBuNekiVGY30nZbHs4Vbll6DXbsnS+O0vsjFCE
	 hlDu6InyKdjLDBWW0vklCId8ong4Vv8e1hKr0svhdacbBUHz6LeRir1iioOhJqtQdx
	 D7XykLQdS3I0BMl8R8VwSkneAEuvh8Iy7VJJAW4j2l3FUtUC62rtisIe/H/Xxl0kJo
	 jm2/uQlUzk+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F2C3DA4A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291175359.28368.5089411115361732752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeb544f943c54933ac67eba2be132209414f61be38376caf8f2c14055cd02f3
Date: Tue, 06 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722911753
