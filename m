Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320721684A0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724855754; cv=none; b=nhTH0HrdD9MdGIxgOSbAxszTcDi1xCVe7Qe7/AwMaz6yp3iJBMBXoPiLvXmI79GCUjHnZq0Sot/Msd9I2n3WWHiT/oueLtYqh++oVZpLirE8JfL9nbAvj+bAA5c5YDMagidDus8wtaUEWJhrfTBsEHOJsLERO16yYndxf2eMxD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724855754; c=relaxed/simple;
	bh=5jZ+XXxdMFeJuAMAS9c/u86gFGzQVkxOTGuAxkUqtXU=;
	h=To:Subject:From:Message-Id:Date; b=Ut2jbK6DrQw6zKtgB/4c7UqczhVgVsPyK5ENgrC6QvAg2QsEm6858Y5lKSqS2NGKE/3B+rJIkbsWy3xeoxyIObXxIhcTR9u22eWMdSTQHpxfBj1Lr+t+7ro50lIxrl5QAC9ls+nYMbSsZtU+ei7J51k7lP82tCRisKIFpwHLXQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8al6BUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8al6BUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB067C51AB1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724855753;
	bh=5jZ+XXxdMFeJuAMAS9c/u86gFGzQVkxOTGuAxkUqtXU=;
	h=To:Subject:From:Date:From;
	b=f8al6BUcNkIVcZ0Wfgaa6ktXwQxTDesWZ9ugC723QOJkuZwWHXxWy1dCrO/kJJ17a
	 +lVL/bOeDAuGhkLpuS9Y2CEjiES1eECVS8taRC76Hyt5kM0zXG3ZUHtMDZO9bm2JXg
	 Ndoqw4PWJZ0uoXUlALlALObRQkNqskxSNqVC6lu4czQSaTGngBLeKVamQe+Uzm8OyI
	 6CevG9bcMs3t5NltoWWGo1kPzWBAltgLuZW1YKFsyTvAUzjsXUuXhY3topUmypkQiC
	 ayqkNS7XpkGdRroTGmGK7Ir8X3FlJ2/VcQVQZkdP+JLM6yupCMTat6UyM3ZiBp6NOm
	 r/cHNszO4FOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A89AC5B548
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485575361.26422.10518871205382014302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27811a579a2dca6720499b135475a96a93eedb62eef4660961841caa4f97ed1b
Date: Wed, 28 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724855753
