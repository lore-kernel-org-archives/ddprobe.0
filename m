Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633F12ED84B
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755750594; cv=none; b=Zdb2fipTpEfQX53c2tfSCkY6Ek+AB8MvSbWkY8DPM6/VwZuDoZKMqp577z98zxVT2e6DPSRISij93UstqJGrnqd8Ux8/C96uGOyRGtYwksqx/g+GpXFx8+p7E1XWa4I3LN3r+K3wkP0rlcKO2I+UYLHnJRs7Jm7xXMsV1KzZwYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755750594; c=relaxed/simple;
	bh=Dfiy2WylKntfYSSsvCPDKkxJhHa86QHW80ZZMhpiy+M=;
	h=To:Subject:From:Message-Id:Date; b=lWZCIKF+ieoSiMA0b3mvTAzhrNu6OX8oO6p6YpSg24+O8R+eKh5qeC4QF7L62QH6ctDQQafa5GxihhTq2+q+sOQQQxxUCuyzTVD9Nc+ezKUTSNDoxO1aUuFhT2tP32avPZJnesvFIzzYjAFxW58tMlFRdR8ey8tSp8lbfJoj1Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxts29Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxts29Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576BC113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755750593;
	bh=Dfiy2WylKntfYSSsvCPDKkxJhHa86QHW80ZZMhpiy+M=;
	h=To:Subject:From:Date:From;
	b=uxts29YojQQVuPCOf/qUJHIkfbmz7FEqmCruikLiQyB/CyXJWe4nI57Dy7T3j64HO
	 xLqB4+ZM7FC8jDvBhYu9qzJgzLGkceEeCLWnkMtxGBuHluYjXsQjIpArj2A2Iomu9K
	 mzeGQChMyKDp8RxyJ0UeWZSimI1dPa+mtXG/jxuqaEjMcK39GAv3arHkgBQf2xV08Y
	 cY5HLC6/kzxOo2sr1cmhTWXafR/kkUi0IlpOVcGUP+5uql79XV0U4UvueoJwmAeI41
	 iYhnMiJHByW91rSlPrn8qZEfnLVxb2Xk1FIuDuAr+h310JmxEO7FExF1mflnzVsx6c
	 PkRaMkFYGZ4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC5CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575059359.29062.17657988181635350564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b7d7571b79ba0a673d017502f917eb8ac6108e810d1aeddd996785a01ce2fc
Date: Thu, 21 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755750593
