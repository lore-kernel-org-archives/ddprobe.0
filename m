Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC3329B200
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749559193; cv=none; b=aqZeFheGEJBeqjdoLpR3SnHeqGz84kVGjtn7IUVwkWHVPda+yGikO2Tjy7BH79TfpdIJURjFNTyMmV0w1MLYAuBrxWMn4qocPtsV24SZx5rywqrzhR7jbEG9b75DD5a9G184eEyhn+1O9NT+V95e1DVAC7MwpRnzONrfb0vpJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749559193; c=relaxed/simple;
	bh=sXzON9SkO+K+0HBd/GjfR8bAUOaRKw6k5ZzXRk4giy4=;
	h=To:Subject:From:Message-Id:Date; b=Y4W4IWPutm49PzCQfZdQGCy7B0BxCPu9mRnOUKIjxTpfu6oChZePgFpHxxNh+7cqJasV2xeLmjtAsHSNT4uqX8H687En2NAzZR/6TjWdO/bfP5xrxCV4ii6Qhqdk5wVIupwZbyddIFOd+EGdeiILm+vjbn7lsM2S7nLef0fLRwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC3JkTjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC3JkTjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC18C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749559193;
	bh=sXzON9SkO+K+0HBd/GjfR8bAUOaRKw6k5ZzXRk4giy4=;
	h=To:Subject:From:Date:From;
	b=tC3JkTjbg+1XEqESbMyTxmvU1/qIbJ5ycw7tgNxX/iReYIOqovnjbKyO9cDmnSREy
	 JANWFbyXO/gAjSMTszI4mF3MUgTTm+e30o/90sfwmb9AA4ysZN1IuNbCL+NtTa4RO6
	 YuA4RM+Q16A1HQ29R02Cg8Gzcq0L7Z0R/Co/bVKQzAcDzm9drxKxvpYUgXt//5R7ZP
	 tVSlXBTt1Yu/KbDsBR9DZgqTLQYRieu5upmRBCt+RJsMZxHOmSv39cU9LqHkUNEGs0
	 4F9vaMAC2pb8bmVpcLWee2LzD4oFesE4sbM7wHRVwD2MFUTkOWTYLfwHsAcAAvclv6
	 j0OaQdsxG/Pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F133C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955919357.14065.6543245813892770982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6aff2f369db6119dc4c2e4821d86cc9e64ef48778c5024e6641618b81f85943
Date: Tue, 10 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749559193
