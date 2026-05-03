Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1466D13C9C4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777814254; cv=none; b=d9lUBDjnIKVMlYf9rCbRUXg8WLJ7PD4orykj0XcSzPn8GIZCB5tQMtxd7C3hsoCRGA2Vae41TZkJCgG4dqTpDiiWjdiQDqyuvbg3TriLgiD4BfdqJqlVPENzV0rWVprajvOxRKZEWBQUMRYgXjt/gq4F3CgjQWDX4zbGeCSyjTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777814254; c=relaxed/simple;
	bh=H/O/u0dyPu3YbM21qBSdszTKFQ75LFh400acrchaPIA=;
	h=To:Subject:From:Message-Id:Date; b=VNvCjx7hmdUAmJZtE4+VgsaVNhn9e4y3v5qDPst7zetrB5pgPYOsvk2kOIEAStVGcMus4rBVg5GidZFZC5A2EXgsdhEHl6SkBDlrYE5u76f333XB8fvFyQZ8wE5Qyo8B/XYVHcZKBlgQUUeM20lShXS9cyGJfpIomCmRYtmWngw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv1lDKCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv1lDKCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE558C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777814253;
	bh=H/O/u0dyPu3YbM21qBSdszTKFQ75LFh400acrchaPIA=;
	h=To:Subject:From:Date:From;
	b=nv1lDKCoMsUsqzIpEO+fSHCkgpmcZXiGIVDPQw0yOrEoIkGGgm4TSpKnMVZ4tqAvZ
	 CF7o30Bli9u+4F1MeLh1dh+bwpeLq4jL4iauUsVx7sYyjE96EfX4n61q+qjoLtlHdI
	 6kHpX5Aw1AnLaVlrNTmBtBgIIFMC1CVTPfRfhIBnigyQRqDyfD7m1fYoPdJD68Qms4
	 FHD+qaMgfmeD6QRLhoUI3GOPqRMUvWCVDpLAOy6o7CsREb9x2z0ZRHnJbGR/eCrL4V
	 mYWKfn48FgI0tllNn5czAHy6Wvn4tQChRuV482vKvYPm2+p0YnyLC73yadSkky+G1z
	 nmvKUQpP9ZYkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB9CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781425368.32025.14829266979292118851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a69f1499d34e335fb2be6b7ea302c63acf1e75ea7ec6caa370ec82b081aaf4
Date: Sun, 03 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777814253
