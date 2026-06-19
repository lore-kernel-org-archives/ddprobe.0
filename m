Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBBF38CFED
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781873794; cv=none; b=TDlsSBRNHLX1tHbxHWrJXnBywsk08WrueZqVfUPO4xh64ceuVWU74edW/KS/bGooUkK5Nvz2tcF4+D1+vf7YAc/A60qtFynv1JBTRK4slXsLP6sYm4brWhkXvWuXgLLObGIn0dYpN/zA6jqu56ZIU+XaiI8nbalsnQMre+lr4hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781873794; c=relaxed/simple;
	bh=T05wUM/hgeL1M7HItXv5Kb/pkoyLrue1EhFZBqGc/sk=;
	h=To:Subject:From:Message-Id:Date; b=RGC6uc7HRlQjqEc3DX1Znewl8/lywDAh7ORQz1PEMtF/+9qA94bzl3JOdg6+ZziFCks8lJucXqBioCNzobxcI7cFGXSbkNppwMkQ3EkgzpkK1+i+fLLimtnQWWABNXe6F3w2nqnwIBVc6GoZywfgstesW9ugc7JqvaQRcwqd750=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSxuD5Pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSxuD5Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BEEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781873793;
	bh=T05wUM/hgeL1M7HItXv5Kb/pkoyLrue1EhFZBqGc/sk=;
	h=To:Subject:From:Date:From;
	b=bSxuD5PvC9ChQqNN95d3KuKjQyJm43WDzY3oojrnoZjsNQgD61X1SSAenl+HsLWRv
	 Uc4jDjybjPWKkvZMICMRezIruvJb8f9hIs7Qididjw8I4/wfft4R3mBlAfsw9u7kt0
	 b8vEF9/5LB7cGJ6GLnEU6FbovAdcSpwNkyNHX3dkcsdsUe+Hb5kVhZareK3P9jCdov
	 ReFOFYgWEybtqEWndKVn+WLAt6FBNadyDn6zmYDtpacvXnQ4NZo7LsamY4dw7aiS22
	 Yt3YT2aNuGbfyIKTIwNKLAkbKyIk1PXZA8upYiVH7WI3AGtqiDPbsMv48RreFB+XNs
	 m8GBK4JB1JmfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B674BCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187379370.17874.1075321139926220406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1cd50cc0bdb0f2fd4f64dd9224c75e715376bb0929e4e8a5c4f85ce7bc7898
Date: Fri, 19 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781873793
