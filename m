Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C1D1C8FB0
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717017263; cv=none; b=JMoV/dh0KFMMlqTDUSGbJjaWGYcfhtwTHAj62Ra/DNR0zJDgRkHctoCh9WWMAny7xqKTrQNoa8tvx3kctVGecsTHl4K+mgKDJD+BjPfBwiLKYFAERCMHXZBThtooxGLhwMsvi5t0kRxeni74twbTvs/8O02JziEG4iGzyHrdlXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717017263; c=relaxed/simple;
	bh=IsCrbAntemoq9ekIEXbjjY5xy3MVC+C7kGPLB0zZiPY=;
	h=To:Subject:From:Message-Id:Date; b=b/p6Fan6oC/rddOk+D8PnMMUi9AqonB5apXcWdbpsS20MHCUY9ZWZRGVZWxIiULcLQ50QmxPVnsi28i4uwONHjIBwHYi8cUPRrjXvdyacuWQ9tXC8jh+eMbQp1kvSRikl2YrgvSM1W4Y1XMANEtK0VVOXhS3SU3o1Hxe7Fm7Cng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOLD+r7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOLD+r7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A3C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717017262;
	bh=IsCrbAntemoq9ekIEXbjjY5xy3MVC+C7kGPLB0zZiPY=;
	h=To:Subject:From:Date:From;
	b=XOLD+r7MUG4IcvSXNWj4ncCDSI5JwSMOrnRUu5j5sk3yidCFKWynR8Of76CFY+bW+
	 QGZz8FTxcDQEE6YRIzsgIS9BuklfuKUJfBLw27C0b6DqVlX4MVyZb9cnRFBj+dQQJj
	 7U0mlNfUD927/6fgc4EcQMQIuHSU85PIUwg7acQOmjn+wp4EWhk+GEgkTFMmeY6Lx5
	 PwmSHBE4TnTMqzfChvkX81g3ArgXj8pOFM4dFl25lf4NRmRE0KQX2Fyr+sQXlPtwhK
	 iJCQ/5CQrrl28fLqGrixIVPhF3W+BaqEzfUtHawGx0gQy+cKPGFhiQepcm1FmEgq4Z
	 nhtciHmWrtGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDD1C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701726277.7478.7806635549014122934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76601231e3b9564cfaf0478936c8a953827d76e9e96cc3d7633d412078d80926
Date: Wed, 29 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717017262
