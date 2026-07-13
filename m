Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B433242B2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783979314; cv=none; b=flE9azUfwaiD+K3LQeJhy+vQFbTUpMSlp9peLtupIAS+yRmZbVnMLkLKtt7fHS5hdmGmNp1uU6RY0p2jpkeHVTtnxUFlTv8nxrpR9jlDyRWH4X8zM+hshR3jkdBB3aCyQuUP9Zzpdhwx/E0dWjqtk0CIuvgTltC1lXFAJDUjvMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783979314; c=relaxed/simple;
	bh=sYX1U7bqkldpkYyOpScsKOWe3Q3fz4XaWRLKdGDc1h0=;
	h=To:Subject:From:Message-Id:Date; b=nrQLSHVCRIPzGnfVJBe1XrI1DYuygeVdSQM/MnLFL8B2kKiK9m9OF2uJe05mDvZN5WSww9pTzZDL/vIqHY6/HayRAB5sVBx8l0rpH0eGL3cdoh3UcZyQBTvqq0qNsOL/51zArqWcPeho9z3Eto1nbiozMs0tDH3ZRkMpwMUeVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYkOCMBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYkOCMBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD886C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783979313;
	bh=sYX1U7bqkldpkYyOpScsKOWe3Q3fz4XaWRLKdGDc1h0=;
	h=To:Subject:From:Date:From;
	b=YYkOCMBeaDNJhoVnMY8qqh3XI3LVqCxrV/Ntemzf+PM16TMK1GCVnWWyf+l/gtFrG
	 XT0rCZIEWOX0oFmNXen3ILIPixu4agq66A53DNZx4umCDDklz98YWTK1SriFElHsKp
	 Nt4yt2Eqrr32BLtkkFGIpaY7cphlryBzGS31dGjjW+8OoG/004Q3Opgk25Fx4+e9Ic
	 oRBEu6nmcw1mzQNtY2iYzU1fAq24s0e8YW+QpTn28PLjgCVlwqk1F0rrkDL1umCDOd
	 6tJTNan5F/iz6sILOY5/iR9jO2OXqQIUa2rK6NqepRBR1dDvXGda/jq3smldRCoUYf
	 0E6dAN0Jxkykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB483C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397931369.18847.16088464602981635465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03896d80885142747b14c0bce75857da028982ad2fc7b70fd75683a19dbed9e5
Date: Mon, 13 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783979313
