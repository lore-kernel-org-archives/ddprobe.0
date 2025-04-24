Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C025C13D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745479195; cv=none; b=k0O76dRJlU/mXdiCMrz3NpCYqDi1SRtek5tTs7bnBNoC39I9PC9H/NoK00HSmjAjvQWalxuU2AIJUewcQAv0czE3wYlmpcumzkQOneYvvMNYIWpcU3eOf62jcG4olt3UKWwHAcy2xI6v4gu84y0k6oOJ27qkdayzRaT2JEbJ/tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745479195; c=relaxed/simple;
	bh=INvAKzHHsEEVp88Ndijr/KrOntrO5oXor/RM1NTO7FA=;
	h=To:Subject:From:Message-Id:Date; b=g5K8VtRmM00D19RaAzOallaUcl9tRgu0fey152KTKxcjr/BghoG6WNUpyin3HVA58Pk5thLatwh7or1R/OI7FF2h+HQ5Ib8Rfb5x0o9INimu6sX4tiwrYn7e413lfuuwcaoGqXQLYq2w4UHyYt5sgCsdiHAfNvbDshHP58Ewc8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3VkTKHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3VkTKHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745479193;
	bh=INvAKzHHsEEVp88Ndijr/KrOntrO5oXor/RM1NTO7FA=;
	h=To:Subject:From:Date:From;
	b=h3VkTKHzsrqpl+w7j9UaaZGaFXw3+ZKiDdwbZsEz8BaTyfmUJdPtPsOMclg0MQ97B
	 v0jnBYi0Oal30x+BEUAVe5MgTvF4slU9GIm1t0Bl8NIBYgjbEMTEtx3pFn3d9GbTJE
	 9E82HkgrFkZV28lDdHsGhNo37yX09gAXLRtEU5rH9kJ7h98wxT7GYPnyGPimq/dJe5
	 umOTP4zVUnCQn6v06nJo6CFyBuyKZH9jyXPInZF6PgvoMJ5kyxbjEVLZTNQdaGkduC
	 Q3c7rjz5G6z5ibCPRvSXIawuXKx+KXp95MBNUxgjES6HH9nqDQv3AMsFDoxPlj1tIs
	 IZ6q842XFtLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A0C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547919357.7695.5364742422552838265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54aa4b83c14558ddaf566aef22d217548cbee3fd460904844090404031575df
Date: Thu, 24 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745479193
