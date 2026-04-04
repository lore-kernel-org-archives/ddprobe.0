Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7072D4813
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775342734; cv=none; b=luKm6LTjXpFFmvF/g/4pypwZx2/kbSWtTfB46pIrrNbOL7N1EH2l+/tNluXJld3y+jnsjbP3etZfwA8EXS5lsRdN6E6hGszt28V6hPZ9odObtFAZLtaVti6bXi596S9N/DmbaK2P1CVjWVlAeP6L3UVWYNpIo1+GEHOdA0D0lbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775342734; c=relaxed/simple;
	bh=3WHLD+ZtY8DuJ4sGNk/BVQgSoe9cGZEeqlwb6mRlh2A=;
	h=To:Subject:From:Message-Id:Date; b=HC5ntubxOViHd2Qk+Hos70NvXGi/Ntxmf7Rqi17qw0460iAzeycNpEQd/+RC+0Z8EtiQuZTlgUhhTruz3LV6BFHgcfSYSs/o0oc7HGxRQN5vEyGeHL3ZfZ/Rdm9HiTEbztIMchlt+FGmLo2X0jFtOP58VAkToLa0CbuHu7ny+Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILk8F5kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILk8F5kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2209C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775342733;
	bh=3WHLD+ZtY8DuJ4sGNk/BVQgSoe9cGZEeqlwb6mRlh2A=;
	h=To:Subject:From:Date:From;
	b=ILk8F5kp1ESgY1+suAOgcv1/4GLhr/uR70s2zmmPD/ZykYuOLiLtDz6GtsqKGmWeO
	 wke2g+mhEq2Lzpsf4Hhtquy1mM3sZMeKYod4HdkqzSX0u6HXdx8tEYBCDc18AbNnfH
	 fJNGJ7AE3Qj9MIJUIscXuJJnS17vP+ZA6R+rS0+4DVsmjlNFA4cZyzPZwMoc713TdY
	 eyFcAkQIXlu7FBj66jT2H6t0Q5cyImCkNhneOHOp3JGH5M7b/2dUOAfd4DtTESsxET
	 CHXhmnAgSMqvhO1R3QZlHUwMhQJQcukRWK+0Qx6JNOBF9MJSwb/yQl4om7oDBT47zm
	 q76yy5qSaFVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C75E63FFA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534273369.21903.15276529667835276504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c506174cb1bb20ef3247cd2f9c3f4149b5594d937fd03b8e55154da0f422b0
Date: Sat, 04 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775342733
