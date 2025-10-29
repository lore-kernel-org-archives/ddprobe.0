Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222722DAFAB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761703194; cv=none; b=g/DTfVRKamLWPJAdzFStOg+H6Glfot8y3nGgIptEMGvox8xDyjpF6F3bDjwpHTzEhITdrwXskvbUzYnu2NXP0FCO0Bathjn13KfBQKOewd2/dNN6kh7EQ/x/VjRgXD78E+Tf4WTR6iNERPE5sMrWf6wI+c+uPEL6+CBzFR8NmZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761703194; c=relaxed/simple;
	bh=UwAERVb5tQTjUeYli+Ik103N0Bc4iuQ+KB/jVWUQMDE=;
	h=To:Subject:From:Message-Id:Date; b=mYYHJ6uVoKBH13r+nJ60Xd+HR4mou7eV9+Ptb6p0J8V/qcZBZjVb1JPiqjjnhqtJz2pofmDxRRvz8iKAM5Gs38bSS6/9k3JD3EVk7v0o4XW4vTPpnp3see8z5Ds8YitIDX6sT6XGKi7mbjgjGt0B9dgtJgI6ubG4R9EeR4ZfRtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upXt/ro2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upXt/ro2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761703193;
	bh=UwAERVb5tQTjUeYli+Ik103N0Bc4iuQ+KB/jVWUQMDE=;
	h=To:Subject:From:Date:From;
	b=upXt/ro2oz7ZuOKnQO/10Ei0UxC/DRyoKNavuA725B7hvVMe+rWMV/nppfG/zrsuV
	 Z6f9qusRb1XfWE+Br0vakgoG4RBZlFUKLQR6SV2VT8dXRCFyIx7TK21mBSjBDq+MZD
	 elJOWPjoPTWllgl7xgrlI6BntNJ6Uu/9accjRnC7iObQLp2L1o69O0TsQHhCW4z7vB
	 b8Amwf1kemX33Q+hkhquQr6klupTpxpUgNs+TbtC5jrvL3BpPWNS5Yclf225RrG3GJ
	 zJTUA02VCOY0VQ9/J7DJ1Eg3HG7UXrCTgrt08a3cU+SIGg3sGMl5tfx4DbUd/1BV6k
	 A7tlS5uztDVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A9CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170319358.15914.7373426030737944382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573a811ef915eaab878476195b931640626f5a326979198cf67283c1a8252190
Date: Wed, 29 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761703193
