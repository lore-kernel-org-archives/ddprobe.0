Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DAE1624C5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776041854; cv=none; b=gRHXnenKCdGWK5xJfvkdtFUsk/GDcRj7AGpuyTWu06u8Jo/FOJ2IRD0IlpNEnqjXGiBAsiENAJPvYkCiO2wi4Mudv6ZpF5XRuZYTD5yZy7Ql+R/jp+GZCKB5B9j0FqlMWoIGPmaXQCjV32aXOQsbUqMIHZOSD+nFfP1T9rvoePs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776041854; c=relaxed/simple;
	bh=PjM+XrIUbaxs7eFhFdwzxPIor/Z9UDdlUmpZXMYCpoE=;
	h=To:Subject:From:Message-Id:Date; b=JGVkZgMcbCoJxnzzex7FDOLxZNbZ8DiWg1zgwEbq4zj5HYbj3qaAa8GXd2xYUb/ML3AmRg9BqGuKruqYbTgHh7ZYM8N3xFUx6LQOO34o/1cM1eFgl9NHZCi+49X8RAJO1Of9+U6F/bVxm1UcwL5FSg8QlWDkqYT1zJv1y4b6sEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqFT3hwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqFT3hwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF51C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776041853;
	bh=PjM+XrIUbaxs7eFhFdwzxPIor/Z9UDdlUmpZXMYCpoE=;
	h=To:Subject:From:Date:From;
	b=RqFT3hwt9dlT2/wBdVjUF6xV5yx51+OS6lhPG7ZNuIWD4xnmdo9XxVkMb1GzzNsG1
	 GykCkz4l7WnnYsoGBFsGVmXYICOKFa8CwJzVY0dXG6jwacGGWTNdybhgUv2Z/rWSgH
	 6usADIg9OTSEtq8uLZXtWGQ+sb7/Cz8jRs73Uybv4mxZhiWdiKRi410nW9MafJG4z6
	 X17rqD0q2piNKX/NbigK3LcEnUHlXUOlTy5n1j5BMCkobYnpuAej3rmJXf7oiX4Udf
	 l9b1FwG8b9dgUpO7b6OCoWSq99Xk3jwvUWw0Su6oe/rNOaWuvaZodbbJ/20iJ8Z6kS
	 MjIpuD3Vk6OnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E8E937E0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604185368.662.15936269138987532786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ec52318b2ebf8faa4d32645b97975e27a82ffb2fbe7840449e0dc565c09f21
Date: Mon, 13 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776041853
