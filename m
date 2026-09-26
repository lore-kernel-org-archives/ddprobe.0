Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC6391E7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790466034; cv=none; b=ec9H4OKjfkVw2DPuGM2sMUCCJOzT1Sy1XPvYXxQEFVDYPHba9bDQ0IajHssQdMfLD/3T8HmMt34t3oP9AZKz1xl4nnJYu9Z05vxeg3QUbYRi02EZa4Z/KHQgZBrDsB+TO9oCycbgmPAsZY7K7mqrDqvZB1xkRcECqjDx8b5CbEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790466034; c=relaxed/simple;
	bh=TwDc3GJ+SewSPUgSRa6236PrOOmur4RjdcLxVPJM2Zc=;
	h=To:Subject:From:Message-Id:Date; b=D2Aw9gQ4UCjzSNm7b480nWD/iHrN0uTfSW7uJ8uuHZwdygxIKrC2YaihCCkYPEuPE9MegcedrYAK3TjhO6m+Q3ggj579/q3/lg5LAvM9bdN4hB91vs9TPTsA0VNur/D7uqscsECh+DyqYCCqu25nxFnxoMOnTlKXNgnOTAb3LhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKXenQt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKXenQt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEDFC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790466033;
	bh=TwDc3GJ+SewSPUgSRa6236PrOOmur4RjdcLxVPJM2Zc=;
	h=To:Subject:From:Date:From;
	b=TKXenQt7BPYQ9q1VmwUeZ0DqWYdVW/F6xKPYWDP4QhdzX7GrURROO54tVMbRj3P5n
	 LSgu9jOUHZB41I9zuuq+x1kaZZom+PfO6jZVAFY5Jg8aHLgvS/VPmYA60SOY/gFfS7
	 SVluzwPGDh5+x3HDO5Wj72dzR/JkY7eBZMpSuKkayWOU4/Tz9Ny1f8zvoQcFRmxCxE
	 NPbUKiwLbEe6zq1kt+fkxvLewgu6d4yy4tYJnucinJ6HlbIu1nYIKJC2jX5dQmSNLf
	 jY8b0fwH07XHrO1Q9rvLBEqWNeeArDa7scjVT4iRxTXE/PR3tG+Sgd14ZfBehfkQDk
	 Pleg8+2FZP9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5A0C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046603368.25015.1536935670913510713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b077dc8148d49087aaa98a3cb3614e5bae43b969661421e05376cc3ec841ca04
Date: Sat, 26 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790466033
