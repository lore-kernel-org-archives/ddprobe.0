Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9EA1FDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744529994; cv=none; b=OuYaOlE0UFsTBAVFLsKVfaorFd+N1gKP6kMYDX5DBSyFWcgV7hiK3hRKBrEQMzQXgziJj/PavfDTXmRbHnLocTmI/s8FAqi0oINGvs8GvfqQAyYJBaPqeJF9Dk7rBhKso41EJmFSrte96/jfbDS4+oeYgaMcouYKGIEDYy2bmPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744529994; c=relaxed/simple;
	bh=Xt6CohNR35LLGD+ujFq2nPNRExLsQtiM6gquPTR6CLs=;
	h=To:Subject:From:Message-Id:Date; b=CMsN4BsQttZ7ojHhD4jntqcXo873JkCI5qjs5ELvos0+T1055t76sgDb/Tvxd89XYh0YPI4YbS7EztCwPyEJ832l7hLQAQF+F/n3eYKw1uYtZmKFuR4ru5H+WvJHiAfL8/loOaGN0zuWdtrjYqp4kXozW+eKKWOMMNVw/on4pLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgOFcUGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgOFcUGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3AFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744529993;
	bh=Xt6CohNR35LLGD+ujFq2nPNRExLsQtiM6gquPTR6CLs=;
	h=To:Subject:From:Date:From;
	b=FgOFcUGw6NKeEWloA4DNAQLzGAXWM7szkU66xkUZvJKYQdRMO6oJFB2PYf18Yub1c
	 dJ/WzSyzuXQ9Bgn8J+ETcUKFa0U5Zx5hZT+lVxt+IhEmLchfyilSRihn2gyX40dvvS
	 DJdJEiggVKsS9GbhcN3V0MC6gAKccMMsnIQcdpdqTXgrJLV11ahfSg2U0s/VspzHtT
	 31MfobUPFFdaGWg0cmVvlrqlwWD+cokMINn9fgbA/I6wr/YOrYqz+EPpn7MAMArUpD
	 MvdhNnPslzIK2r9xouU/CMGrtSLYrWnea1UjqiTovtZBp5fJCkf7yqqSRqOSFfCMuK
	 z1nD6iPN1O/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94355C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452999358.8218.13134884134383492102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faefe95efb8bb5a5fc5fec34cebaa7a9378392b8af7c38fa038f0c795c7b81b0
Date: Sun, 13 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744529993
