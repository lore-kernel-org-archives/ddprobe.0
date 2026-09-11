Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951853C1D5B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789108835; cv=none; b=TuEL1K8S2p00IAy/ejEdAW192wEPkZjXn28BdtNPlnrSHj+IH50gV980nqBNvY7FPPddyflTi2z2o04sywxUnzsU6xJfKxGoAbMvsFit69W4zYujt5ww4JY6re87iCZyFQMvnR5QCKa8hNFUp+kg7D+PWD6EJFnAzgfwZVq6RI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789108835; c=relaxed/simple;
	bh=2UDnKCWuBiSOtp2eLrKB9c78ZXmpumuFzekyykurXP0=;
	h=To:Subject:From:Message-Id:Date; b=Ji/3kzJKAs/HAhovuB1Vf9DNyapmT5CNsax8beUpyEOE1BNuvbKubGQH5ZvPjIlKz9Jl7JModVSPGHvIDM2vf5JnRTKMsgiB6vi09TJidbczKFZ1tsCooUQ/aZ/FIVhrkTjEhcbiRUwylSdjuQJd0CjHSLnPgZI7jwHbngckoxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL9Ntr8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL9Ntr8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8841C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789108833;
	bh=2UDnKCWuBiSOtp2eLrKB9c78ZXmpumuFzekyykurXP0=;
	h=To:Subject:From:Date:From;
	b=lL9Ntr8xP5C1BJX/wDVFta8pbBtXiM2hYsJUZSUv3R+KMqaMzIpx+SYdlJryIClCB
	 lliWq7OsVCm1enr3RozDplQu+dce1eLqc1edq3fg9jCv9KsAY+jP/LjJL2bAakUlZQ
	 9qsh6W21WM5orMMPZcYgs+7/tdSnrBdxmPZW2QIOSe8+rdRI2dS0aEEVy0GkLnaFtP
	 INs2V8fg8i/EqqshqPU/9turgYDijBgqOyb/O/ddOtnKegwcXmucGMRG1owYDivLa/
	 CR2FPlizSmFDmP8zVhqKBkHR0u0FGZXkSui+Yef8MYTvxeRqSpwwy2mG5uVMtV6u8J
	 FqAUWPhrHq3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1491C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910883371.8501.16211784225460356442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ed9da725e7f8636606e68468f971991dd3ee504d1f9f81330c06a1cd14f8cd
Date: Fri, 11 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789108833
