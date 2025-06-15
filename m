Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE7D7E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750031994; cv=none; b=MHL3wKOcHkeleSFK97KcIiDtzl3mIIGLcoGHuJjzFO6LzPPRZFFb2EBfGhRgHqxzB3GpT9HCPM8OWXQUvNDeI9iiV0aGywY9IIBcESBHxdn5KyNqkZR35f8K7M9jyj9DcVm7gkJIVMes6n1s5NUg9hkeZdr8WX/c/lp41x10TR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750031994; c=relaxed/simple;
	bh=kuPpjKbI/dGz7ppolILy9wuPI5gynV9uhSNuIexSNcI=;
	h=To:Subject:From:Message-Id:Date; b=rewxA+iK1FVHaPQrZQgBxdmcTHVnVe799eyOccJsOTPBfwfltad+cfQMQ8GqqEj4ahmMZlbvUogE3uUGMmEr8ooyxpGsNW4cZWWGPnMwBxySY/QlQB+LnsVUaTbvZODW67Lbv9gOrLWLJDFkKvvD89pnqYUJ+j4TT9lKqqU9ONA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXF2r8VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXF2r8VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE6EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750031993;
	bh=kuPpjKbI/dGz7ppolILy9wuPI5gynV9uhSNuIexSNcI=;
	h=To:Subject:From:Date:From;
	b=RXF2r8VZjowgiSER0KQCcHO8HoFhn08JMS7V82Zx5L/5xH16Q52KO5FcQdzBpzT44
	 tg+ZbpOnmi3ThMXbRoXatGJhh1UXaJZ+JJRUIT7l77j0bF2cuFH5rP4gg+b9UfWPsy
	 kv4lVec5njk1TCWo2y4+oOjig05oh0D6dBXhtywNDWqiUY81rl8ajS0EDQZGYh5wpN
	 Kjmd2hmZeDknBB9QcbOOy7daFrIihMc3LOFXmIse5YqJcXaDdFvSLxNvleJeN3AN6Q
	 1aqam77bagQ0TkSUng6Kn/sG3D5Muoej3g8XoMXrYaVWUBaRu9i4g+HA6T6sqr5JPE
	 59V0Tam6LeGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7DC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003199358.9385.15950079676138432935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198ac8db9ca9fe225d3abfc46497bdaf9b9e5c9aaac638afb4ba1ba2f62056db
Date: Sun, 15 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750031993
