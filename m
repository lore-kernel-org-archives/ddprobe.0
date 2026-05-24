Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89C63A9D8D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779639154; cv=none; b=EO5LHg15Yr1Fz6xDt+JDnJdpN6RtQEeyIS2tvp11T6gW1Qq+Tnx+kv/pZh5IB8piueEJX0CRS7nW79NMpr8pz5p4c0WIlX/0gyV6b7qHy7MgQ25Qk9DxSb6N62q276Mi/Gz7HDXOmLiIx4QiL8Hq3VmQ85A4LxSvm9SDJi0zEWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779639154; c=relaxed/simple;
	bh=6JLFE+qOtXyO6fLd9/jMwUYGR7cpUjsXyM7l2ayBvPM=;
	h=To:Subject:From:Message-Id:Date; b=GGDmzthvXf9T5tIRJqRTegkLGFOd/75RcAsWqU0odyAP+owz+dq9Og35/j+G6FlkL/gMyx6anSqQMn9MTL2nTsVh+pOaxgaow+HHfTXPzZGMsMybMY1iOBl/sDG+hVsk58wH/L1wvLrozID1KFYaT51KvtE95LpSS6m5GpWXsW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2leNF0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2leNF0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F50C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779639153;
	bh=6JLFE+qOtXyO6fLd9/jMwUYGR7cpUjsXyM7l2ayBvPM=;
	h=To:Subject:From:Date:From;
	b=o2leNF0JCP1UT40BZukmBSZSuBZd8/fC5BxTuaLATx6V/4tiPjIm5RFOhe5Gf8DpD
	 9FWg0brqKlB38Qz0h2WDmBiPlrz7w4yeJEv5a1l1VgXHjIShsm5n+r8lLrxDlybnmz
	 p8xFI/T5FVDLlO3epv2Xrak5bdY2+cI7TcW1/YqNQt5u3J/ESbAUu31zrdUf43ZCpX
	 9HkuffHirQ6jJ+ODTGNADyiavGi3G+EOHMekAq3FrMVYlP+bMlm1Qg/5b8tcsuoJu6
	 N1HioG0iPQPgA49zbjL7SZhOPWZcPEdgZDHziYf7V7VGH4vtd6gFqX/ltbY1jBVafW
	 kHLguhPFoYhGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB65CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963915368.11901.11889002935817290242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d93595453127ddf387b64f65bf3e8ae0bc5d3ca021ff7eaaefee98cad4ad33
Date: Sun, 24 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779639153
