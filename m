Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D4C6D1C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713476364; cv=none; b=G/aw8JmGSr0JjG7d0Kjlb0cYIqwRgdzUmLh+GashuAwzYndvLLcKDCN1vhcGuJx2FFbqiMkNkfU7PSNVQxS2giXRn0k6YzL3sUx9lWhbyPjFfBhMxWZ1ayHwhlzJFNDaQSC1+IeIPoNXPyaBY8fy4ln8b/0X5Age8mjW7TKQHq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713476364; c=relaxed/simple;
	bh=XEvLTsT6BnoFASUun2O9e5tGpVKLwqAYeaOMbS4ELpk=;
	h=To:Subject:From:Message-Id:Date; b=kEevsLm5JFSaZ62RnJTUAmEctD9Mcniqg14Mh5vcimOFjNngDx0bU6ascEVsV9T1rfOS/amsfjDOb1rAvQ0FN0wk2NVpwdXBja8Hbpl/11aLdCuS5MjziBtVI/i+OnWKt/fhDJl69vdVKX3GJj/M/3zZHqdMc6Q3YkNTQDC7hqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESBKoipx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESBKoipx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC39BC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713476363;
	bh=XEvLTsT6BnoFASUun2O9e5tGpVKLwqAYeaOMbS4ELpk=;
	h=To:Subject:From:Date:From;
	b=ESBKoipx6Nq9uD+6WaoeLxnS3UiOW962br1o715+Jq39umWSr6KCxjalC8TVTTE3P
	 ZklF31cZ1KXEssLGicu8KtUbB9LbCsoh3/zw2TS/1e4y+PqPzExVtkRXw8zq58cAMw
	 xOs/0UOlLz5TFC77xV6QoA6QbZkYbiOMCs5dGFxA0/pMdUVGOWRn0n6fDl7fn9yUL8
	 t6aVYg56DnZhpJOqDuudCDaiQCokG5d0kr8WyWQ+SOIO2Hywpy78KaAIEpDcDB6mFZ
	 2INfsGT3DfWngRwZtCjXCsdOv3HqgliyT8IKbR6bPOgeEuRRXkQ34xtLaDR+uJakRz
	 uDYIDlfnsVXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA555C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347636275.22264.13172861777884365937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a914055f4a60fa6d3d424e53987d4758f8f75c168fea258ed69adbbb62547ae8
Date: Thu, 18 Apr 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713476362
