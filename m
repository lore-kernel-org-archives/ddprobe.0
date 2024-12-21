Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF7DCA5A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734776754; cv=none; b=DFE/QUsZC/ohUZXCrnlRiQvd7djA2XmAZaoYgSAEbHsrbFFyZE5D2eswv1SFI0t/b9k29kxzfMR5gQCDKO3edhTvH3t4khUN0LnC3MtqlYBPh8gLrhY0SooA+BFieWAa3ED69+9Kzf9POBL6ySZ6NgDaNroyN2Q1MT7bEoVVJic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734776754; c=relaxed/simple;
	bh=63gs+cQGAYfwzfbrgzCBIZy0mQReghAiMgIUNj1+LbY=;
	h=To:Subject:From:Message-Id:Date; b=MnE1AH2kPfg4kBRcfdAPPJ9QnLsmu7CytWjMG5L398GicYjoji+VtTfPUh80uvUYozRyn9Z5iGu6f/hAIq3qXrhZTSWBKu27lzNcvGO8oPOQDLsisZJaWfeh4gV5DEfHTVl6sXyAa6c/pV60wChh/hV/XkSCwYWJOBsY1aXhN0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2YaPqF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2YaPqF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C1C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734776753;
	bh=63gs+cQGAYfwzfbrgzCBIZy0mQReghAiMgIUNj1+LbY=;
	h=To:Subject:From:Date:From;
	b=J2YaPqF5C0WkT8n3yYoNxREQ9GXMnorIlmcV3EziypvZ7B9CRLxIUKn35Ql+D0yUH
	 EASsKtsSHYLnWNjFoGFVTBQJ+icYLlr1Xrd29H+6MAEm0HfHZaISaBXX8A09cJyFiu
	 50MBPPRWeeIOdaeIhRVHybffAq1/90hyakJ9+6HYkJIZ7znTodQfWzVNIB6BaL6lER
	 KDr8xH+zcjgBg6aHpl3eA+TOaHqSJOQ3aExy9/A1TCUbSPR0s3iL5EcCxA0hPdl3Vo
	 kW6EcprItjNy6VlrSyuXL9VOMomD2l1/H/9rlGJhjVE/Qb/vfVQrwxm9GKanEiakFd
	 ay5j0yCIPwpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA1E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477675359.23266.13154214281175447584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5769e80427641eae2328441ec204be064b55f56028112019f56650f8293093
Date: Sat, 21 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734776753
