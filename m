Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CE4C133
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762616394; cv=none; b=Y9mf4d5GrsHE1zdZ81ca7bPxprNzM85ri5DZz09oAAqhTJ/q4wLdijRz/d7OMadqYHqMm3ANpXtAwmyNqGQcjCk/G002kxeAZFdrdcV51vs1HaxcOAxipp8cSmn9LoI9SjGaTg9O4DJZ+uFR/Xxw5UBftTtMUYW3dzeyjQToPt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762616394; c=relaxed/simple;
	bh=NU//cdUEwnuhWqbpqgL5GLM8G12rCYOzn1+JSgSN//8=;
	h=To:Subject:From:Message-Id:Date; b=siJpkf5nJoVN4ApcVTZs9NCPUv+jIukhljt6wvpl1h3fmfSYnogwZGHJWNiyg4N7ce0GrPbasoB/8lW4JWCydtKCQbNQ0h27twAxUDYhyxebNDW+bygtSKBvxWUeZx/YGJZGiAF4bsW8ypXgsarMmR3gBvGVHI43G7n0gfqaIaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSz8FbHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSz8FbHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762616393;
	bh=NU//cdUEwnuhWqbpqgL5GLM8G12rCYOzn1+JSgSN//8=;
	h=To:Subject:From:Date:From;
	b=uSz8FbHnOhh58FdeFnuRvJKQG9lQ9DYfORhVc0ot2qdaAz6xdiq1NGo715zgsXSha
	 IX94pMBi91Z2WtKwMLDgttO7hxvSYvQzKDi3lDzPcgHz7jS6TI3FNDIO6VK8atsgcb
	 4hCD9OMT5pRDJPz8DotFTbiPtCz+ED6sV1636SEYyT3yt7iIuRYrxOJJNyRFfMaO8b
	 +QBTpNZr8JuaM/Li0rMEL9s1cG0SYd/A0/u+Xx0bFHPSBuiFAduxG2ojxXiwxV/K3B
	 AcD9PX0icdRseEXuQwB6jy7I+Tnjf72/orIaArDsDtg7iTKu0fIsUJmBDLcRPutQLj
	 oRsTPVMa2nNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98269CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261639359.16229.17366281374986599709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dccaf8606536ce5aa94985528911d3a9fd9c0d44c19aaf34d16bb2896f3cf6a
Date: Sat, 08 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762616393
