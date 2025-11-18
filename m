Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F7A349B03
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763486516; cv=none; b=Dsv5GlrQV1Xechj8I589aYdi7WBIIIurC3ZWVdb39F4lKzDAZFDkTiGS8ny4MVvSkhAsSOBxQI7SMWtQcf9oELoj8SLEJPbOcJqVzR2IYvZyAETtgRD1BPe+m91mzj9cwdK7QjbhQ6XW5R+561x+mkXQI1QHSIie9B9fYv1StEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763486516; c=relaxed/simple;
	bh=Q1SvlvGSKNlkHg0xWA6vCCq2LJaxS4mCnM73Ehdo2nE=;
	h=To:Subject:From:Message-Id:Date; b=VfzpV9VAmXO7YblUeRBJ4u3yIIGPi7UIiLPqtYlsAcTJv+DiZOGzAFIzvUomXdTuYCHmpCC7og7TZ+uqKcX/qh1rSiI/aobDlQLKZozN7dOgsba2v4TRP2z65LsnktFVOrXUIhFH+fAt7+XFD7gE23bW2L9cbnH27UKiWAIIetM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ledn3r04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ledn3r04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C850CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763486513;
	bh=Q1SvlvGSKNlkHg0xWA6vCCq2LJaxS4mCnM73Ehdo2nE=;
	h=To:Subject:From:Date:From;
	b=ledn3r04s06Qux/jcXZoF92hiXeznzIq488fjM0GshRRWpKRSs+KwBP8DUiNw0T8F
	 m+dEyvx2LOQQjaLrv9X2q3PWZBTL29oWuIoCFGFOYkq4Cj1/2UfbKcnfbXsafDttAD
	 AqjEOFXRP4KPewP0gBJgDIiNdpCfY4YkEocS9V5EitsIg60XrBFGUdNg+H/ckoQPol
	 V0Xn8TtksWqIxCsMv9bryA8xapFBosB0fGFT5grdXUs0VLL7MRV6YqsWkahNYaw5bF
	 SToUKoWuwzpi8Edi56uhlor10xy3ft6HvIeN2qhWxZpVspOK5da9enRxJajrAD3+rD
	 ic8C+8ilWuw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD0CEE33B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348651358.17764.11708216897942764608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e39f129a6c8330935c7ce7c262db820de1ef5e9409274fbfadb4656de4e8030
Date: Tue, 18 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763486513
