Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7028F59
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707103697; cv=none; b=ecxn+t1wu31zg5BVc0qQbWdBlZJoscHHkqZwAZBzU69QefflYK3+Iul0ppsc6dGZeHp8UZep4qa9tDurb2gY+jST+NgziIuaJZhEzpPuD7I56vQaQ07SWeleOJR8devNPYkmno47kYYzKNVE1hJ8FomzMYKXE5U5Lz8s4xGcRvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707103697; c=relaxed/simple;
	bh=GQeD64K51NaYYHOpUAwGhEmacK2N497qX9mLg1fz5Wo=;
	h=To:Subject:From:Message-Id:Date; b=ovmCiMyd3Sj7n1WU9FV4xeM4fR8SiJOjwfr9aP8Rt2eZC8Mt3Ozickz+GlZhiTkYV5SqnVuh5iqhiQC1+2Rl5R8aabDXaGuKe1u7QsFYaclQIERVFtO2WbitP4AQ20Rr+dQzuTEzPxQeZUvs4FgzKNl7sKg27KsUIychb52pm9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa7p76oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa7p76oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A05BC43390
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707103696;
	bh=GQeD64K51NaYYHOpUAwGhEmacK2N497qX9mLg1fz5Wo=;
	h=To:Subject:From:Date:From;
	b=Xa7p76oMwyR1hmCANHE9OuuQwtoovBlDD5ogFSzU19XcRx88WXskFLqG5fekRpvPp
	 nT7RNPIG3DGn6qoeAD8VK9TI1pbn6vukFKsEWYGoJFpJU3cgA2IVVrQ9ldedyByK2W
	 EdS5lO62sXjKYkUaqvkTWWd5zdJi5lRUHTPtf6BCWoz5I3RBD+eqHvszY6ja/B+tfH
	 bMYwJdjWofc1N8huKt6Xmil1A59J1sqj7UZi/9UD5hUHABS/VHw/dj7UNEY6UeqZQx
	 GefLPWaWlAeG7P4vkSO2yx2a5Q7csB8jhR3KR7Lviienc7JpfJNmeIJmiFh5Yd/pxc
	 o7Z4SQZcSVnqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA81C48286
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170710369637.26975.614444816439315123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efe25d56aa909ded54d05d325029f0d9b2d4cab23173a7ae138a24f1f4274c8
Date: Mon, 05 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707103696
