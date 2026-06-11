Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6814C6EED
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781202394; cv=none; b=mTPUzDr+jDev3WUw4VLsDs7njShW5NCjsgUiSSNc5sLxiGzQC95agh4LHY1FiOpoLs6h6HaYSz7dddqoJoLAPo3sTgVKufRQdF672Li4G04w47wFcxDuTYhFY4+40MJ1J2e9DLYsqTXMb4S6nGvD8+KDZsooJ0gWqSc47mQ6J5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781202394; c=relaxed/simple;
	bh=C0+dBZi/Zi1w8j44GIMn0uJ6N0qJTwCmb7112NA5RhM=;
	h=To:Subject:From:Message-Id:Date; b=bGb/NQi6S66TgxYfcbJMp+V0Ps81JJ+ZhvDFWyS24PeTbHLIa6aK7cSxLIdFSL1OcuBTHj2f5ZaEOPIKlN18RgiKgpocFiFCnKZc3v7BENT/BJ20SYA35cByL+/UryvWHEVxjgxmLxEaayuYtV/bdbGITy0OPfUUIz3ndqATefs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeaJd+3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeaJd+3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3EEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781202393;
	bh=C0+dBZi/Zi1w8j44GIMn0uJ6N0qJTwCmb7112NA5RhM=;
	h=To:Subject:From:Date:From;
	b=WeaJd+3A17y8aSv+KMXLxljnFDB8dxQN22/b2iX8BBZjwlBRmWTub4EyIh1O0rzJE
	 qUagbv7vSCr+TI7dO4Twq8XFdWTo7fT6K7Z/Cq4R/FiGulzC9YucEbX6hRxc0q3UqA
	 h1a2XPZIrbzYh4LvsJpbujkhBs/FkBQQ0SYDtwBLGtpdRensq3U31ju1svF/mY8M8Z
	 Z+rOnFSv+Ntte33wV1fvDJE/9KF4boqJOLdYJkQi1k/3FprSVxzWWu4zneDM7jhpDr
	 pE5gUfQPsud9QdLZZWk5iYFihpgAqmxa2pQye2Vf1/vayfQa70uUotxjWJ2Ctf5vpL
	 Lk0Ek7ffcvlhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6010CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120239371.21489.3623642989329665586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ba693f0a462e82e8edcd2d3437e067b582020890efd50d33d15508b8235e64
Date: Thu, 11 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781202393
