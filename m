Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ADF3BB4A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771136694; cv=none; b=tVhq00W3gPqPkQ6SesdVZnRaUIaH+wuRsSrxS4BMlmwrgdsNt/Qteiaenfy8w00VJtAmQF+whyyMYqzHwfOZJGJz8BpNMjjvCTdFqFgGTtnQ85VXrstXvg7P07NmcIDuMe90VNJvViRvi+dW/ag00p3k/1yWVy+HwoHlh1yQ8ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771136694; c=relaxed/simple;
	bh=hRGPOqRHM5uvqgHihRDct9JgVYqy84j2DZAmm6BUeWs=;
	h=To:Subject:From:Message-Id:Date; b=MMvBhBd+LVyAxThC1DU5OYXQMGsgSchhpkgAptkYEbK3HaO0gQOO3PVbE3EjFfg/aU6zaLrqZZEiJfzb3cy7G8Nbnvf68PbkAImjk8Insk9Cf65PC9FQYSTJ1oDipZO/uUBlMefbygESkSKGCLdxcEYm6yjSmv7RmdEtMJgh+bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/nACykN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/nACykN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14D8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771136693;
	bh=hRGPOqRHM5uvqgHihRDct9JgVYqy84j2DZAmm6BUeWs=;
	h=To:Subject:From:Date:From;
	b=s/nACykNVZ/e6W8hzgDBCPnGL/gafxmxwNvhChLIoPITlkQvZP0uQDugB+MF1Yr0d
	 LxMGzwlJCIIAGLubY9ib1XA9z0CCaS24mm2qNydxWSPCUwK1zHAH9wioE/8guYqMP+
	 nAI/t3++ELSjEs+oAMvUPsDUTyY6pmFBtLP7A6NtjAP5KXkp2+DSCTh6Rp+wZhqToK
	 pF+Oh47yK9K72sH1STGEpWuq+67MJ0knvsyVtjJZ3c2g6/+gdzWTU2GTscvKJeUDqy
	 oxsqv2o3oMFOo4vJ4Ldqo2eUUdlMOU2UDgtQoMnKarHH3cLsX9GgLQWgo4qbgkYYwK
	 aFpAf5/8bejMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA552EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113669364.28533.15662229592607989358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8081e7b59697d2b84682540b3d105e7c724393b2603b1fce2789079ee6f1b3b
Date: Sun, 15 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771136693
