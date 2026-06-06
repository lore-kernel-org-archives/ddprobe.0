Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B571D89EF
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780713274; cv=none; b=illJO55c/htOOq6JkcKBnkiaokVjwIeqV2xIpKzmG20M3nzFdxGEjfnOxd4pcO8wqwC1+XUeRn72ep71NER8xwhzvaZ3hPkihb12xwLlL1jOmFiVao1wtVpQrMbdc7YASSQz1eD6kYeyAkAg02bzITS/ZywqTZRj6tyOLYQq7c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780713274; c=relaxed/simple;
	bh=5AHKhFVmCgZ/4DMtHg7WZIySVLKPM59cLH/uhjryZpY=;
	h=To:Subject:From:Message-Id:Date; b=D/CE7qJnZJKzOvvrIN73vfLvyZcVLNNwPbzwHkFIk5woBfntQOU7tBA30JqmWpY0lpbdf6hR5RSDhR9vPhRSdZah7exDvQBDZmADItyAvfL7ZfJQ2v0sRO//2PQ0u2rbeSOGLpWKWiwKnCkOeTUolHylR53JqkiQN2tz9LrrNrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lA0hZgGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lA0hZgGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB85EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780713273;
	bh=5AHKhFVmCgZ/4DMtHg7WZIySVLKPM59cLH/uhjryZpY=;
	h=To:Subject:From:Date:From;
	b=lA0hZgGSLdVQUFWqC6ZNXnazDktoQMNYi7vWbdt4FxKpbKUnKcJSOCILhZ7U1dD1B
	 M5fC0kawqVj1a2LuMeBDnEWUzzp6nucIUtc78kbwpB5dyHKetACC9puZS5vvYDXcLj
	 6b7gL0zM2/r7SQ93XS39LAj0vDCvD39hyNBS68zqlqPSJvn2HyQiUIPnbk0tfDBqtg
	 gBAbz0BAOzIGtd0iFNSYZ8P2IupLHGun9UjypCGYN+ykWa0d2YF58VbsTncgjqwjvL
	 UuSpqGJU2NBpo7ppGWHGa35kQsozHBZqVDbebmxB2GqzUb3zwYVFRG/VYty1JJrUi/
	 res0R/Yc/3x7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA106CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071327368.9429.4860187801017302584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eec6c85da7a2b4e922bb50b7770dc404d17108ef588413b7939c0510388911f
Date: Sat, 06 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780713273
