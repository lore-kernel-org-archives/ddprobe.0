Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BDF14D718
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727549754; cv=none; b=NmWRMGx4Kb8+BQnOnHOGdJ73lKsyArmGf/9MKK2owjPHYM2jQcIzLtsw7HsvvhsAbj0Og++y/G55sGvF7Zq3U96NMJWlCtlsfoVa8XmOcG6gOf/K4KDMLBIMYqL4wTA1StZSNtH2aUQ4nNsHqKHoBQ/RCA6CEOcKVUf+35bpA14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727549754; c=relaxed/simple;
	bh=5cWRHv+nzncs4h1qLtp/MQeekfWwHr6y5wj/5oTjnfk=;
	h=To:Subject:From:Message-Id:Date; b=CuesebUOHHpZ6C04UCHZEvhyZqMbSwawlZstR33pRPWWAXSNQtnitq/9+tuwfqjUyejncYFqOY9gAmaOoJY0F/yuiQuqAOtaXUU9ozE7DVrDnDZOJqVYLbspTNVb666Hhm9HZxh1R1tukFz78MBJzBGRYuYCUVxsxZ+uWcEV3hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqYDWUU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqYDWUU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBFC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727549753;
	bh=5cWRHv+nzncs4h1qLtp/MQeekfWwHr6y5wj/5oTjnfk=;
	h=To:Subject:From:Date:From;
	b=KqYDWUU7/bbUvmsu+4GTbGMR9KFblaVWwCCOCZcj4tRWG/ZcEkDaqDM4Y54M/MdIZ
	 qD5I187gWM9w9GqTGDcIlp3frmkMuhdVU3ye5iEiD+rXue49jvL2lvPzfMp+4XQ7f9
	 2PsS4Kk7b96fMAOcEIgL7IV/68YHOPHUMByMyuYdgCa2tqOK/xgAiCOpwEeRC6rTty
	 BAvAF2cKA2iUF6mhEQp4phQV+JWIsIlc8c306YIpKNfzAKED2p2tXg2LdsA/gVlWC2
	 qtwrylvY9L2phxkVxGZqBDsoCN2/6hottlB8O48EO8k8Jnw8CUMIA2UldkrqV5sVls
	 tf9I3EjdEUIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B25CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754975359.18857.15460811977946078424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af27541cde517245c8dfebeadc84081d8994b3ab7c2315ebd2a50a82fd2dd2d
Date: Sat, 28 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727549753
