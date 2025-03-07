Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E24520E6F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741390734; cv=none; b=h1Rn9zdbhpNZPilVRq1l/sb1QBrQW40Hn/4cQC3gJXnSb7Ww6+xAKFoLpsed68WmOYlaFO4VNkspr6WH1zj8cAGE/A8KJ72Fwgmv8SzZQGXoBpp7omrk0AnoeF6iOIWA9ad2UjDgemY0w3jeqQbBIygyUIpGhNv/v2h+4NMHxw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741390734; c=relaxed/simple;
	bh=gHoh24G/MlGSodVkvAnPdcP5yO47dcWHYR8XYvPZ4mk=;
	h=To:Subject:From:Message-Id:Date; b=S48NW5dsQapE6qfs+yBQt1/22E7kE3Aq2xGWtXv2ka1CCA+XSMut6XUb7wxFRZz0vkohVC7PlxjUnzFyi5tXKSiNLWLOQ59f/cHOLGPrcCZsl1xWp45wFr5+eTtC02HgHBacP3CCPTUK69o1DOYtj+MOlhtDrbbHl1k/Xx4g2fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7BzawSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7BzawSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741390733;
	bh=gHoh24G/MlGSodVkvAnPdcP5yO47dcWHYR8XYvPZ4mk=;
	h=To:Subject:From:Date:From;
	b=a7BzawSDmT2JXGxtnPi1XPMMhJQklVw7LIxTBSZkNONBpMA6SWCAk+6ctjAI5Wp92
	 /dvsuAh+a2XbS2o1zoh+PQ5oXe7nxu0WJRUQQuZjaxlY5lh3s4KYm9fq6ORLkjWJmS
	 s97cCRsxTlnXbx9i9ALUyU8aqz28ijn4GE2d0ptbE1ihlGb+KYKKMyHh4z725NbTqc
	 ocugjA0t/v4i9k/wMVkzOt7QesEWvYU2JcstfjIR4YHwYcXukfEAQZhhVwQqqgdmil
	 krqX6cZO6Xz7QajfNJRwrP45h9N7RFejb6PxPytX1cRuEPaKHIThL+F0tDUZnu4fGT
	 T0htnrB3ZzltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99770C282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139073361.29145.10924398221326869922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed503dcc0c75271667a099e67c776bcae543e4189cc37d34be069d6545070eab
Date: Fri, 07 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741390733
