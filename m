Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287001367
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745714994; cv=none; b=fxl3/YssITyLvt9ZHDjah5WLNd3WXit1XhSypikvNQD5oDELr2jFZ0iOd5wZLu4XKASNyW+WVKOZWO5k1JxAfreU2j2tYGtVM4PF4b+e0YHqNQbbAf5YZoAObYor/iBCnM0yPYJJ30b326Fkx6bl5lz3A6RaL+bRAP+gCZHAZyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745714994; c=relaxed/simple;
	bh=kZCLpwHdr+zktuvf3s2+7wDUzNrHa8f1loEeDYEsM0c=;
	h=To:Subject:From:Message-Id:Date; b=pI2N0usS3tj8D8McAzBpVPPoSRuOW/VP8NAkUFyvadLQcn0R/FDueTb76RTNT8P9lKuYErAi7lRYY4IUOjQNQBAVH0ZxzJLKaYQs1QgnyOy3tzS/I+DbsK1GEzXoXeT05K+bYuOXfNsilrxb6ow7G3GbYy1akoDkPNYeJ3F4R/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpZFSXLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpZFSXLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745714993;
	bh=kZCLpwHdr+zktuvf3s2+7wDUzNrHa8f1loEeDYEsM0c=;
	h=To:Subject:From:Date:From;
	b=ZpZFSXLPZUTFvdzTkJjJ8E8PtYMaJo+5JIjif8TEG76rt3hb8vq0kwSKUmiUXhnkb
	 IFPrjNBLOrMukrWn4NnOv7QrmFRqMmgz8dK6iSNxfLZoPq4Ytnnm35jvxap5jMXpun
	 yVYZYIujL7ATGSoF6emCg46S7lmUxA/f3NebpMy6bkV4jhSNFTpv2GpmHTum90448u
	 XP6q5HqozeFdHmMAMtK7Xu4jzpm70UbmnFKgEVNcDiJlYPczCtWqHMCvmV9WU3Xi8e
	 LWQl4ezppANR5ZM0SOEpENfw2AUsuUb0TjdSkt/KQd/fe9OewXelepdHrZSpBfE2f/
	 TY5pm4FwcV68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F7C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571499357.20914.11279395516760978447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89733d4bbe8467c0f07fbca935a969418e56c8e799be7c64ee3ccda9e9472345
Date: Sun, 27 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745714993
