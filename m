Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F278194ACF
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732793154; cv=none; b=nFwgO5Fe2GOra8UilY0n5OSlHfqAD4IJT+7h8/2CjDO2BGp9+Ypr/8R35l2cpTFX6wBOcadze9UykuzNeswNt9El0M3QgtFXoWIl10ICYTwVUYtWAuwwkSS1YrcUS2ng27fhVPWEKyiCczf4Y40WSs2jh5XChW10roCijS7A3ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732793154; c=relaxed/simple;
	bh=KihX7UZjAlHad6RKDkAoNlGvwMqnnXr3MOX3O1Siil8=;
	h=To:Subject:From:Message-Id:Date; b=Yt/k5gSXDqvkvb+R0kKbUidLZSyZOA8P65aSa7cDdYFnyCGZd6MCkjanKXV71F9gBIrYpfqqLt8cGm5g3tO5pOAkv9Zn1pvUDh8c7uz7cr4VJmx9rjEzbdAmfQF56Be+ixvD9Wey73jCzIf9pyuuwACeOk24pjhgxrOpR2pF5JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru2i2J1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru2i2J1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D8C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732793153;
	bh=KihX7UZjAlHad6RKDkAoNlGvwMqnnXr3MOX3O1Siil8=;
	h=To:Subject:From:Date:From;
	b=ru2i2J1Jas0zT30ck0w3itZHhW8O7NjVdciPaGVWILAboOXkha6CiniWpz9UYvauE
	 u2Ce50C3KwOmSzIvShb41e/aSogwIutv4tfsoGk54wM4gtY14IfyjVrBACc3+eqqPE
	 11UqKfjoqlTEBbW7dSzq93vdz9v23cFl8tQObhw4DsMzwA3GNo8bgA4o0OdUPyNY5F
	 Y1wldc77DjBxnSzIvAaxRuU9xz9k+t4Bkb8K9JlBcEoXn+vIk/nj1JTPSCAc3Odp4A
	 52SNwJ4Qa4acPCVHi6g+2CpmenqtvKgoTsrLwMX661vm8Zqo97K5zIJHvK3w/Xg3l8
	 /V1RoS9cZYCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9540BD690FA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279315360.2509.5427707733878882577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c372dd5d9d2848b381ce3ffee2892b8106fe3344f4020c62eaaaa4d38c37e626
Date: Thu, 28 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732793153
