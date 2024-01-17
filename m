Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E36208B8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705502897; cv=none; b=PlzcRyuWNQlYTua4ou2RLZ2bqNyre8uztYvKCRlLqBQgZrS74YS8IcbjMYxnyTjOIl+R9PX24TMVVC/sN8otBt6l4bX6YBRmzz9yurXhwTnPtgmyVWjFT2dq4DvK+4cf/faYnBX/TcArgoTt7kuVpbeS05SL4ifhZ6281XKWaaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705502897; c=relaxed/simple;
	bh=lsBMEYi0eHk2R3CquPmm1TbVq8XriS/0Qqc4gy80I9s=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Hl8qZQMfPzGqZADOg5NgI3qdGsTnYLFSDFKdMrQvNMXMxDZehBgdeyjwhiplRMln9akba6BnrI7HFjsjfe5gV6fYoJKMitK7Q/rejS/OMd9/k5AA0hgaL2SJ5S6eH6DBikAT3EP4nPNfHZ7aPp3nruxn8qvhl8W3XYvZRndM1/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTuWl2/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTuWl2/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744A8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705502896;
	bh=lsBMEYi0eHk2R3CquPmm1TbVq8XriS/0Qqc4gy80I9s=;
	h=To:Subject:From:Date:From;
	b=oTuWl2/+o6r4eRz+4ebzqvzGbZYGSLfgKRnmOzkNOWs//2ysoucak0bCQdW1seP8w
	 NBaNTT2hFQtp25wWStG841V7GZIjeeD46kYHa7z/+7vv+iAGkfQJp6foQAj9HZUM/A
	 j14WiRyAk62Clk0JQ4HNa0z/IXnd8dP9SqllNApSeLwPMbhMNNK2AYtcLa67ML7UYo
	 i3HMHqMGsTyiZD312moSeJGB7S1BcaqOKTSTevTj9JHZDsOHFzzZU8qqnYLSXIIUvR
	 Vn8E8whbIFSfjste41JlT/AGIkjfphqq8XqtVy0HZEf47b4MiT+c+1Gu1fVZCv/UGC
	 MiPByjtvaQQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8F6C47DA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550289637.21901.13884969475410412674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32426096fbe380ca2f58df0e2e710d561a33ed59da70d77bc55d714d9779ae20
Date: Wed, 17 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705502896
