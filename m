Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EEF1E260D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756766394; cv=none; b=M35cPYmwcMtPv1XJKX7Z3zjb/1qfq8oj5drgO/IGBZNftWUor79ZmMwXKlR7UDqZoDWmZSk+JeUHzMQwXW9oWHhOHsQBzQKSmQ7wUKOwkXNq/VEkQRS7Uda6BdRL14uIYEi656BQSy2JeMY3l293a3+iLuqpKGyoWoN0sUqPUQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756766394; c=relaxed/simple;
	bh=Epml54oA2QqybCHcL+5lPcytW+hbLGmKK/ovKP9H0hU=;
	h=To:Subject:From:Message-Id:Date; b=RbyliiYctk8IaB6KhiNWyUrmi74S9oVTQQOErmTM+Ob1uHa4EIQsu6LGV/+BtnRFP/chKre38g2J0zN1o2WpwoioocxaWpzeGAngQusoAMcbbj9BrDjOaNR16zNQLp8pD1zgGYZ/Y+nBl6wJrF0beRmF5PNGj3h0VpesJ+FQxLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6IVmaik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6IVmaik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756766393;
	bh=Epml54oA2QqybCHcL+5lPcytW+hbLGmKK/ovKP9H0hU=;
	h=To:Subject:From:Date:From;
	b=l6IVmaikcS2jRhuSo7oKG1GPIoUZx669TXTOW8kWnTJap+yhL0f6BsivDSvy8PwSt
	 teaAUAV+xxkZZCXxI929J5qMw7oeK+ckgv5BrLG5+ijPMc00NMWRIoylFKFMrr1KLo
	 8BrpDQl3kAhPtZYER/16WUa236HrXvyjYCKtMSlcIsUnZKlzN27UJZ9F3ERoroGVFa
	 zNXNnPzxdKjqpSzzpw04dHCFNNM2o4tIt6dqn95AsNxlDxBWlCv2lh3ugsQWTU7+WM
	 VzYyk5DmQ4s88AOq8wEXR9M1MkyNF/6b5W1v890YvqpX4DbDhRLkPrvqVBOM8FizIp
	 XOLalc8qzDxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91797CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676639357.29891.14969904641904180790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470d030d602bc2feaff8cff0e524f2c5ca78c9ac447f03d2a14c82e178c5a639
Date: Mon, 01 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756766393
