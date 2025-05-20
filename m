Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3966025C817
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778994; cv=none; b=tkAytqn2tbX04u8it7nvbjoqU5c8EnBkxEyH7iihOfZg8FTxXhaX3tvqQZFRC50F/R6sQmAcjCMfWEQz3F4zhTX6C9c5P89P6RSdjY0V93QQz2vYSa8onxlBRZ+lHZoc87OflKxFtiJC/6eL2v0wOFip+mwssstnr7nuz6gPvro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778994; c=relaxed/simple;
	bh=W3s/5Tu66nDiVOOH//bfeOX8D1EIsNw9c9JekEvgj94=;
	h=To:Subject:From:Message-Id:Date; b=kFz4snaskYRScrcBRKun/W+XPae8aC4bczPZFQsR+xE4MyiZVh/1xaxhY7eGbM8qk1bGrDbZumatU7JNcaW0kBRufo75PqFHXVwOmG7LIY+qXpx2Rt6FxzpBVf2QTws6dxmt87KJSiXLaEmD3yXsrTlcgqmAwFc6yWoV3yr4F68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUyTcw1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUyTcw1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747778993;
	bh=W3s/5Tu66nDiVOOH//bfeOX8D1EIsNw9c9JekEvgj94=;
	h=To:Subject:From:Date:From;
	b=YUyTcw1bGiYSJX+RNSO7XXGW3k6MRDD/1HF+JftaTz/G8rng27h23mvCzDO7OWUFZ
	 Zk+WayChIuqmnU1N8H8ZXI8sQKHdOmOcd287UFE1tFaAwIl5g6sIuvjcABkAna6W9k
	 2LTuGLyHS6LfXcX7HLXTitPlUliv6WGaao7DPwxZVpcEeb0mhQvzqOmD7/Sw+sd05d
	 epIHmDJ2aLOi9rUoLTaQqxAiBpPKt/6wNk046PnE+4pbm3UHr6MaEBl14dsH9zk+Hk
	 l5n7y39mgyuuWcifvPMgfFXNiKg5E5sxFYFUR5Z7U6qDn3NxQ5VqOmtF3b/8obSj8s
	 SrvmkuS6DG9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E3C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777899358.19457.8633869550946082593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48f248ac84b0cb7849704d4b1b0586cca900828e83ca9b41351d3f255be0cfb
Date: Tue, 20 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747778993
