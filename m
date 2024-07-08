Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37875208B8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720433783; cv=none; b=G53ozs6Qi518tDN/tzQbU3Vvn/PFUV7ttp4lwB3rCsZktC+dFd2AtWNi0eTDNBGq/eScegE6BNk1sEDZwbtga9GrT/yuqlQFvtWhFl+XjqTi9Vapr6gZIa7dY2JM0f3xjY1TBObvZljvfBzobpk2hc7rwnVuH42bmxjNybRHUas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720433783; c=relaxed/simple;
	bh=5AEpF8GMgdfCEhw/4VG7cphb3dVPstjtmLB/3I/JLX0=;
	h=To:Subject:From:Message-Id:Date; b=lV62WDWy80NaHtU9cc5ZMJICindrfweC25XOpEi3DGqc6STFlrsEy+ByRpFJhLWtnwf+BQb1zq/yCUaXtnPFqwYlxun+TuEPRkjn/NeQC89XgTJ2ubKbUWQ+eOtV69LvsF/0qBAHUYNhM1XRdwcbLxCJsZhrSL3NxDb78ttr2tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7tEsV6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7tEsV6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA01C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720433782;
	bh=5AEpF8GMgdfCEhw/4VG7cphb3dVPstjtmLB/3I/JLX0=;
	h=To:Subject:From:Date:From;
	b=H7tEsV6AroYvuSHe8VOjK9qhgKAFoDyfVy4qd+VXUHSbuNiD+R2UMZNPP9SmLOUBD
	 uMD2I3eFcNBnN4pQOfWFhxiSGo9Js2ICiiWmKPy/5660IAPiPzsmJaL4zpgMmTIh8r
	 Hz7pzQXRzv6CCWZmFVLh3jZzKqdsV3xXglV4y46mU7B52j2F6pikWgNppmaV3Y7du/
	 bfclGyosDD2dDaT2K1zwZn2x6JtJasdPnSNBbL1jv6RdPtLbKPOwvpN6mkqe5UY+Cl
	 lOHG8fERCfeL1t99tAB0KWrWrtUMLkLC86Ir3AgZ7PQLBW14HyP8JFfAaFwU2HxlZs
	 HxvZU8X5Fid3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA1EC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043378276.18165.3187942144781697931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa0665570817e41fd95c1b46dc74badc4b6ed142a2eff83bff30a145b61fa22
Date: Mon, 08 Jul 2024 10:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720433782
