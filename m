Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C30EA95B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720306583; cv=none; b=DR8pn0QwGc/QV/0sLIkpn50x8xncpTz7kMvEKHkeKFeqSVHj1N2ty3QbX1i9PHFlLKQEcUhCn0fVbq6C/ozyN2f5roxCO3KwQ1zm5SW2ve67IgWcormAqxGgNRQkRQZgOtFsCNBGervSCiZqNkLnBjqaLR1WBvysfuhDK7atgnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720306583; c=relaxed/simple;
	bh=voXPrDkhfmFEgDlWS+TNzCi4M2LuBF3ReUMb22Q6E4g=;
	h=To:Subject:From:Message-Id:Date; b=nME0ugtQF8nrRonCgQXi4aXg96DM5pmUA/rqWcEtCSRd79KcQhoo0pqUQ86eyhJxf7Cxk+jzT8aID/vm7cFRlGufe3qRwebVqgTa5hD1k35Afm1rohi9DOdDhtI33POHwGlEWLu+cSQj1GDZSWcYVmBq0GPo3Pc14AWRjTDibz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCJgBi4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCJgBi4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF88DC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720306582;
	bh=voXPrDkhfmFEgDlWS+TNzCi4M2LuBF3ReUMb22Q6E4g=;
	h=To:Subject:From:Date:From;
	b=fCJgBi4HCvx5mJatng/3EKca76IKxWE8XumvGWWYbJldx1+aTKpdhPG0RzwqVjbqS
	 NYAkKPNeOrsWoy8MHrbjobwphU4AyNQDfOiTVuANtZ1L0iyJEz5Yj7mSqztM14hgOk
	 K7TnE3LMJpVYtoSr3PDsA47VmajqXjC0QegP9fwrbRLwWGoQeOhr8m7zKZnkfSWAxQ
	 5qz5swbJOaAO4XpzE5TZPtCN5wey7NsuvfhkVE35B8Rndq90ZbKxpgeoqjsrRN+Zb5
	 VuFMSGo+OwleaI2brEJupkVmCmpEfH+WPLN/67tSjzjgeQ5gUXxwFj7sb/JLw/Hq55
	 Ir3QRcBqZjn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C117CC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030658275.15771.1269670349792043890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da120987fe5527bb63108c89f8f0f207a523a4ea714e52f89166e30ac368a75
Date: Sat, 06 Jul 2024 22:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720306582
