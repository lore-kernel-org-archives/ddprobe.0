Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0118FDDE
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772382294; cv=none; b=i6qYvWMAksxtdtXHtUn0yp9bA5CQzFVC/ESNDqlH5+4H3Alm8nAN0m1LCUu2k1SxH4oeek+bqHkeXjuHjENcvn3Kmx4G+jUFS2Lm2GIyY1r491Py9gqTW7xGWRFxDeY7pO8lAnGC9/jrfqGmrNqE/J8CAzcs6Au3h3BeEczT1Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772382294; c=relaxed/simple;
	bh=Da+4Kc52bP+EES3WHqsmW4nlFvP09/YA+SasPwMFoq4=;
	h=To:Subject:From:Message-Id:Date; b=PByf3X3aHErD0+RX3mFGEzJwbgNUzBpamCisFuZ6byeQXOoRj7AfEnjtFL6g+T07GZClHAiss5nf1fzw0/0hkvRHWs9CG3m3aQ45BR/pgqdT2LpZOCQhcji/hd7RTF8yIwYk2C/q+WCyTMKy1uanw3CYilwi6KeZCekLjv6fci8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3ogzm93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ogzm93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8590C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772382293;
	bh=Da+4Kc52bP+EES3WHqsmW4nlFvP09/YA+SasPwMFoq4=;
	h=To:Subject:From:Date:From;
	b=J3ogzm938c260WY4w8JD52e2k7m8LUbSW53gZmld+E/QiR9y5npV9cNhawGaTs6hd
	 H20uQ3Kkn5GsMBYHpuqt3ZC1soJH11gRLvzX2E2UB9gGGM4f1OwCwETg01BIp5+0Zp
	 lopoacyIpk/Po57yNnDlOT47Nbn3QWLcPRXNDqUziCFwPZUh4Llgk0GjTZYW5eByf3
	 xcH+o9GzHfKfc4cKKypZ3qdnU9GwvMHu3P26vRwXc/hshBpz8riOr3clZxNkq7DRFZ
	 RBN+gI/wphnL37xHZ8lPtlInLCqZClbeoMi4dIETiCW5CZBkhKU0fNkRd15s+hBRBd
	 RhMaUy0nIbIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EFCFD0058
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238229359.5005.18274747986744442965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec5cd61630c428d641be83ad776e97561d07a9a9a4d22687503d8d452c38aee
Date: Sun, 01 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772382293
