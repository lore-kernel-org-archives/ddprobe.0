Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601DA171A4
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713831023; cv=none; b=BBvXjMdRIY3GqHE3RFDkUNxSWU9qZA9y1io92LDxeRrop5sIb9rl4rI3Yr9R0B8GID/Ds7gm/AAJiQ0NYSQprUVgErdRGPtOsgiJr7GXj3Ol/c/H/weYpsKGhrBUPInfNdDl9fO4K8O2iuW/4GXTxXFsHK9s5EtNxuxrA9Rxfro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713831023; c=relaxed/simple;
	bh=tpcqlWUkjZclyzS2xi/NKGoXRfltfNYROzOBH/4kKL0=;
	h=To:Subject:From:Message-Id:Date; b=sbu0ct6D526jkJNmpfQnQ2NlY7+V1FCzdIuzfobWxOZsijh+y2PPTSVBqn1f7MXbYEBaF5/UpAlrl07bS9V8nEI6V/+zo5PTpFbyt0Pk8bhVqdd5F/rHjV6AY5wt+7ojDz/UdZnnxmycA92Hmn2Y5i1tyxpFxw2Zdy4ReHe62C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4AzX1IB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4AzX1IB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8531C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713831022;
	bh=tpcqlWUkjZclyzS2xi/NKGoXRfltfNYROzOBH/4kKL0=;
	h=To:Subject:From:Date:From;
	b=n4AzX1IBJDLjNR2OuM0sv+ICJjW62TPwx5pQoKOGmRHjaexob12JoKuKB4QXE0HDO
	 4XpY2AZukBao6yKOlQpD24P7iSTJlXp4o3Jf5zKsOBn3plu3wuvOZPUKL9Skts0aE2
	 t+daoFEbHYRIcW0ZsLgzd57vQdT9YystfuUpEmAwDXy4b2aCCBLWaZg+Fq+GWPvgNR
	 ZGEHuDGCdK3bUzeHBzvo0RTWsbp7B/j9jPICLRQtikAa1vw3xeDiHwjtou/4/AWudW
	 SovLx6+rX7y4kXJmcW4mhc3KwtQZrR5tlkLB8pzWlPaezAVBKEU/aiGOC6N0jqDymG
	 x7hSGB4RN450g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C32C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383102279.25865.12599390272880943887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3c798346964695a546e0aabdbbc096c82f687802d9e6d65c3336991d8ff3b2
Date: Tue, 23 Apr 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713831022
