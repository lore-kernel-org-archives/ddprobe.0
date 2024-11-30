Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB0333F9
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732960555; cv=none; b=jgwWdpW8koYilJZ0XjeseHk5VeAuQf1ehX5p3N0Rhihv2MLIydy1zj7DCUB0+pgQD5q8hFSR/Po6LIQM7kXRZSykd7ZwvV5lu3UTu2UK9IKYBX8mDMgpOhGJfLMyPBSWV4K5vGtZ/ih/zJFWw2q664roLKVai3H8CZ94ZAnkyJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732960555; c=relaxed/simple;
	bh=GrAhHe82e5Eo15mAk859vIATdMPWgzo7agKsOrxeiYI=;
	h=To:Subject:From:Message-Id:Date; b=dMiuaHaNJLo/G9JVahyhVIlGYTxZWLgTzuMis1PrBhbugowD14TLhw7gdlg2MWiSdxnJL9/lM85LWuCqfPYrlAeoURC7rARVVSf2keh3GYimoPs5AZyssNxjaUefE2bB+BQtYTxSHbrDKQno5xGQiyn2s1q7SuaQ0igBANNUgV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mn5WKtGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mn5WKtGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2DC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732960553;
	bh=GrAhHe82e5Eo15mAk859vIATdMPWgzo7agKsOrxeiYI=;
	h=To:Subject:From:Date:From;
	b=Mn5WKtGg5+pNM853bOjTUkNy5hFQI/ggCzltylz6x4gvttKqtxUPP8xQfNaGA+/az
	 4d87dE+3Rbd2+E2/bI+krmX5T+3uF/6tA929Rt3HcKFLHffnqh0NwJrvvx5Qcb44rb
	 yKVOzaM67BJS/NuuQCmPnp0Y6YmQT4PI8rCl1xZOZv2tjQy80dDA7iteRoQkhCkAnv
	 jV/xl9D2ZwUVm7cgVKzW/HYosBywXAo6sz0p5XePaqBSwDsLfObRbSNv0Ii5yjiywC
	 JV7jyXauJi7RHprqRQT7pHr1OL02RtJGugNToqQJtYFGjPw5sqrUtRYWAsHWJldo0h
	 QWB8WbD62eYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ECD735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296055358.14891.907343767092393668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca5151953db2d196f1419e2dca7defd264f443cde8ed8b1df7309e493845d16
Date: Sat, 30 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732960553
