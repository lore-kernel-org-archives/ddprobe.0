Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D940062171
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726555553; cv=none; b=gT1sSNypsvo/EM/Qcw3OpLpYmQGv3sozFlb7sC1OZHp+k/HG9P/nGOh0GJLoeZt/hWAnwTIpFc6oV89Hzk/QzhobiPybPMsH/oVDDh4iwxPtYqU4QNFF/91XtB40nFeWrTcrJZBUMt/kbqvFhmzVrYrrD6g523AKYaQzwCoizkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726555553; c=relaxed/simple;
	bh=QaBnVHIuoovsQOsMlai/rrgxLCOrCvRqZ3tzHlYLBqE=;
	h=To:Subject:From:Message-Id:Date; b=aRQ87Ys7ZnOF2E1f7QeWS32qCC6xSM6smUC7D/sXEC4BIIjZe4xfU9MNF9xMY6LpJDIDxcYBCZa9Mdak4B+6R0LQj9V2f7uVc77DaJpJVFxh9/W5YSZLZnTXphV857J7+GgqRQCT9jdzWEZ2sUTqBch+BX0I4YPk2cztskEtphU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujQTKyFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujQTKyFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B493FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726555553;
	bh=QaBnVHIuoovsQOsMlai/rrgxLCOrCvRqZ3tzHlYLBqE=;
	h=To:Subject:From:Date:From;
	b=ujQTKyFdMdJ84V9/zk9a8jbZ701TY5ss8cm9OO8TjbZ7AnbHgaKTrwpSU5tmfKyyU
	 KRnsd/6IYDOggsQpZUOwyU5LyvktCAO3yLi1EMXqsWGX4qHgKD26u4svwjqZz2Zzmi
	 1g/jQK3ygeaVDduSvAOdtGKMyltAtaAzJ7WROGgslaNDkJzFnFOQlEfREDj0HmbVaK
	 mcb+dJkUSTVBhJPyaYZ1QTjBiEvuJkTPBDVtYyPpeNE3rVHZWh4UtQjCdhEASJGvKM
	 a/Zt/GVhNqwwYGz0F09HlqF+4TbL+p57GFoa/eA+AEuTrr25szQnFN1FtGCEbbE/ue
	 mKI6gyS6AuVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F64DC35FE9
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655555361.21548.17610767826638371095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc8d9965ee2b01af0246ef891e380be44103f0c3fd7411fd899d273f10ac4ff
Date: Tue, 17 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726555553
