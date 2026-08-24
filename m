Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EEC25B0AB
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787563834; cv=none; b=ZC7mfm3/XAeM5aHgFia5RoU5NUSxzJETxNFKi1OOqo7cn8HLVBeLe9QHBR8sdiSiKcRq170p3X7RbyyTi1gjFUDO0pUaFCyEBohkocLKxEAvhHoevGg4Bz5ZHUeBxd4UClNxi6wGl/jAR6WmpIjgcQ4i9ZjHzPuvWGFWs8MDJQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787563834; c=relaxed/simple;
	bh=qB1tPBmqOsrjxQRcGOnHRySxdDj3/E1q1zR1UQM8vqM=;
	h=To:Subject:From:Message-Id:Date; b=l5jA+lnvqEUjANpF8bDdboYOsP0QbM/6cHC2SkkbEguLW5E1CMbahBHjnGMF1F3clycgISSXjek0loA7h2rEP+nYrrA+0WG9fnlNLEbEw9TPDfu2CcHr9SE/6k307UgfbESvm9dnH9ud8k9g1aOZahtfmq4wMegtaL+L+LZQX1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzz1IecA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzz1IecA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8310C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787563833;
	bh=qB1tPBmqOsrjxQRcGOnHRySxdDj3/E1q1zR1UQM8vqM=;
	h=To:Subject:From:Date:From;
	b=Hzz1IecAeKN5EWbArZ5lBvaeP5YkP8asnmsjKLzbpsQkkfmWnuQeqPlRl8Zr9gvEp
	 5pNOzh9ocVSJIMexxfdXAk0j1VaL5lawbJQz58pKTbCAel25H5GUTJPnPkE/pfCOBM
	 T+eQS/kwNE7LUwyE2OsmhO+eT9xfYvHLsewnrgtku8GBr9s+X05MtMy4agFouKGx2x
	 tHz6QkTinoEIaqehEU3uPUCleSmqQR/cvx3budHwelrkOG2ufrtnt9GwMuZ6jabx3y
	 60CNSBkvEOYX8w6h0cGemRKfGS9ATZffk8143PQwQnvVkiN3EhMojp+MPOWGitTH9k
	 Ro9r/q2QciMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53CDC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756383372.29406.13489372325291071209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf6b913d5c55967e4165a7416f376a7dd2386b9f759b21d8b1bdf91e719e902
Date: Mon, 24 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787563833
