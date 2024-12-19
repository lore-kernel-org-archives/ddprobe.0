Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348077082B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734573354; cv=none; b=WHLc24X+grTVN6ViVzH97/imuRLAqRLqBh+8/2Q90sPkUCOos5ekcMr+v6TbcirnT5HM+uO38v2kN+K+gDT6eXxTDqV/QHUmoVrTEi5g+zPbetud54uSa4gf1JKXXUr8DPZvFjaByNmmK4AsKxp5qywXtE07pWeIPD4dQvvf36I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734573354; c=relaxed/simple;
	bh=YA46AFQ4aPC/S75ZRts1nxZiVWl+M7IaGh8c07QPvCo=;
	h=To:Subject:From:Message-Id:Date; b=MWRogK70Zo8izRm+EpqzKR0bzmbD7UvzPlVq/TPfHzJh0C8uTdhcTw//2kEytxTvalOO9BEaibh4dPmvcqOPAGZKvW5Cd0TRO4rLvoytZoS3AaI+9tcQ0EfQbkm3wGRt7RkgKIopwj9PMZtc0CCr7Bgqr1oXA9EkVLsC1GdHv5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1QohAOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1QohAOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3443C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734573353;
	bh=YA46AFQ4aPC/S75ZRts1nxZiVWl+M7IaGh8c07QPvCo=;
	h=To:Subject:From:Date:From;
	b=S1QohAOL3KQObgyx4yh3S4psEjy7Q4LzNH4qaqK16AyJomBoGxzs/5HFf7cV0AQL/
	 hf5PH7pj4Y2rlVQMt3SBN1ktr1zzc5TK2Knf0VfmbYaXMorg07NxdAbK0O/aPHwYy/
	 Cbd++Vu1i5s3+/nLolst8IjhMFsT8RtNyEaPI+IIAkD/wzMjsNkwsFbQqEfTRVz4Ej
	 m9AFNvtkAAWw5Hke+iYzlko+ztyqBb4XMEvgYYqb3Zf9OUCNe5hCLU/u9Qu0iESOhN
	 Bp7ln2TBoP8rMQVdvDVlD29mMrN+AYhtbVh/53VmVCkGW7bpQPfMdAnKh08Ufa925b
	 vwlMHYnIoocqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02A5E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457335364.11742.13704846904545658387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288b1515469ac924dcc3c5858dfa61ed40d95ae560989b89d7c23fa3ef565f92
Date: Thu, 19 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734573353
