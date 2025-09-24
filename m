Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8534C98
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758697194; cv=none; b=olgjhyVpn+PFCceeiWHmAFerHZkmweAwevvhqKPf4999pco96XwwkQgAJNtcP+RelIWy8OER/gg0qEc5ouEloIsy0IwEWG7Dip3cSiDauCohFbD6aeAWg3Zplaxl0j5H5U9JczE2VLgLEQzCp1cTQMFGbHY+hmBGhhvGgJIG2Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758697194; c=relaxed/simple;
	bh=9VhdXMgGtmsfmhZE5HTSVLhSjgx/joMBJylzmXoz0hk=;
	h=To:Subject:From:Message-Id:Date; b=ZBctZGhNJnttA5VySJK35ptD5srts7fdqablrfgOxReJhma38PzVlJWjJ3YfaZvnhaSNtkwgFPB8fUFlcrlLSqf9EipI2mA1qlVUHjudKZ5TdeNkXZht2IB/wIOQDAClisCHbHr+cLUzgArBUYXOzu8dPwlmCSgIPki9XGTGpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5ZNnq4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5ZNnq4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C52C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758697193;
	bh=9VhdXMgGtmsfmhZE5HTSVLhSjgx/joMBJylzmXoz0hk=;
	h=To:Subject:From:Date:From;
	b=c5ZNnq4MgeKgyoXniwUP4msJqIV1+F49WDGLwGQ3nxc6FEd5GKHLNXv8+WzeS/PKI
	 JccHLDwQEao80ID0aJhF4/EFEl2ScJm+esGAHO8zAOoGyHgyj+G+GcDHP59lXV9qul
	 hl7qiyIfB8Tt9ycd6yrj4WmxQ+DY7vXP29ygDPSSRIS6kxyU1eGuBdMqpcp5aRhn4u
	 dX4V5SONmUlTN+NECRhacydJuTBCqMnYbgg03TBq/IVSMIWe437hTP7Wam0I3fYhAi
	 lJhMI6JAwchS4XRsqiqovZpsP+Xy7K0D6RhRwsYMplfC/JxcZ/kn34NsOmDeFFeiWD
	 EL9iSueGXfWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B6CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869719358.16523.5228943854368094939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd91756a3a1f3d978a74309eecfaa9460e1338c90fc56c86ececce052f987aa
Date: Wed, 24 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758697193
