Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CDF1DCB06
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728321954; cv=none; b=EJwYdPqH8JsZNpJFCOQGM4rzi//M3EEPRQj2EO7FZac/iQtdZypQuoTysiykLkpL4mAA/hZDkMZDqn/YNIqKCl93f216IMcYhNhcFIyF4IDxCQ2WnqZ9j9XLQ200qSRRkJzs9TJE1QABuxqlt6Qdt/MoGvyN/iqdTJllbSKvp/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728321954; c=relaxed/simple;
	bh=b7YPKdaJzqkpxI5W3ZxSaxNGXp7+bDB01QVBnqE/sPs=;
	h=To:Subject:From:Message-Id:Date; b=CCp5sZNnz0psNif6U6CxBPcGn+UBNnGLAqRtmBzJ8qncw98DJc77qhmlDQ6pyN9ZlfawjPMzMYC6GiwDJLasrrrIbOLE7+2txKu3iiOONMnv3FjYWWUwmya6o6L2+JdGxaiylytkC4Tja6/gDzIB9v/Lw8Nyg+xSxhWbqBUKA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOn59rX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOn59rX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECF3C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728321953;
	bh=b7YPKdaJzqkpxI5W3ZxSaxNGXp7+bDB01QVBnqE/sPs=;
	h=To:Subject:From:Date:From;
	b=KOn59rX3QmTCT8Q+6WsjjADXy3OIWrNA/qC4ohJd+TDIQyr2FxjYJIYWf1urVtGoR
	 KAp/6B3709nM5MLIY8wYmfuYnZdIluJYVkieSR5JLUyOcluoGot69Au5w8kkCLt6WK
	 iF8pa/ncoDkG4iRQufL43BwWLpZKnIFnrOQOtlg7qFbzfEKlIUjJut+JJtSjGPiAgN
	 f0j5WVJ+EfNlyTt+FqnDOkor4NLbpy8K0P6MVGld3Hng9MSzFmKkkYPphRCLcx6Bei
	 RsehjfRL8zGXJv+gzvRL7+BzHQD3klXfRPpdaiEYpqZsxHadMkmmgzSqjMe94r01/n
	 V1ttTKlZhlCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99770CFB44F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832195361.21331.12669060948268165205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca18921db39f9a13d7a6a8d7aec19ec28a2c6a7dc96ccb9ae94bc2ea4ed51a72
Date: Mon, 07 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728321953
