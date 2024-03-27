Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53B72232B
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711507097; cv=none; b=AL1biTbHpvNL+OEQxM5LIFn6fmJ0XUGJUL4dT5ykcpw74KsULiEcfG6tXUl30cSPCgCgoVZBe7Dn+cBqcW5ooECXwEVsmLG8xK2sIQkxOT91FRB3joS4kNxMkbruP5d8HXUBOYYyAqIhP7sQ6C4jNGSREhnjY9dSvlofh/yyPds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711507097; c=relaxed/simple;
	bh=kO3e734o8ssVXEsFjHCDEqUvUpXeDVihIZzYT+LFJNs=;
	h=To:Subject:From:Message-Id:Date; b=GOtn8jL3E6dn1KQRQNpVyTkh21K1vNQpFw0nFwrU1n7nqukgWCMVd9bjNNWic2kV19TIdGLjfUWKKVBLr6JA3iaNhelF177BfFIBiYfowqwbjwceSpUHlHUkMDNPmLlOlzoebvqoYCMLVKY/FDn5mvymHTJpgQscAI27KEubiig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kq/zCdqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq/zCdqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767A8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711507096;
	bh=kO3e734o8ssVXEsFjHCDEqUvUpXeDVihIZzYT+LFJNs=;
	h=To:Subject:From:Date:From;
	b=Kq/zCdqUvV7FAWivsLog53OSZdgpmI+U0LSyItPgELZYGeSfQJH8euUb7cKWZ4hYs
	 IqPYpnJ7YSsXcsdGaf+vjn077XrIYOmIIVVdwk8OxhDoD2BoYmqZy2DMyyvahHkMC4
	 llOrqYH2o3GnLeeoyxEWjSzNm4O74DQFb1gOeHK4zIM9fGjXDgFa9W9wmqalNBmAbA
	 VD7ilOka8SGpDxecB0h1W9J2MJbCGIDp8z9suMPDCgc539GykqIgcJ/4Qx7mInjaZV
	 q7tUlC/wGzgS4yKI3JGvGCVjTINUPKLG3wW3/Scclnt58zVfaLql7mdSZljB53FKse
	 7K+kEUKxJdSFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64737CD11DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171150709637.21290.14506464097797008085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f983fc577b7dcc90e5bb7d6e4686a747010cef1f642f3ca9fc17f716d3a84
Date: Wed, 27 Mar 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711507096
