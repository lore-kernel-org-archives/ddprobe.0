Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B133A1690
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790165435; cv=none; b=qnZ0CbU+zScHCJzdcyeorBoiY35zo7xADRg3C40zrQjZJpwKcSSA+y04mhIyMRQgcTXsVpA8UCVfwq7njiNYw70Mg3C4xARshOrOW7SNp12K/Vi+SPFRkSb4PcOwuoYPwq0Ey/lC/QM9VaNMPzpN3JOfAw5LpfOG4+5+TdIqYds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790165435; c=relaxed/simple;
	bh=KbT3nsSdsajz52i7zIRCCyOjujRodtRkZT0VYXbXZ1c=;
	h=To:Subject:From:Message-Id:Date; b=YyWwDB63O6+PzbdV6gA3Q0SC6Fx3AulGIJbCeZTAO7SE1NLSpVJwvK7zT02SmMqzEaQWE3/VPQ6oWuXHG5WboehB1Qu9/ocJPA+M+EWU8anJm1Iknva/dsuEzNkd5bX/+vW2N4AwOQiT+yqgRr3bJoxcIQd+S8hif8sY7QkENC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZBjMtrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZBjMtrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7DBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790165433;
	bh=KbT3nsSdsajz52i7zIRCCyOjujRodtRkZT0VYXbXZ1c=;
	h=To:Subject:From:Date:From;
	b=AZBjMtrWvl48ZwreqOHAcWZnIXuP+UEgf51MCtRNlXGFAyNp6CAw2PhhvwxhWXurm
	 UcNw7qQLIA0x5WB+bIg0G45wt9a6eKSLtoKcreg9OoJcdGepxhX0bm6i4FdlQHDaIL
	 k3Y0MjloTXtfNanXxg7YiTmi1T4hfr7p8hoLCt/pj1e93w/Q7XEnRvusSfAnsTff9l
	 YC0Ygi416e3ttJgZI8hmBxTh0lafm97K9qzf5CgVHNX8H8+zpWboxeCh60AMKQCM3/
	 nYdBeJgG75GarbdnXhonXDW7QmQxXCRtHQF+LYMwY8EZvD3e4GmUAR5lBF+xufj43t
	 GwIQgSImfUpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B605BC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016543373.29350.12033904966696130652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1555ef276620b6954b690a81a6535484b95e535656301240da0fe556e937fe0
Date: Wed, 23 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790165433
