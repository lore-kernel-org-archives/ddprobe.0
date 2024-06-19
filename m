Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB5B1E515
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718840963; cv=none; b=bOhfn6YjRjYICxouGDsG+J+IpnuL/4PUw/Xlr194XbDqdKQBTS4UZURi2ZoMUpBv4kyKUmxO+ZO9p8EnNeBoj9NeLIjv/sna09hp9SWqzXHjbqo/y4feVucqxk/5rqORPDXMqbAorZJA2w4CWIHUMtATrbZDhzKfKiZEa5J7Y+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718840963; c=relaxed/simple;
	bh=DbEYJ95l88ul4YUP3rh3yhLNQHN/ExyjuNn7GQqxSzM=;
	h=To:Subject:From:Message-Id:Date; b=r0dvpoQ6PcutpN60QuBDg8oEKJroqNgVrIsPEy14XFqL9jxr368RB8qiYrjCayE4mQOuaJZ2K3/tZ/yBFdPuek/tF15W7D3DmiJQILwByM5ElxlGUqEU6KruERGHL9dQchKPkBYuwHcq+Y081kDqr39m4ZLqqqSAr0uOBufI9Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYkKnKW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYkKnKW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3494C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718840962;
	bh=DbEYJ95l88ul4YUP3rh3yhLNQHN/ExyjuNn7GQqxSzM=;
	h=To:Subject:From:Date:From;
	b=rYkKnKW9UBAMEff2gvPloN7+4lfVXTAUqP8DCk2KVoiy4PJZpO0VlH2GD6+pJ4+L8
	 xFT5RqGcDF1WuYaLXY6OWH2I+RTr/LzHS535wnbSFnn0PuxkPgokjfXfbnYfCvOx8d
	 vLfNJlErxzoNPohmMooGWf3f7IjFpFV2sESDoz1FApUZ3e+vI3P8vmiJehfFECWqTy
	 rB3z75nekC+RtoOT9IrIitpqrmoILhvCMuLLdsaO5gCi+xiBmQmQ0VJYcaOk2A+Qqu
	 GWzf9UA31mSsg/xMPRaJ6/zX8scynfMSMH+BeZ/r5TSL2sTy/6eQnEGx5pUzH1yG8m
	 dUhR3CX9wf3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A78C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884096277.24418.10241210237479910876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfb5446afa870451bbd115380832f41694e8f71f62c694a1235c0ff750dbd10
Date: Wed, 19 Jun 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718840962
