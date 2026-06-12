Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5007128852E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781307994; cv=none; b=aEYIjS4KaxBs6HU6eGtZA0yiqY8vlcvIB2DJWXs37UsyaLC9v5Y47piv31xhLKCV9iQ8cyui/ur62Ph/5hcajqREsDB4BiTOe7s3PJAxXTVz0cRuVwIVCEvYKprFqHpTyWnpjGSjoxxnrddpyu0a6yhgn9lDT652Rgc8QgTrvJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781307994; c=relaxed/simple;
	bh=Qy553x/lRicB8B9+L52b1Co6ceZ+0n61/i2OItSafoQ=;
	h=To:Subject:From:Message-Id:Date; b=cCUiMhwgx21A3SSKLu2g7H4dxULYFDjRsUHceQOnhYxVL9/bcyUtapYVuxpFq5s1ZSlqlHdA/h4nt3tWQJUEVEtgNH5GcFhM7ekfe99QF7S5YAtntxdWqH7A0uim+dPnDtKD5k9q4wj5dapRY4iTbLuyjjQhkvKh/QgzJ0gu75o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQIf7txt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQIf7txt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2390C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781307993;
	bh=Qy553x/lRicB8B9+L52b1Co6ceZ+0n61/i2OItSafoQ=;
	h=To:Subject:From:Date:From;
	b=QQIf7txtABhqc+G3q2W79T/DOouOJk+45SdXgBvd8FIIZPvF2luoUpahLz5i/3Swl
	 bENzihWBmxA+/G6vBYLOsJQCbyuWb/3gFH5SdZj7+rcJ/Zk7ts46qvrLsi0ylDupFF
	 lSGWYYo2D/IP1DRr5rxO76rmMlXJ/mWMA4VKT3VddbCOBJ00RSMv+A7Uez8cMtPXSS
	 w6yT1H/SePAt7NRNag0yURo2Y6FDoLW72bRGomYXIggKSvcDDwec/j4E0bw9pCIOkX
	 FsDMtL1nnbDqWlcvWaZ9l7kVatAySdDS6nl+drsSN3+MLnr6XnxLiSOa1BzrCzBAWd
	 WQpf2zSTqAbmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67AFCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130799373.1881.15031653528797674187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea1abab6c0bd6eef5dfe80029a2cc3267cde42c4267a4e3abd4b7b7e5bdb1a5
Date: Fri, 12 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781307993
