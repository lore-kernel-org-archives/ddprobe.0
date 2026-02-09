Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD730B539
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672234; cv=none; b=oBItJPHLI/SARmnhfvHLS1hz/N/aY4a6hjS0JAEAdYMvtg9RPFaqeatIs8IXthKMy8iZgaSfhIP/Ptv5ysrSHlbQaQB8Jb+03XsPVbIkpPK4nBJVUxlSWd3oOpleAoMVC/VpFTeKAAAUVV8eTid5f1UNwY7lrAixbpX+NeXrXs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672234; c=relaxed/simple;
	bh=Uog5a8rnZFgJz6LQQpRMXvCdFcPzMcPfuUsTuOmKUlI=;
	h=To:Subject:From:Message-Id:Date; b=cAQJPlK4C3MUMfKpRoDa05qRBYCKib9gMGK6satEC8bh9qEQV8Zd6/GPhezrPKg4skJgFdAV6Dye+mK7VZ/1mpPIFq8sWZSHcpYuJ4CJyPwqbcA29725UwAYQdphZdJNsD+5x10xl3kse7wte8LdaVFYgq/tCUgS7+zjEacs/WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=to2n/8wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="to2n/8wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6711C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770672233;
	bh=Uog5a8rnZFgJz6LQQpRMXvCdFcPzMcPfuUsTuOmKUlI=;
	h=To:Subject:From:Date:From;
	b=to2n/8wD5l52MZ5aCYgLBVSxjZhorSPq91+GScJ2gDHMssEDJFrWrBVbR23XwQOuQ
	 qi00WJHgObJvOUrz/Zwc16FpMSDAhn7S4tG2XUQFQYhyvn77E9H39xwBqv1rQHQedg
	 VVshXUFF5mOy4Bw8KfDsCnLMAMOyKq6+ftEhV6CN/vMbTOcKq/wMQA+gT+xC1lx/xh
	 RaZEIBb29VKBDtGxqEeKPXoPnfgxC/90DaKO7zqqHcdDfRbQAO+sEiXj3Tfuznlocx
	 0/ozgGLvFTgNqjJyrwr0bh3Uj3CODbRHgB8e+oITrtSkh6qXLGa0oeQrNCP5tKLe//
	 1fVJ0mOIUMz8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17A0E94605
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067223361.29023.10718354189485097983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6938c8b67c785c92fb2889c405c943d727c4a5d90d3969fcc240c520f8fa99ee
Date: Mon, 09 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770672233
