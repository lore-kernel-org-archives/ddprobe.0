Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E75813D504
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727259354; cv=none; b=SgmqdlAAd8Hz+BXMelgpSOJBaOualgb6cJdqqDE866JVPZvcco/R0t+wgm6Cx/RcmT0FLsMf2xdWROmUYZy2B1/wU4TPTp2pvA1LFIZPROfDXza7fqI91sVrVohtD/903k7AsGz9ahHiArTAe0HszizGh9mRm5eOPkkLVMM//mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727259354; c=relaxed/simple;
	bh=93W1UWknQFL3soT/R3RaLKjYRvNQwGDAQ0uRQwxNPCQ=;
	h=To:Subject:From:Message-Id:Date; b=A2zfs/yXf01cbNM5VntNE2X72DZxXXX+3SSGdANvuiv70YKfIiaiD7p+b3MH9tnY+FI8/nj1Mqw9rLt+SsKEBHkdxB/AVAfUYoaCwHfjO91sy2VvjQXUHAdGPTnSYcHDwkPhHx9EvwvXU2J+8IUCdei5ue+SU/AQQ73cJzh3S34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDSgV24Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDSgV24Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B128BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727259353;
	bh=93W1UWknQFL3soT/R3RaLKjYRvNQwGDAQ0uRQwxNPCQ=;
	h=To:Subject:From:Date:From;
	b=SDSgV24QGmrY8A1CMWvhJ8q++Yqtzxxde5GObGbGPOAiwa8442TVnZWRDHVrSvu5u
	 Fm9aw6DK5/Nn4hJF/yO9zij+94NCdzoXTZhHENzdN+SAy832CuB+LCKZJIaSRt7lcZ
	 4eD4YYaizRqh9ANy8g0I15zQGOwPvFtPGH/YrOpYMKUHExMAPCU/dhXNatZhHGuYNW
	 Yy8xWBaKG0nPIsxVvGofVth+wK5bocJYw3WbnB8gCsv105EO6Y5vDLe7Jz9+RBGb2o
	 JvysG1jYXwLlNO1VldzHaV1ns8KaCGt4RwQ/QEKlAGSu9ejcT0ga9KNXy0oWQ7XUVU
	 Xuh+ikIVnIfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E39DC369C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725935364.18971.1863346968696122833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdb3e78598c93b1b7e5910901806642ee81d655194d7a805f6d74050c23b4c6
Date: Wed, 25 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727259353
