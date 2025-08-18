Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D443B21ABAA
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755521993; cv=none; b=QTYkBi/VujsJh3uRdF9cK3P3zIJbpygL5Q1qZ5DRDfFZe5YsLP6u8DVddhVeS2a/+2+h3hFL21RRenvd62WB5m045WneD60FnNEi91VdkNrdbNSwvugOB90RHMSXI8B3DEw6DyLxLR87fQ6dZi1FsDhwvPtnQZ0Wp6aLbKa3dVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755521993; c=relaxed/simple;
	bh=BZz60QIHKMJzsJVdhtyEFdm7cdV4s095N0bEO0enNL8=;
	h=To:Subject:From:Message-Id:Date; b=aRonEsNEAQ8PylLahVbvqd1wEPX1jpSsV825kl90fMRyJ/eH5r+ZhiE7BH1gY68qXt5W0bHW1N9VFFdgqgPQNBcNZXAyxRV18WFajCYwRagLL/CoUu5irnGpfv3nUAp0UNuy40ZJUYDNMotvr06G+0AZFpjn2kHjDSUORVXUApU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIMtiSNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIMtiSNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCA5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755521993;
	bh=BZz60QIHKMJzsJVdhtyEFdm7cdV4s095N0bEO0enNL8=;
	h=To:Subject:From:Date:From;
	b=cIMtiSNfDhr+dDKKm8IKhHCzUk6e0leIhRv4UCEGjiUKz6iCDvO9Cixs/w7MByJl/
	 7ssIU2IbcQo1b8PvYYRI8EPJSAL2HhpEFZfByQh+A1mvY38jhN5ghGWPfXITY8FGzi
	 MkLliJaDmeChktMb5t2vNFB+Xe2pBUc+97Ww28xbgr9HX3vnB4CpuCRD/mj/ei9rC0
	 En4+CikRBl0KB/N6Y9bf/Lrgh81JmubGkIZYGLQS9G+bxp1qsyvCqTL+8Ig9jnUIhX
	 ChdYfOE8c4OqDBFeWDmuWiXIwrUfxwH2WNdOHQjZaLoO/rDfIEEeirgYQ7KhTvIZFi
	 0iRNfM7nK0/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F048CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552199357.22994.6303155410765471009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1de15aef581d1a11cd4ff33763e623bcb949bcf5555be13affd3461a2c64cd
Date: Mon, 18 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755521993
