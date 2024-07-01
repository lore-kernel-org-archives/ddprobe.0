Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B4815DBD5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719839723; cv=none; b=ghOFeGoVCO2pvi2T6YH+aUFYF+XpAR+YyuMizgVbkL7wt9+Hu4KfU0zSaCjjj5y2YghrY6fAUJ+S0mS4vW0VBYqzMNW5IyAdHR/Cnuiv8jeXw5GbrnBrtlK7K80T/cohU7pBnsKW8YJqGM5rB1uP0GqCf/aY3MFFAW0cJ3wX69w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719839723; c=relaxed/simple;
	bh=HM0Umi0wc8rfsbF3XaARPtxao/WY/sXWLbRSzhfS0f4=;
	h=To:Subject:From:Message-Id:Date; b=rqYxxgO0CY4JcGtTAvJVypBcUM3dnuiZbPQu6PuGS7/FLdKdFcv34phhACykHaEKmFDrE44kyw2066tZAGCoKJ8FuDyU3dbQEw1i+MVTxZ4Y4clvUENGQYThF1QxlsTrENQTUaxJgHz/38Gbgm7zOpgbOXQp5AUiJSPnaKIQMJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2xZJ/5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2xZJ/5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA71BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719839722;
	bh=HM0Umi0wc8rfsbF3XaARPtxao/WY/sXWLbRSzhfS0f4=;
	h=To:Subject:From:Date:From;
	b=b2xZJ/5wCq4QlBHJ5h2uA+5Lr+QxbMazK2QWCdCw+c60OylSZgixeyN25nbOkWGce
	 FpeoXdmJeCx+3xiC5Z8W4Pq317MmnnWH/KQN7Yh0GZgYDcfDTEOjqknW4fGXE1swSO
	 hj7dd1hKglxDcz/zyiNF+GXg8zbhNrh43gqnc4EjrZOnQCe0qwON6yace7w/XMK6sU
	 bOOTH/jBWnN1FmqDtIvDCmCnjIYxh1RrsH2HhF9pN30WB7gqj0nadphcT0R1M3qjbU
	 eBydqn9NjwEuO+UKOz9AK0H7ODbY2WNwxdrmLqB2hBM2vO/pmHAljuG8+z50r0a4jT
	 LXsX6vE1/Ee/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D9EC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983972279.1969.5622187751389948725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589d7eb7d51e59ffd8272d1d9abf9c1d3dd1f398a51c046192b44ffb9cb29998
Date: Mon, 01 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719839722
