Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819512E5B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745754594; cv=none; b=lwm9dhN8RFHkeR4cMdKZxx06PbetVX8bMjBuhJ97tZX3p6O/ke4M3Eu55Q0evQu9oFwXsvhR23ePlqNq9zgXp0vpuWU8cbmOazOJuJgB076mMi0LLL9I0OQ+/7yia4SDPG6LTuywRVa0rI3ua4XQCaj9fdfGJEvMRfbZxsm5s0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745754594; c=relaxed/simple;
	bh=AC6xzlBTdbgB+yInGg9LjN/tVsAmhexWskGCD14n70U=;
	h=To:Subject:From:Message-Id:Date; b=b0PdHby0p/kEja0xGaPb2Txn2dXrjgrZTDE7XfV1L/jcWBDvQOmCwKUfKw72jDG9qW2/e7zBYuZDVZll5XBj3Dd/kvY1SGHFUO8gf1twauuMZnWBwVm4ayxg9EG1vH542rGVl8OiAGF4J+po+qOnIilmYZMYwDnK7feuIVfMdtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvBMugqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvBMugqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745754593;
	bh=AC6xzlBTdbgB+yInGg9LjN/tVsAmhexWskGCD14n70U=;
	h=To:Subject:From:Date:From;
	b=VvBMugqO4B2ttUOhsU7DiKUDN3UzfD2Mpsrr1CS6+JWnW0NhhgMD6+nGYVrH2lDej
	 OzwYjIeCymm44bDHPh1EOAejkGxIc9oxY8bOxYUJbE/9nUnTy0WNYW0TBAG26eublb
	 ccx/lDzN/H6xK5cVJSWbqONPrxuudjQopMukYbO+BW443ZzHIonNJL2pdowTQZQMI+
	 0mlUdfhTEVDQ10RtGqBUqccmD5NaMlCqyryX7K0k2qx/gEKfJD27AsFh5oB2J4qJ4u
	 QFie1D4tHw7RfmSnZ6QOgh8hDkD37BUO2KDwYbXLuwr73kUHPk8SnZRd6pEMKiZOcH
	 61NdUpvhLvlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575459357.10886.4234069112536239749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18919e71ecf932216c80802a343c2be7e3706ab0d4e2acbb55848047539c4034
Date: Sun, 27 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745754593
