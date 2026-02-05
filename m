Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF82849659
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770310433; cv=none; b=t+fFVoTbxwwU4B47MAA/czFaD+/a+z9t+diJMdi0X/E5V7tcP/f/kAzgE20/8ruiy0wxUtRxK2ZaDVuibtYMsBOPiQqhmrXfAqtLsAh7pMhv6QenlO7GJBKO9vfRCq6CWlod4nwv9ZxAT2nfj9DpJG6+h17AVB79pLqk0h+1kdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770310433; c=relaxed/simple;
	bh=usN0LFF8c3ISpGSs01tNSYf3/gtPXdwnxxOMDSwou/s=;
	h=To:Subject:From:Message-Id:Date; b=rbGIZRRIOJOme2AOL1fc+mEf0PvgtOJhRlBYZYdOhJCji4UhdWd0wedt32DKYqP7nE641z/iCjstOh8/RNoagqnkmO2wx5Zbq6NYKWktRnOqCqjIYRwvj9WRKCDj9dsgG+cFs9+uKpW7LGsSq5ZMF2Od7/VKYBZ5yIk9m7pOGdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih3lOPy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih3lOPy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F0C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770310433;
	bh=usN0LFF8c3ISpGSs01tNSYf3/gtPXdwnxxOMDSwou/s=;
	h=To:Subject:From:Date:From;
	b=Ih3lOPy4HSqcjWaq4W4v4wtHaWv1KMBQ3x/NIgxLUNcunzdBMC6b4Z25WzlrPSu3/
	 DM+wEgnIOkKzB0wqoWJBX7nxoNv4MEdMBJhD6e1UUpM8a0Gyv4OKvLVDiv832Cc8na
	 Z3LY/0ajPiSFh6pVDeiBBIBDqFuAAppi2kybJYhX1cVjlt4hRp9zy98j09ZduHF6Ck
	 OgPvZSsmpk3hU+Lw1LsX+O36m3eSH/h2xSo+Z9K1MoCk57qaGCRtKDxKoh/jfH7ftf
	 4Zy7uKIBeDdoW4+aHMcCowgvFKE9xGBG333OHDyyrnJK8oLXhw5Mxzs/egBVXtp4E/
	 SOHSwLOAgChnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94688ECD983
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031043360.7847.14587456262971221528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5d513bf7beedf30a427dc74b72c2814d1f272b51c0a95ca96115542df4e94c
Date: Thu, 05 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770310433
