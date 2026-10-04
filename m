Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B974190462
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791091234; cv=none; b=FAMlxpCLwptBOBPyqbCicxzJhHZ2qG7hSGUgD3QK4EvO27PATHK9RjixcuDjy5oFrK2Yq/DwVl/vVYFBsUeMJ94K8Dus1hFqK5tZOKH8i9hASwzV5l80ldsShJfilzNLPZmvzlIYwCBdgxSAmuCkObxoZy4lVE2XKngjxgUQ8gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791091234; c=relaxed/simple;
	bh=T6WNmpeTMCHnSze6Se54jbGXoOVJOdfbxy5vTL/s2wg=;
	h=To:Subject:From:Message-Id:Date; b=jnC3B1vBk9WsZ/3xWwQsBgLk/mhyYFB3KGXn42rVTyYv6W+xZDCJ+veGWQ0Di+2VvvKb/DepzJMIVrE8yoFVshxs+3+IpqqizeDn1y+7Z6DiMh2bxSobF3ws3l0wC9SS9z4jQLTudzg3RCgxqM6KAvlTx8/Zg5FKakkV8WUu7K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZIfHR2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZIfHR2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D652DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791091233;
	bh=T6WNmpeTMCHnSze6Se54jbGXoOVJOdfbxy5vTL/s2wg=;
	h=To:Subject:From:Date:From;
	b=DZIfHR2Ec9tbAXCr56Gptmx6DsS37keuA+ePbRdmTZSD+TUBVPnUojmkAV0iiRdlX
	 EnICcw7lzqco+F55YRYtLImxlQaFu1+hbINGOZq/nodHsrXDA2avS0lyKMcGmcpP2U
	 Anmsjn7Ao2V76aWhZBjFhapbO/irENAW2IRHAtA7kU8qDvLtcgp6yE2ZszdtZABI6k
	 +JEjwmGb3YoD/Nb6iHDyk/HmZLZuzp+wXkBQvhxwziR6HxUbyUGY9BWV3B98/67R1c
	 464pAUcE1i3/vHjG/zSgfplSsCWRn/+dUcYKBbsSJQRf3bHU+rlaCmOHYM6D/tWYZA
	 YfgWXn1zuRGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2711CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109123369.16586.3677351910250660462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6726aabc72df14a7fb30c7aff72930ac002dd747734451f2e3aa6cb37b8c89f3
Date: Sun, 04 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791091233
