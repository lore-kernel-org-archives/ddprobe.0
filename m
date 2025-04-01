Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360BE4685
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743485394; cv=none; b=KFUjEYww6+A6kMc0e+TQRN5b0spX3Uy2zmEZ5CeCQ+zACHGoxqPhEqMS3wPgVGtj4N/aCo10DQz6ru95a+0wLNI1P7aDz2nlthzI/cyIpnxFQAcrJgonfnW7P6j2uU4L/K9vfdmyDPVVtTg3TH05dJ+4RwWogJi1uQTVJKZOZCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743485394; c=relaxed/simple;
	bh=aMhxHz2W2mY1fGK+X00lk+jQqWVggaOtaxgnnGwLlSI=;
	h=To:Subject:From:Message-Id:Date; b=SkqNNNAfklAvfnMWGhQTW2pSBFpGAQZOC+p4nbJcuzXaW74BzBbWn9i085dDRB6X+Uc5C5IqaWyC1t6em6qV/aA1wxegqkoAkB3Rc3XT9PihlmxebopBMZSU5pWb2GVtFqbm6Shua6p7vb0ahifcOi7/+1gfU9tuB0YADIonwy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcrjRKAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcrjRKAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC3C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743485393;
	bh=aMhxHz2W2mY1fGK+X00lk+jQqWVggaOtaxgnnGwLlSI=;
	h=To:Subject:From:Date:From;
	b=VcrjRKALfERumBBAQN1m6h5IZP2JY9CWCzAPsQVa3vk+N2lQNLcC8IHyqanCIcOZv
	 3LTEU4Qe3d7RnurrkCS6YZbWtOlK0PY/D+4t8hJ3t8kxAwZCpl3xHb6gbP55RLmny3
	 ORwzfEN+PLhV4t0Sk9BT53shW0+MNJKAl0Jidy/bdQYoi4QVPOlY6E2E+YFdmyn6Kd
	 HJ0SSGfa17lmtwq3/cLTWHPEI7E7gATxlxeERFt3n+Rk8Oeabs/tJPyybbbLk/nEgb
	 NtX425M/KmudCrz+EJRSEUp+/1gD1LMKe2OvlEyRvRxNaxJF0IcycpntO3XqOUWLHc
	 TOTfGeSSskHWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966ACC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348539360.8492.6165968503544932818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2bb3f799db7d529b40b7e8216056f31fc809a447f9e7c9936f4d3987280863
Date: Tue, 01 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743485393
