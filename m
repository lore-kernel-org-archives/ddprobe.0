Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D70133F399
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825594; cv=none; b=MuJ6MiiNrUpNH1A/1g6I2dALpYvG/FrHbwo+OYEfFHEVZgJCKfbVh0b+c+umVGTkczT4DhA2I0T2E3Ci96uRRfD1towpNmbfJOrEVP46E9al/sixwhrRbh5ibklx3N3Sq+iniIOIZYEvrBNzXVTR11cEUEI3J7UfY0qUsxzr70w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825594; c=relaxed/simple;
	bh=BVQd0265jdqvW0eLsoLqDvo2XtU/UHcNHqkPkSqIdVc=;
	h=To:Subject:From:Message-Id:Date; b=I73H2fJ1LU0b/2+xc+QbeonwYC28hQ0zmZjWYkyno2rBJApN/d3TYuFk8XoVUPsbn6jc2s/qerVj+vPu2bI2z3FmFC0EP4c9mBbpkayI0OgwXIDa/ZkfGNjL9ir1MymQPzNQXUkmV0Is7oO9Wiq05KD3Lfr+eopDkJAi4l4ulXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2eXG5FJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2eXG5FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D02C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761825593;
	bh=BVQd0265jdqvW0eLsoLqDvo2XtU/UHcNHqkPkSqIdVc=;
	h=To:Subject:From:Date:From;
	b=D2eXG5FJ2hGf6CRwvoU5FMRdOZ5Lr7XmU/lKL6aap3APfWBLxTnHwW0wDk5hNyKze
	 vGL8FOU/zyryKv5UJniz0nayXofwPvhcRCoAULTr/KB8UPzj1sn6nSrI6hKbRulYzX
	 LSOEPWGwZMuL87RweO+EaMm5YzpEnCVrew/OFw1HJrb2FaXZ0SkQuDTRZVayZSePDn
	 Yc+p7F29xoQeY0p1T3rVSfOnQIbPGnGGt3Xg3XEvqSy/w4CkgDgUJxDNQKyfUKwBS1
	 lDYGu9HLgbWs91TkEvk7OT0FfDc/5zi6yW8QzuAcAlEDH8sEAFkdQ7sHHjReEr8yUI
	 XajxH7JaTc2Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96269CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182559358.20673.857427689606418195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c063b27ecf032b7a4facea5cc98eaa746b27cbd661e6e00e6e13e70205d52637
Date: Thu, 30 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761825593
