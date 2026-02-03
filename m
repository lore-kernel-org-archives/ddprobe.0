Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D7939E6ED
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770134034; cv=none; b=ru9OIsWJIRBKACMrXBJWzOsWQhql6pTM0eootrpccN9Qf1CkTuIsjlxoGr03DJ0tviufCIEEACWQW68ostzVyPa+2sX+ftaHM40bjkOeUWyHZnGGOOprSLBucpv09hzSLYl+Pa74sYf3/TUydbefXThQ33Ogg7OL/Kgq+qRSlhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770134034; c=relaxed/simple;
	bh=BAXRrklUHwdVkOj/cNI3tXMcMrJsfwnkj/1ULIp6j6M=;
	h=To:Subject:From:Message-Id:Date; b=X9SHh9vk9QgAro5m25VyNmRz0PLWFwHxrP9Za8x6JaHrVdRRTCMjsKvhePTCp6dsPrhdSzJPzs16JLAsHyAKwVsj/RmLE+eHPC68zuyGXcUJ5dX4jPAi/lVyYpCK/BGwDvPb+pUJX6Kfx8xf4Mg9Jo9kssLTE4vkQ6x0NvOf/3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHV2qetx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHV2qetx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04A0C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770134033;
	bh=BAXRrklUHwdVkOj/cNI3tXMcMrJsfwnkj/1ULIp6j6M=;
	h=To:Subject:From:Date:From;
	b=WHV2qetxZCJOd7MydEW0Eo1IhnCZSEVChWR5sZEmARtCXAKH1jYn4cpANppW7TJW2
	 5o3DxllXNdzqQiBjYXoEu3Sy9mC3GPf8BfwclC6gzRA5e+bohyE3k2SuFaFmowznjX
	 048GjT1tmNU/a+0nAz6Ke31K6wpSgUhKRJ4X5XirK5xGLTyidoi1RQJI8pKW3g6TKj
	 S2pF4YjhTl+xjsaMXdsv7Rv8S9WJAB+BcXRPxmh+kMz9pJ5t+RfUUXbaWD8P4oEEG1
	 XKiS9826BSrNPzuLF/nngLRBa0niBEV377fEqHaJ0p+WzCOA2y0M2nTA5VYXlamKBg
	 bJDRSuZov9PWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59DE87841
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013403361.10427.12147693788373919606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93602d7b00e72769024464300c94d519795de2ad7f407f377dbb89f0436b09ba
Date: Tue, 03 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770134033
