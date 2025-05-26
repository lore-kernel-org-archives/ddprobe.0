Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA07A70810
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748300993; cv=none; b=ZGIf+y/JKoy15f/6CUgU3Pvy9CcPlxDUmAl2GtFU9WTtxMivV+v52/R5jEjWe1jwHb9Oa64UTucwFOjG/PAmSFuvJjtxPzcbmQ/RFCbnmIGRs8zQztSgxJ6LknVBvxlxK6Qj9s3tVGiFGtAJ+HJndd+hkVTu/RcC0gDWkyxgFGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748300993; c=relaxed/simple;
	bh=e8jcOkZfwfH1Ln8z5n+4j6NdGlJ260+qe1gVfGjrup4=;
	h=To:Subject:From:Message-Id:Date; b=Ym0tdQVVqbcz44su5olc9XxIyzCOWjl8WVcBbpFaX61KNHn/krSXXUqBFjdFCMEy/LW99GkeBoMiiai7pwRS20Ux1n9CmoSyKqZtPwHUSOnQpelEUPR4SPfZs10/WWCHmck+OzTyfUnrTtEUIUlPMT4jtyUwUykXpiqFcUYpP5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUaRnJKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUaRnJKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748300993;
	bh=e8jcOkZfwfH1Ln8z5n+4j6NdGlJ260+qe1gVfGjrup4=;
	h=To:Subject:From:Date:From;
	b=cUaRnJKVuRGI6B694tUf+C0oPUef7jOVEI6QGHEqQvM+yzFT8PfgxfArWG3q3RXNF
	 n7Q/3kUrR2W0bNPp9xeLiJ55mqGGQgGFKpejxF+7zOoysGTuUC5tcX5H0LOdbIzXoM
	 oOakXAFat2PRN1dAfrHoj+uswbwyzwo0sRc0zVFzYud80W0doKZj+B2JXv7DNeVMcB
	 cg+e8BCqeObBj+QXz6LNllNETA8cBFIUksBfM52SGwJVTVyrhuF0Yr+zSXqNaWdr0o
	 DS06E7zm83bCM+W4SV+LlshKTSFyxDnddav4EfOQ2mmmtQM7hkQEJCy1wn+mRuGIc/
	 N/kUER+A5ZzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F6C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830099357.2153.11125548598280545939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c1caab789d2ee3d41dbd8a2ffde682ffcb737fb48a76a9233bc2bb15f55486
Date: Mon, 26 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748300993
