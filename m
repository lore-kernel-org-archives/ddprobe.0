Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1604C371D13
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772830494; cv=none; b=PafFKAJ3UHl9G+a1p2kwHdQjNEHuIOZO0gFcjCZ/8KZdNqOH1qdqMwFn0pnE56K+4g7/W2wky6/Cn/eDE1Y7mCMNEg7+mBnf9H3skLDLg6i01vz9RBHcTr6EKJSHlJ81CHXRbwDOJS+kMJgYScjzUebLkmsf2irx6Vva6FwhoMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772830494; c=relaxed/simple;
	bh=tenNCeByvC9BQtGz03nffTfa+s+TOi7CES3lZ/EiMGI=;
	h=To:Subject:From:Message-Id:Date; b=ULxHeqqVXaFjoYcilIuKq7Pbagme7E720h8h+xfP7J2i3ioTyPvtbJeWeXKplpF5TEKFHJYoZQAWORP+VoOd11IGechybJ2pHxYbZZmxE4DzaK8z5cXDcES8N4PTVCi47muxJpKKz9rTD3uu7fGPcmoYvMSWht/iyzCNfMg5eMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDsezf9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDsezf9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1918C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772830493;
	bh=tenNCeByvC9BQtGz03nffTfa+s+TOi7CES3lZ/EiMGI=;
	h=To:Subject:From:Date:From;
	b=dDsezf9jhTKDCtnzVKAhAl3Mr+Sgs7J32IbdCVS/cdWCjHE3zrQ39ibYtagVfbQnq
	 0fLznWRs8307Cqe0RzgvhLxieEYDpILSbr8eJAq/c1JImBcsW6TLVIh0wo02fEmWVA
	 22bff2ePPRAduCIkOlt83lnaBcO8a1HEoAVhEoITSaHMHQLt1Mfe4EVzRqdN2AwIbi
	 x3rDzctby7ggkXK2+BGBsFMRPiDO/dtzihjUehMSb1YfTvBDLhhqGiphU0GH/Q6c53
	 e1jwgUnjpb7whSwXIh6VY5sNf7O6IQU+QuSqCyz5fcS/3bKVg0iZ9JiJk2uSQRo1jH
	 j1VmhDnQ+YpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F3FCC076
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283049357.13139.5442469866009817435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82343a85c2fe8541505d19e1a90ce01dde77724d5696f98fe52ad8ffc818a85
Date: Fri, 06 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772830493
