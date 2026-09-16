Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849C93EFD17
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789542034; cv=none; b=gdQGpOz2yrADBnP7bk3QhAUzFxFCrIzb+Cz0Q8mwQdnU28zOIiZMJiPzQj1KKVunBmpTgGL+kGDqBRHXy/apsm1/WiR4Ds4sd5vmUbLN74oox9n8mOu+tu5ehpQX5DQOBXKXmsuI9voc/KAWJH4z2sluclee3vN95OzvOjOQO7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789542034; c=relaxed/simple;
	bh=z8VHuTsMIoXdaj6bI/UaBzoWD+kH3iNztZPd8lpJgVc=;
	h=To:Subject:From:Message-Id:Date; b=h0Wy3tbV+o2kbpQuM5x+Tc8iqo7aRMJYRxhgrHJcQ0olMHM0j6ipdP+mxkii/x7G5MS3I55YfB2O0VEKSAt25Q15VMtZNd8xTYOIf8gDx8au7Tt+PIqwo4BZrPgYmlznXuF3EyvqY8qjJLWiIfTvedE6V2/+t230mCJDueKbJYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emTPDEi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emTPDEi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789542033;
	bh=z8VHuTsMIoXdaj6bI/UaBzoWD+kH3iNztZPd8lpJgVc=;
	h=To:Subject:From:Date:From;
	b=emTPDEi6YjvFqVLfeexXi0qmUjv5VPiFP0S+ZjD7RmJVlZY7tOrkERGBdnS9rnLgg
	 X/RZ0twYirNdimHFOc3BGlyIYfRUxKk9DzTTvt6XNLh8fn8cDSHfUHZKuslYFKXVZC
	 s7IYqMNGVq08fX8aEPYCvb7XTTuN+618Pu1ir9yB0UBChj2R0VEVae6xxYf0m2Wbif
	 fofSxeq8LFDaYBv84jtqDjldeJFS4Yjqx5p45xeJqskBDkYFmmmDm9CEFwwpVnHDDm
	 hiMy3mX7OEduaMozwPA27RGk0IkiqnU5VOqCzmRPwH5xtPzlsb3QR+d96Lag52hahJ
	 ujsyokvlsXGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2017C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954203369.14736.6359358896671452311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c326fc6f9549145da03f5c787712cd11bb2ad56b1df07e40d01eaf8504d15337
Date: Wed, 16 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789542033
