Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497DF3E7BB2
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789095634; cv=none; b=AC51QHKDAH2ZsjCJPIIiKAaYn26kb2s7cojUtglKMkaeHzkMec5Hg72JnwT+lPmaGTu+v0qpj8Ot17Nm3bpPq4st9TNDICQhYuT7mcLBGD7J8ICVmVnI4/RwrfhDzAbBUwYccbgh3X7gqJqvEZL6vcP18qEYJ2rcZ0zihHpe8Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789095634; c=relaxed/simple;
	bh=LsxJO0qN5z7wKEMF5/ob7+sL02wp/VcSfTVNedDT4n4=;
	h=To:Subject:From:Message-Id:Date; b=LSwQ47aDECIvrOFfRsxUo/gw0NXAZ0i6dbE9MYEROHenZhkCa7hGkZ+363goxjfdnC9uvooXbLOZZgseKOs8a7uvTG8rr178r2vLH+Px22zCtFX2RATC0qkPiBz2EUASK8iWsSORkELNgC5ACiqZgLmosz50Rn0HUQZcscSXoWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEjldIXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEjldIXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D715CC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789095633;
	bh=LsxJO0qN5z7wKEMF5/ob7+sL02wp/VcSfTVNedDT4n4=;
	h=To:Subject:From:Date:From;
	b=DEjldIXMPqU2mHyrTPevPsxmG/bdjafWUDwYzB9J7G2Wg4BFKOmgHDAsY+6UIa4XF
	 yTtlnJzp0NdHbQ1fGwwFE8x3bMdxj4jtA2Ex9bcqmovEGKJB06Za82bYRMh7ECJdDD
	 L7vCo4gGHTyr04uJDxfG9fWsd+XUpMmnqy7qfJ6bgf1+d9tNEUgFNzeoEgBXsbnGQC
	 Nx50c+sZjXs84v4yczhSnGNe9StBliuqA2cOer8XQhf/yyoCV28L8MZjyWojp2bZnR
	 7RT5wzXGCCJfetfqMjQ94DnZ8r1A4nVCGw22gjPON+Hm8LNXyLd8vZHCQfC6qdoDrL
	 DCDqlscoJbQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC83C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909563369.10757.12285720747679320521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c298853ae2cec5bb5c60b35c62e1665eb83035d47868590bac00df8bacb40c78
Date: Fri, 11 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789095633
