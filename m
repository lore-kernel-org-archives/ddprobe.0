Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294862D542C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749611394; cv=none; b=TharlZISK/ToOEZD1+y6HD3DaHbank6SUKVo6nNX3bnrFRCTOKACdSk5eGlmPnmeY+qWrnBcvfGXlRQYxs+b661M6SWs2Y7Zy4EdQ8rghH2jyA2WIP3Py7XMycGf6vboLQDxSayPFzYFfdw2EPoYfEotapttmy5/Zq085Cek3lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749611394; c=relaxed/simple;
	bh=aQE4nIZfxUhayDOj9YPUSgo6AKpWG9P26bwY3vLQ19o=;
	h=To:Subject:From:Message-Id:Date; b=clqqOaAAEwxn48c87d3qj4z0qq5cq9HroBUwdjtZdr5aK/MQutnXfbXEp1r37KZquB0nncG1V6rJDUxUTQru0xe0/2aq3ravPw8t+MYA38l97mT4FpDgbmegQlDkuy/6/YReF6kHsGd2cJQNUuSdVmKRRQzvhRnqTiMDSFFk+zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqQ900Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqQ900Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5365C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749611393;
	bh=aQE4nIZfxUhayDOj9YPUSgo6AKpWG9P26bwY3vLQ19o=;
	h=To:Subject:From:Date:From;
	b=RqQ900Q88lcZciaAhA02GkX292YcJVcpcSaoEdTiGwQXsfuD3JwMcSJ10+DZQAHlh
	 3yjV3iWNOS2FK+ZAIl+VBUNOj1IB7bH+XvFG6zSlzlvWf9sFlFFOjidViVtE0lG9Ph
	 MDiLpcISRNmPbpNcMwqISZ0/AuDngHpf3mo150zJLAEt3iMdV1NT8wqvW0O4u2cyRP
	 PJL/buAg65gPDYpht7Cjn736NxwgPw+SwCXKG9yBvJRb4RSdoBtE/tb1eRxlISyv8H
	 cLcbiC8Jfi3GRdGvDdQVc0EEIpw61WRmsDxZ+Q0z5IZXIB8o6W4xWoRCp5vuP3tpsy
	 fk2OmHO6JaU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93154C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961139359.28068.9542913773453589464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee583d705de6a578237cb371d7b5f3943db482034e39303748d1404f9eecb7e2
Date: Wed, 11 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749611393
