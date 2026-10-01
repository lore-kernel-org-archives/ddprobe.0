Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DF126FDBF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790896834; cv=none; b=MV35uPcWkgwSQnoC0AYMEipQRkc9LsNlN+FvYwBUA4zTmm03TNXWmiwR1/2URPgvh/n7XFR++ucxKPrX33JdQWUoOy56FPkYULCjRlsDG1e9zuv6GOCyWRXJob54XHlfPlq7BnZKT5cXtZkeb8CCIammirXmx3EEwGQ5nVkZgpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790896834; c=relaxed/simple;
	bh=qjJt6FMzm8cX3Ewthw2N6u6MZjtDLNzPZC/wZ/BzZdw=;
	h=To:Subject:From:Message-Id:Date; b=MewiO8Erm7UvOCIfmPG5yML2oXoYLIJfv0/bg7RdADgVaP8eIX11jFpxU4b/oeimgz5c+xWFL23xmr8ogrIi7ZatdD4W6WhZUvbLByZIZrlbVerkTIm3ffv2xr5qaxTyY9f7LzYNY/PTbftNMYLQo+QI+DWqboj8ZLbf76KouJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWxDSeV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWxDSeV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4224C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790896833;
	bh=qjJt6FMzm8cX3Ewthw2N6u6MZjtDLNzPZC/wZ/BzZdw=;
	h=To:Subject:From:Date:From;
	b=TWxDSeV3+QGzZFcOCxJgoWOMjoaRZw740jeVPnInRujzC5K12c8jKBspin0PnnTvh
	 NKIITyfl9o3GmTSxMtcVL1Srjtpa1k/veqcln/Sb36Pg9WNcAUT4UJe5TycfqXzAAt
	 g/CYxo12ZecQTcYGtpAQIpobOeeXTd0naY7ZqFroDrVZDJ5Ee0P+4r88vIQP1/O/r/
	 A9PIPhEJMmD7MT7DRx2DBS5EGdWJpL4MvgkazTtflbzior6trc+nQ8KobjN9ZEZlT5
	 CHBsYQcbkhFWDM0cl45st5F/Dtu42uk7Y3RAAGQz9DIdmVkfAdx4WxyM2NRyM5oQnC
	 v7qEXiL9rGeQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD164CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089683368.25989.16712116864126608678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaa45cc86a4f4e724e7cedc0cbd26d1e2a0712f2399eb5dff78a5817c524d16
Date: Thu, 01 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790896833
