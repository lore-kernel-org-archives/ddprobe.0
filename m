Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC8D23BCEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755198594; cv=none; b=cTjvNoczOMVfP97ZzyE1NYW0FH+hy6aI7hKvXekKU8AH9hoQYtzPvY4CO0keDS75QEivtO4EhM+dIXk7b6EIvYLWOOBLUYdlBNelcdIrcYFUVgIoR7063tMQ6nh6i/hRJmZPiCr3lkQX9FQC6uwFvg+9zfj4jcALJ63R7xt6Bi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755198594; c=relaxed/simple;
	bh=1LD/GfzUhEJtPADOPChgxq1o5AxM9OgKqfecGoEVp2o=;
	h=To:Subject:From:Message-Id:Date; b=oAm+fNI88ztI19SfhuIMFx7U5km5RbSUWZ28ehGdIrjs5glrr6molCp3Zys+sFTtVQUi5y9rYiYkmVwpP2s4qrggu/sMiq6QrkR/AEEP5KCY/n1MGAzE+/w4fWZtVFCGc4hexEEEq9vD2CrP/Q4rLABK920WcKET47AZ5A2HZF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTutjEes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTutjEes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2525C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755198593;
	bh=1LD/GfzUhEJtPADOPChgxq1o5AxM9OgKqfecGoEVp2o=;
	h=To:Subject:From:Date:From;
	b=mTutjEesatRtdxhnBFC//Zg9CXgLVGmNNkd9qXUgi7mfsoFo5aibDmuAqtUT2luRx
	 LSYCIgLYuYNNQANkPMhhq/6Uyboi4T++n9GD5HWWYMae2lwyuOp4hajsNijbFkjEfU
	 5FCUzVy+z8gUNmMc0AXKqCrBKwtTvjNEhkPNvT1g07CsuQrA2/Kk5ah0xuSE6FGvBm
	 PP2oE3a1BOKip3kGg3+0b6csBNIi0fZj2NiGxKX/d/cEuDtVaADcYUNDcT213L4tUD
	 R8Apr0HFnZT3RNnN8DgIdJNmMW7jBNnj7ykSkUqk+ufGnjd6tx71A0abfpDEAQL6TR
	 2iiEpZ+uk99HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F362CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519859357.15316.14358419960151757006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af00aa55450a35b4ee5748f79741bb9f7151117803c01f94273d486bfbae00
Date: Thu, 14 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755198593
