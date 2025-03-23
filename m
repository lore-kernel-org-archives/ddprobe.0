Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C82AF1D
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742756396; cv=none; b=X4o64gAL9inCixiDqZoeO/sVc+YW4SvY2pqoxhMP/6k1N2cUPI385HugJ0qLTpBF+a1GI3lFCJIn/2i6naFRAlUyCyUbnDhDr20Lx1nJxPNDP539EX6nibfbpXXpihMxunO9ZCOqdl4drDaqouZ+ObUYHKKe2uZB41fq0B2zTBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742756396; c=relaxed/simple;
	bh=SaNfWXBWRMsutTfa/kf6PooIpcIOXkeW7GhZgOzl1Zg=;
	h=To:Subject:From:Message-Id:Date; b=N17fiJUjTKYLrSAOfZq/+cT7HWQ4nacYUHPfX8IXk6J8cT9ngceZ8K4R1Gn67ZOYeNklC6xPwyKzNSKFu0N/NSsc3D47rgf4t8BpfIyja5ukrqpqaUU9u9tVNMj8vmyUwmhyCv3I1X0SUyG9s3OZKDWFtzpVWfO/kO7FaoPG2aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0fZsIC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0fZsIC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84BFC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742756393;
	bh=SaNfWXBWRMsutTfa/kf6PooIpcIOXkeW7GhZgOzl1Zg=;
	h=To:Subject:From:Date:From;
	b=k0fZsIC/UqScxfJS7Y+MIZ7EzSvmQh3jZUCq6E6x5B9jWFoqexxsT9LRj2X5Po992
	 f2I5+dA6b98j72YpgA5QLHZvGBx5AjibZB2KR1GSCys2YBgVRiuUIgQUWiYhDcrhAx
	 sRtL+eDJ6klfP4hdJ41lW4PfVtp3VWx6oAK3jdS3cQpXn7efMTQd82Ev3q4C6l8Qw4
	 84+0uIvncSeebV37205kw4Jp5yo3P22RLQPbcsiBAZafN7ole0vtP3jOoXeSdbEDwe
	 C6ytNWSEewyr730fgoShdISNf+EX+4v3NVDbECMww0DVEvLBhHvOFF5A0HZMUVvCPF
	 s/KSK441i/aGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FA6C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275639361.19328.13156866948940076153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d673aacd69d1eccd1860263be39785b78338e783a9e7f5eb2e85db6a522f08
Date: Sun, 23 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742756393
