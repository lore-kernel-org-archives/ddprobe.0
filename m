Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2CF4C6EE8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772300094; cv=none; b=MacIK2G73O7Nua/dNktKv1mTCkvQejZIUghSHwdyXd3ghQh1r8ZcOgyLObyz65rrD1qaNMufezYAOCl2YMDlmrY+hkE5HaCu9Lrie7XbdMf+bIQa+ZW5Itsrt4wzSiE+QFa/RBVx1y4kyb+sUi85BsPrJdFzFJFDLCUWCmzF0m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772300094; c=relaxed/simple;
	bh=VZ7yTG6lmAs8mkWSP9oAVxxxhaATVDongTALvqA3sNY=;
	h=To:Subject:From:Message-Id:Date; b=Lhj8Yi6VgO76Kmhs+IuuhV2uTK+x/fLWdeOZxiMxGcd5CPIlsLW6QrAb3IGowX7muV6FUKYnVlDIs4Y7tCAjEfPS+D8XXJ8yLw/L942SHotdUXBppM5TFHaVEGcjUt4dd7DkRfHFaizcKqqgDJ6j8sMCVfYuVrby3qI1dty1S5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQTmrOPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQTmrOPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6393C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772300093;
	bh=VZ7yTG6lmAs8mkWSP9oAVxxxhaATVDongTALvqA3sNY=;
	h=To:Subject:From:Date:From;
	b=oQTmrOPUDbu4mAn7yXHBNM3ptbbLtoNf3Rnh1q1PNeC+/Z1kuNqC3JV46B97MMsT4
	 WZYjs56b/mH9CE3SLIdDpEmGgwJ7fxXwLG1cD+Pd0wdFPEnnb6Vzy5gXTsKkv2OaEY
	 9cYGXCAKLNDfrnwY/lFXg91T1FITU64u5Estz7f0hhPblDmBXb1JsgJZGEtS17XL25
	 RwOBy0iEct+4K27dk2lN+4AZxuKO4sV4uxU0sQSbEGr0hp1B2D3FY3C822AC49uEAW
	 /NtxYch0BAYcwRdOS9vWJlsZBo1lhmZM/HHJ+zoLCKUH4Hr93102fA9wg81RwDxubO
	 MZWLjiiGUWtzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B33FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230009367.26758.17141861689863871713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdca0787f07368f2e1e2767cc23eb5e7ee5f494ab261bf664e7a3423f45c024
Date: Sat, 28 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772300093
