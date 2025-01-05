Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F93849C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736078754; cv=none; b=Y57GhTKn3kzlxri5lDDQqyc8I6+5pzTivOurt0oAdkCRfA4u/NnSCRGNytS0PBOebo2pzs7PWI2ogNOFWr1zUc7gMJscLFL8ezV70+yBRx03H6yQfyKoQjvcEFLn2i1pZEB+RPaXqm2TBLg3yqIsuH02Si1cfNwVX2Y5I7c93IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736078754; c=relaxed/simple;
	bh=gMB/i0iP5FHwRx2c2ABCmfimb6E4doL9KwQSBE1n0zI=;
	h=To:Subject:From:Message-Id:Date; b=nXl+lM6g2fEEzOmxoWuyJkuCM6ZYZMb7/uk7sXpOXG98TR2Bg/I+u9NwF3HfNrlJhqzVNzU71b45yGbGboCIC3aIkkeSzOwLZ38/zqpatdG5aQzR0caA9VdgZagLE+oc11f+eHKN0bC9mhe3PgVHv/3REDEAa/F1CyHFpWWKabY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hluYZnWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hluYZnWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24F76C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736078754;
	bh=gMB/i0iP5FHwRx2c2ABCmfimb6E4doL9KwQSBE1n0zI=;
	h=To:Subject:From:Date:From;
	b=hluYZnWgNMxU8c1yzVD3dN0KbIlLfrz1Lo1Ql1OVPLHUi63Qpk8h6bplOMdCELOV0
	 FpU/ecZrFATZ1s2h0p/v10+wzXzzuh+/wzZSuC5WSZ7yQtYpmWKL90fV33XB+F/hmW
	 5jX8ertq9zJgRge4eaLt+kKKdfHkDIJ4F/JQX0mHuzzSWkBMqT4cmFBFkB2U8a8dZi
	 XUEGyDRRT1jJrNxlXyoe7Kx2NbRvfF7r3DZqRvd3r47nMZf/qeWfTphlQOmfw71iWq
	 LB29+++GabsW+GkqA0nfSxUvTe+DS7WKJJyw60uvlcjfDmDO41/CRl+juov2UHi17d
	 +d/jVtWSHnQZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33A8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607875383.23621.3208374813936950688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46a1d2cb48cb54384ec4b06d68c1edd3af9c9e13df2f680f5537ee8536944e2
Date: Sun, 05 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736078753
