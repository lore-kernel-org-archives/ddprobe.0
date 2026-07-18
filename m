Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4C2C21F1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784345914; cv=none; b=eEeD+LRkrHfFaDuaPf6Sj2ojhI35e3ryTa8l/HSejD3FNOCBbUP3g8lHMacsy29r9wmfmv/bpAJIJqUmCisUyC4+QsmLC2DBtyo0I17sTdliPdCTF9wWqLQPqU+dJSR6k5Yo7Nk3wmE0Wn1yTf7OVbH7AFi2oPBa9jDDxsLSmec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784345914; c=relaxed/simple;
	bh=QOfr0cdRmGGE0UB693BnG1gxrrwKjoTE/pWJoDN9F54=;
	h=To:Subject:From:Message-Id:Date; b=P4lyd9WAH04y5jmWZeL1OYC6LjoB2pM3ye19cdGb0iFjHU/sf7SnZYXf5B8/cBJckSaqaoeFE09xd0mIJ11PNo4snHNpJ00F9jREVgeQZrgW70dXlxHF9J0URZyWXI0tRK0Sp+jA0sCiE5SO5EEQ+YrED/ENjUimfwT/6nESSNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9MCIUNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9MCIUNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB2C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784345913;
	bh=QOfr0cdRmGGE0UB693BnG1gxrrwKjoTE/pWJoDN9F54=;
	h=To:Subject:From:Date:From;
	b=L9MCIUNWewdX74GGtQYCTY1PP/mkIUvt9qC1PHSSK8dBIagDxQxDxdsLn9tXkPQ1o
	 yU9y9DYdJJweOfGQtj+RP+zRjJT37VOTzabqwsZkY9z9PigIeyCnc7aGaKwpX3oWZZ
	 tC/7YlweJccKnbOp41DdoUwf6zkGWGePPX40Gz+d8+6RcrLsfs9SafwM4CLo0ndPtF
	 kkjsKDFpbbvf2fZPbRigBq6FnoE97fyqrbE+2f4fZeJFBKyuP4kWnirK8dzZhh3+Uf
	 3GmKfzeFjvnS0MUMMjxgsvCwJf+BsbBBz0rjfox7kLKxrTfUa4Fqat6otlV3bxliiy
	 4sJlCDcUURStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD63C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434591368.14137.14110147093620041569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ff76f7ee3c983a0ce071668528d6e4e6b30d1fec2a105237f51af5e634f139
Date: Sat, 18 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784345913
