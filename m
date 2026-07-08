Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A774C0415
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783533514; cv=none; b=JSmpH9SsEqWGUuKTRBNASEqBycTbx7iRM+xXyfKNQeV3ao/TE/Vx0MXfATZ3XUev6QtOLE8xoAeLskSA/SLRNr5BodxMkoCWceSwHUziE3oC3bcZ8/WC9HMZ8gf8zsUEicYv9TFdaLeIIM5fhtyTQxIXc9ngUTBsgewmyYoY8/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783533514; c=relaxed/simple;
	bh=PUHHtGdh4d0kSld2MqmiaOoQ5Qbi2p8cA0UU7LspbXc=;
	h=To:Subject:From:Message-Id:Date; b=XqA4kPHFBYg8zrZpt5PBP4vKnV1pypSq9CBevAEYNH43ppq1BxQPc/LX0Ohoys6jv5AaaAOUTUBsnLqY7ab6ytubG6ib9jKKdORTk1M4iiV2PQcGvz7nJN/sxC/L3c3qBSGDAESs1lKMNzhOEPjPlQQ69UpAaXKATDB6wVe4dSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPWnc9Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPWnc9Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB5AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783533513;
	bh=PUHHtGdh4d0kSld2MqmiaOoQ5Qbi2p8cA0UU7LspbXc=;
	h=To:Subject:From:Date:From;
	b=aPWnc9Lw3+F4AJXq4cKpI/ACVkgTXe9JwafaPQfeAQZKCVg6a219dbOTu83M60ynS
	 3GQpsTLy0SqvnJ4hoLpT6/TgHhvHOUpI4lVS7wyrjRB1Hi0nLwsgn65wfK0s0VgkO3
	 JqogTMHnuSPDS6Dgj2SFsLX6YAVp3bcDysmasBzUNxui1XTEeUR1RvzAAUZaVzSyT7
	 VUMGIr6Z/XBJlCHWyOWMz/nu2uVGQFXHWAP9pW9BB45SkDR/abXpNJCt0GhBiw4QvO
	 crBtDpVCSMzGnVVVT31JlkqNLIWjvMuUP76/b54aOefGZ6IBsUyphTEum4BuawLIgD
	 08bXGoZCG5kuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A6C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353351369.13533.12100805647322285426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdb25c37482dfc9cf98dd63eee0497b2def161e709a1bf3b0bb4df22dbf2d95
Date: Wed, 08 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783533513
