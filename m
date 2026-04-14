Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC22313E07
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776205054; cv=none; b=id3H1HnZ8r84shZwgsbfbw5p8y6hfyH3MbJ+CKcIky0wNoduDBGLCp5jQ0/NLU2iQkEjfTno4k8IywlCP+Lx7cW1nNXLstmOkWbGy+dk176LuKKc5711Kh5EHUzO50NrAgHxSJO/XStHvMvVEpyrHP8PI8XmEeMjNZQ/WDX0vUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776205054; c=relaxed/simple;
	bh=/edLLz34Puq2S4+Nod8vIUq2TT93kp4BFXCuq6f1KPY=;
	h=To:Subject:From:Message-Id:Date; b=MQ1a3bdc1w4JWnMj2FCFphpahBD8mIZTD3Kv2/7fxwMRgstePk53+kNS/wzp4MB/2eeLMZHGuDvhOY79A+o/pOmdPdySXZ85bexKU1OPTL62+9mSmR/EqD00euwzm8ffxZp0sGnSPaUXaasKQPaYoZIv1LOdm8RmV/XRFkSLbBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsrdoWWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsrdoWWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9048C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776205053;
	bh=/edLLz34Puq2S4+Nod8vIUq2TT93kp4BFXCuq6f1KPY=;
	h=To:Subject:From:Date:From;
	b=VsrdoWWuYWkfq0N5GYFILil9SWKLweba/G/B0bSk5PgK5sCHZNc0RdHFFDwQ5OQZL
	 kzKe0DcIp+hfhX+1bi5MIFEOUmRDsyExI9tTiNmVN1aJdpBABur0k2dwARThmEmiwy
	 lQF7BZiKyzxs0PHo7C3sTs1fBFOLGOftYC1QUaMqcYh2dq9wgl72bTSB5N66nvyPOO
	 zdSR+Zgo5wNa28mz5hYC+d6nWDrd7rv559W5LZNDaztnjxThbAUXerK2VuCiljtY9w
	 HUo+8qtujaK2vC625uhBlECPmjtGgCxsnb8g87G4E03vlvJrPtDCGBzHSmkcRwRuTv
	 6e9CPJeooNBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C46F9D0FD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620505371.21366.12622510991531541952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d9e0473f20be1c264f4dda77fcc9ade504ed39447d01bc40b095a8c90d65c4
Date: Tue, 14 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776205053
