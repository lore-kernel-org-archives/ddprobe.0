Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D545356751
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789713034; cv=none; b=R1T/I6FffnLcLX0WFPu1TkW2RhTRV4C8Zag5hMbmYeFbzNVLF2gujE467VAE9/vQQzTraiqhrd8PkRngJnesPlKVkA4mr+cfitvrAnNWM/LXQjTVQ6L55EYeOhocxjnpVRems754Od7YfKqbHsWfZhGaJQiESTcISFL5K7uiCcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789713034; c=relaxed/simple;
	bh=dCbASAtPmYrP3lBAqehWpEeDv1zGM0jUsx9qPRzLQUY=;
	h=To:Subject:From:Message-Id:Date; b=OVtHMzCgRqR+X8LTw8GUZgBcC05u1az6KU3NnlOQxUZtRFv/mHGt78dZtHBqVZpRqNIGqk1UVMQAWd4AmgGH+44qyRBo54ti7N2sH6l0JI7Rywi+hI4P/Gdi1IV5EInN53bmMoRYz2kmuSwD1zK6YuW1wxtawYVFNhAmlPioroA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqpzed8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqpzed8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4F5C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789713033;
	bh=dCbASAtPmYrP3lBAqehWpEeDv1zGM0jUsx9qPRzLQUY=;
	h=To:Subject:From:Date:From;
	b=sqpzed8FtuBdd2R6UMCAe+mjuKZJ6NP5B5v9dfE8cF9cyh7n0GYV7wk6eH58zoauA
	 m9oMnlhpxXWmBrwQRAhryPGqiVXmM2s8VEAoWGolyvlQXrr6jptz0cIDyJWqF9vhAy
	 FsE7YClfWhsDXTUpNNvNM3acoIzgwdDCuYLSv7muXttI986BqBNk+b8wEKdTO8HTLp
	 kCLHzJMzVDfvOA6Fikw4CPcBLvYQvpbv/ZVPg05pAFgBrs8E37j2ZpqJwRVV2WQAN7
	 limm2/ELOM2D1Te5KXIEq3d9ASnubexrjGpyNW0BNrH6r3nCuo1KXRo6H8QfBgNmS/
	 BwA1bUvKHN3ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8AEC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971303369.10723.9132545222932146238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19775d4f83176fe3e92af90c378460518641f2fb5f3178ab105bcd588b8f993c
Date: Fri, 18 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789713033
