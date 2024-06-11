Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A60717B42B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718116103; cv=none; b=CFFsd/BvKNApm+MRvrxo8npVh3Mg/0bKibN/3RP4lVV+NF9m+zXzaR4QdJD1XJBunt4LwyDs59w/x+kppeMPG9B9PhBnNYFEhkrszLIsztuIp/ZB9Oeudqdqn7g2NzbOCcEWamkD/b8qdYTCerfAE8H8J9Gd/7Icn6tSOpvnmU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718116103; c=relaxed/simple;
	bh=YbVvBYR+/kFcW7wry7F2AQ1EAOMNQR8rj2LEGr5jtFE=;
	h=To:Subject:From:Message-Id:Date; b=EudhfWdKaaLv7/5qPP1OgS9svDEGW8Y9P44LTK+cRtPyNu/F2R3jv2ni5BwgT/btSrpyer4UWfprUCj5/YT649sbTks4pGh9IF6jLTSv58wquSNlrE3/zvOYT+0Gl6yISsZ7CCH9+BZ/2aIKRamSIcWEDHg2qW/nIQ2EpFeIys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isBYnUQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isBYnUQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5ADC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718116102;
	bh=YbVvBYR+/kFcW7wry7F2AQ1EAOMNQR8rj2LEGr5jtFE=;
	h=To:Subject:From:Date:From;
	b=isBYnUQk8t0kbyS6pUJRgS/jAERwBo9elqauPAOjWWRy+6pFmg6Botbw4sYi0cA8D
	 iIiT376ylvPMCcziHOclNfb1rSqogDwss+/Mc/IsuxCWtdHYzrTYg+fd7WJvRvqryg
	 DZogwwxbAVWoEB90eAc/Q7Fm25A90o/N4rktT4UK1+NSF3/P3rTPdPcOCNn4UpYxiW
	 fin2EjD7o+Z6FEeiwEg/QosgcL+xxOmrNRA5zw1N1fMtKjahvP+kvADLva/pBLlFq5
	 Gmvo9E5SGao8DGa91ac9b6o618tMB2yuXCG4wq9RG4eyAFXeiQgWPikW41Ay37Kg0T
	 D6MrXfZXsQ8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB59C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811610277.5535.2217016186731654670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a694ad3141b32b6c189594dd9de0daf301fae19a03e89f9dae2785922070ab16
Date: Tue, 11 Jun 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718116102
