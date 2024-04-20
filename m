Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7607414AA3
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713616823; cv=none; b=avCUNWXekhOEFKha4CzBalu+wonciuVcNsYmRNQH/9lctRDUEGWRqMLPiBqWgaZeCIn6UV4wJYtSY8cTeDqz7nU4RYToTPQlh/xCEjYdsMaMoLrZmi42zFKtCScRr4T3QpKEdMQJ749Bn2lwufYKN0O614HwhwbTEg8CrZjGXcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713616823; c=relaxed/simple;
	bh=RifIqrQcpgcKm9bOQ/u5zOnuvww6rmVdCNsFcWeGwug=;
	h=To:Subject:From:Message-Id:Date; b=UrdpBczxJ0GS1O6YubovNgsLWnhTYexYjGzizMsrcSV8oC0hRE1rREgZ5LdlX2EKcIvWwul/zncxbLBF2zzievgt3CpKhx/RbmZH5tu14p07eZ3QUmsk2QLUlOLND3rq3Su0YCAyqjDkjrsudemL/QiPVMGqq4uIkARUebkq7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzy3mBqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzy3mBqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5356C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713616822;
	bh=RifIqrQcpgcKm9bOQ/u5zOnuvww6rmVdCNsFcWeGwug=;
	h=To:Subject:From:Date:From;
	b=mzy3mBqUZtpATMgZm/al0d9IbVxUAN8fJBtndJUNfMP8yh8c2icNqgZSPHLYZlXdF
	 ip/cWjJo5NHQSm1xiIhvPY5om9Z9fkNLtMqE+H/CIPw4ddNhVfEHyLqumD2DyAUUuq
	 Qpku+QGhH3eCAT4FqIuII4jc1Mme5ECDJvS6NqWNZBItYprNLGhS+9PGra4bL9dkNW
	 V9aHsXnGVtU8ddKvJU9kTQ636AGYamIlp2G3WluZSlz2kNCxSWX0qSiwr2bQz3exzg
	 nozkxcHXQQ/T4/6IFKWFxA9bj0XPGDztVSns6CWO1KTWdBPAFuvyMHOHMzeYss8Rqi
	 xgKAdg6ajkeBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC027C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361682280.5063.6827779987626496004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64af57fffd93be0749b2e58dab51435be365b348f775f6f6bbfd0775841156ba
Date: Sat, 20 Apr 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713616822
