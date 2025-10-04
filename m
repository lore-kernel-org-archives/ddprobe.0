Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384FC217659
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759562395; cv=none; b=JNUX/YlZvboID6dJ3aQ7doobRtErMXIo/AjbwnNlX3aZEjwQSEH6NgyZi4k4pQWlr3Ysvi4nCKz4AR+1MhUyPtkHp4tRN1VxvF0DqFBufjw6XX/CEE3qQAxsfrPUecdh71FhSpw++rCmN/1FLN5CRVGrtv+XWihqwj9d9fDHbQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759562395; c=relaxed/simple;
	bh=yZzIYSYan1w+RjleWqbX7OKlsFqOLtri35BVxxEzj+4=;
	h=To:Subject:From:Message-Id:Date; b=L9Z2wYQYQxvkUdyUcxW8JWLmEyySAjyRi9IwQXVfHdCvGwzo2N52AmuTWCYRC9he8DqCl95Xf2FViYL/Mu7/fHj5P3WxO9zDv9Rv9sYE6kT2cgpB0R936EvsKU5LBd5DEPvGwHEWl0nFau71YSLtF6WgNFVnH702cYnYrXsfrkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTn4euYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTn4euYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6550C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759562393;
	bh=yZzIYSYan1w+RjleWqbX7OKlsFqOLtri35BVxxEzj+4=;
	h=To:Subject:From:Date:From;
	b=ZTn4euYSUwHmBXW7D8+HdyMzqM82iPWa4F/BEdNrIp76H4WMJHUVk3Wj7yD827uWQ
	 w6JcOk3SDBgoPsb92UPfXjGTQhnNVhEgPatl51VpiMdR5NqJ7AClEILIkipr1VGNDe
	 dIVaXBVb4IyIzqqzU74J0xERSGv0Sl5QK3pKyfITORk8/w3K1Y+NoIbRoDO/O2OW8t
	 PlPDYh1N0hfikVAPV0vivg0V/nYfF1qLZxss2RQvjpTmezeitNVX6/GZYbIZaz2FBG
	 a/FJeIIASNmpoM2IqQ9QDj89unrqmot9dhHF/UDpQbvuivMcsszREXP6dkLCcIli2v
	 n6jc2nhKF9hBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941AECAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956239359.23055.4526363645549396618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ef0366e7fa4d4ffb04bb8d65f73eeeb5da95055b0d1bc0cef99299c5b3626d
Date: Sat, 04 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759562393
