Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5D62AEFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756430994; cv=none; b=UrwLPGIZ1XqbTxs+nZKtNN+N0cL2kz/57MpavSYyJmXEcOgyhoQo8+qcV/BgVh5xb1V9CkG0qKh9NTjtAFYlzSu0PFHzAhqVcSlk5VTdFAPbDiKyJqYRD0Mg/VVfBCuqV4UR4oZx2uXrwd5vQ9Pj2KD8JZ1lvb7dGkQNV5R3Ekc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756430994; c=relaxed/simple;
	bh=YwNebj58N5oqYZ8iaWqN52SEkjCDUsECSE9ib4WWjTA=;
	h=To:Subject:From:Message-Id:Date; b=M8fgDfpDW8cEQEWSfmWzyUzdGFL2hG7eYz3tF2uHJAuRsM+Z3iJ3ZGt0Okpy9SJZ2cNPg6c1HCncPcYLzYne9zkC0vwYR/9B+37TtXx8HHKrcNTIMBDUGcipqJllclHghQ14L4tcUFPDMPHaN94+8pgD7wlBDFltGIsjSP4k9eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYGcQA/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYGcQA/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2743C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756430993;
	bh=YwNebj58N5oqYZ8iaWqN52SEkjCDUsECSE9ib4WWjTA=;
	h=To:Subject:From:Date:From;
	b=PYGcQA/uAcuGw+qzJ/wqsgKtOYLB7UNWQDP3m/8pJwk76LhL66LNoko+UgRy2bWW4
	 zuX58L3LAYJslmxDzUi6Gvs9tTllgbs5R2GFT9WRqIZxUd7lcfyRNBS7WKfgoJZeYJ
	 jRHozGjaMNaDlzLJZ0plZGkg4bw06I/zRVNKJ+vJAm/GlH0TjJ9pbqya6Aqdfr1jnb
	 XAtWWPJ4A/zcdVbzB4EtCwLWcd9nw+jqWXKG5yoP7TFnS9mqVI2hpquiSITnQmbKHl
	 YJo2xnSZhk9lQr8lBYr4fT1v51I1jPs+q7Dfr+blKfq9E8tNiosVdWBD7j03TQkMOY
	 KuVEA2VKSYsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BECA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643099357.29083.11909249931206078338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b5c12700cfcc4caa92903d3486e291dadcbdf1bc4cd9d4ec3395ff4c33692c
Date: Fri, 29 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756430993
