Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249AF63CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771089894; cv=none; b=Ar5QbV+/YQVl+qXKIz598m6GHOLlQ+tXvooZcf62kMB/OY2hbhvs4C8GvUU4JX4nbnIx078fhwLO/gsAJd0SrjWY4m+o897+nv3Bl76cpqdn7Xw11eLiAPIb4Vdc0NqQ2TixSuyOtQR2KfCmXx7IifQ4Gb+kDZuyMwOyO4WsJgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771089894; c=relaxed/simple;
	bh=DfncBgaI/VV+F3tKea74lFn1QAVxlN8fFeHekcYXP+0=;
	h=To:Subject:From:Message-Id:Date; b=AIcNWPfWW+V2d1p+QCFOi/XPy3ggsXdWKiiLlqcCwR3eAgJw782fSgAc0eutKZE6azIbo07xWiBCiD8JtOgiDIybIJQNGLVofqse4XUyWpixWwoogtEBuBva62i89/38RfP5rU3k2AzasSjAXgob1ZBU+HhckGt+xt5e3oKsQQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnQ8oaCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnQ8oaCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C7C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771089893;
	bh=DfncBgaI/VV+F3tKea74lFn1QAVxlN8fFeHekcYXP+0=;
	h=To:Subject:From:Date:From;
	b=UnQ8oaCP0vY9q6y6JwqEPc2lxTAl/sWMvXb7sOiXnZuH7PGY5VSSDfp5LT5ZglVZ0
	 O22CDh+rgX6pNQcP/6Wx1M7zg6TrlqCZXj5v/SPkoyHtBEPi7+G2K7H/CeGXrI2fMW
	 VtDBzoiK2YAoqnJf63pnYyioqs9OGGFV0rTvoEMlOXfR5OtWf1ApQkwldjvQkplIPd
	 n+sZ9801l+7SAigZNPVSk4AEotBUvPRlHaptiNRPYYtJCdcDPDfMz8Xvyogw6TnDa7
	 GHE6b5pYbrBDu7OW06kzLtujxa3sE/4JOi/wz++MNO8IgaXK9sawzNwqO2YFiavcjD
	 Adazs0xsLjnIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8305EF5848
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108989365.3021.15835916157831734565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cae70d1322c29839763e022f02ecc9745cac0eb422dc4b03612cb7854d7927
Date: Sat, 14 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771089893
