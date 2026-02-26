Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111723D3CEF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772123094; cv=none; b=uMCauEMJQpwAHX3twWnFyKc68hQTh94cbZbab6tZTpezZpv8aP+TLlhJamnMLig7T3xac3f8m4+LM6a3+I52YHd3GJU78zPxAn2g3+atTYSoVIRfvuTUPbHwFa15qpst0lC/2/TohQu/izZt7En86uxpoUSJUi6FkaXNy34L+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772123094; c=relaxed/simple;
	bh=pSNJMjXQ6/+u7AavsMK52hXwiuH/yykDX3Z9wbt/mTA=;
	h=To:Subject:From:Message-Id:Date; b=VBpkqxhOx7HrX0BMoIEiWiITFTq30CUZ5mvaT7iAboVztZqd0FVup/ygx/kLvYI8yi4gAtFKOi5l+EIUKHbbeBecJAndRzs0N5YzTHl6NCBH5l43EoeN5IMJz/LBTk5kMRvHCgOq/fiJnFFv22+Xw+yiLif2b5aWm8EFsPx70f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW6zft11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW6zft11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772123093;
	bh=pSNJMjXQ6/+u7AavsMK52hXwiuH/yykDX3Z9wbt/mTA=;
	h=To:Subject:From:Date:From;
	b=RW6zft11v3rhISTw+FE+EzG6UHL4sbe8bZvgFiMe6Wokxf2eIULKxZeitNtdRrlQK
	 /TfnSLPyBuEREPx8nAO93rda5/xVwYyxX1UsKcvPdYJzs+3jc7XaxnSPQurtKM4Tcw
	 vIrEK29+QSptpppRJ168F5YgkD+QBrhrrp2eQIeyStv0OsWZH/NW56l+APKslmBxkR
	 fyqNOl8uGPzipJRaV9teTL7oxzansVr3EodAzhfzsI0EbNT5uhzYkH97S/G2IVxYfY
	 k65BEdjVZDJuJDxKdwZK5g7o+8nWKk3ZriMouYKAPIejzmvonYSeEuGQtXutE/29KV
	 Rzw8SDbRRIM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF5CFD8FD3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212309362.14847.71300769969751019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1367c9fa70879cd616ec165dbf2b3f64fc40648be069c11e7286f880db63ea7
Date: Thu, 26 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772123093
