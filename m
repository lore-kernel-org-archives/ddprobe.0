Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A09A3CAA41
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789880434; cv=none; b=Z1RwSXTreYDYeBzaUwF3Lw5hHkFfXLg6Ntzk+YkFyb3WEGKXreKDJbIJyWi62SvYhPxAwKYPWVlmnCeW3McK4VCKCMsHrAw3OyoVURDomEUqsAHn4L9/oV7v6nnQEvvwS3Lmrw0setMNAJ81UkIO7xD2QcHak0H0WUqGPQok5Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789880434; c=relaxed/simple;
	bh=6D2P2c/Q5fsDlxcv1LT5rhWYxASxGuyF1zYaKpZuIoc=;
	h=To:Subject:From:Message-Id:Date; b=dx5hLLcT+ff/HOzJSi+fpOlIJWWMRDl2E2U6xiHRQ5V1NWo7lk/hO2GakMFf7DBokXkoS8AEtN6fJVFk8iw+lVbTLwPr3XrgwggD1bYK5/hkeip0kds2dABefPUHP9esyKtsDQcCLlKPsAvHn5qEU1hEVhLya8X0bPiMJW4Pv8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDISNXIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDISNXIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD31C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789880433;
	bh=6D2P2c/Q5fsDlxcv1LT5rhWYxASxGuyF1zYaKpZuIoc=;
	h=To:Subject:From:Date:From;
	b=XDISNXIwjiXbQAG7jspsH/ElDucL5+CHJ71N2Tsuw2YNujOy+zihUFmJatB7b3qz5
	 /piP1xYOqyfO7eJJnbBlcRE5Iyt0uVcXVEZW3wqWStjgihtJworbkdPCuoX9oBYjJ1
	 V77S2BIPfWpmiI5s9lS7Uo/4LPOQQdp4VKCtJyK4XcAz+CLAQsmxG7L85izbj2OSw2
	 L4znlkAKmCQvpZi9jJ+5O8mfLf15SBDSa6og7mo8n/KKRDobHALzoPNmDS1MV9Xq4M
	 Im1zUj5Cw6E+Y45f/KEqluKTwsbqMfa4GmqxayXJI+3nWC2Gn74inc6kiquovXj5zJ
	 ZZAxJNgK8ZSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A905AC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988043368.14390.9001403107908458547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853344d1bfb7f5acfb639364f588b5cd72f9d86b1b175e9dafc9610614643be5
Date: Sun, 20 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789880433
