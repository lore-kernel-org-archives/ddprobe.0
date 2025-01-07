Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144B1F7098
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736282754; cv=none; b=n7tv7ss/Q8vF6RVQd1ehpPaxm0Qp3hwSdOC0jP7OJuFA3wsPbzOSE+QtUY+UGkaJbCwTXlPvJT2cAhpKbjeojuR/BhBkSAa5GQG8qVteOMptyWBOZy5I7UFzWhObdcch5oBvA1twpv/SZJh/oxYQUYP2YmVpNwEKaTpBew7moZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736282754; c=relaxed/simple;
	bh=9QAaBhrgv5BktPH+AdP7MSkxnV2SiXnOx45aJXj2rPo=;
	h=To:Subject:From:Message-Id:Date; b=NC8WqKf74roazPXldm35aFLwv65T/JlgrgAcDIvcDmJM/Cb2J5AINm+DIn6jP81hRVwl0Zd2i022d68hA7lVLtDqMZI7zvAMs/i6jDxr1863Ah8wlqhb9cmLNbKXVIBAs2EcH7spYn0wEtsv6+f53dv5LLYAoOaOQQSii+j1Rjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsIijf7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsIijf7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AABC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736282753;
	bh=9QAaBhrgv5BktPH+AdP7MSkxnV2SiXnOx45aJXj2rPo=;
	h=To:Subject:From:Date:From;
	b=qsIijf7U5Oc2IY9tGiodXvPBWLsSRrZa2yXUL9ozmCT4d/3pySUMFUHXXiDXrKSGZ
	 01Aa2750dq/Hge1zOD/bdXkeGVP7mt9bf3nROQKk7ud3zjWMRaq81uq6lxzwujYUOH
	 pQaJdPQFDjrLr414oTucNW3GtIfhRKz3a1mGmpjn177n1rvxImWS+HxiFl4dlaCIBY
	 PA+5VwfaPB0KYW1ehnnaJYsGUhaxqBIEedpUkgkfxsvnrVb90HXc2/TT9dpPrVY0No
	 g+Us98zloVTAOKt6t75vCEzVwBf1Uf5GBr4xvP/PVKUjmVS0tGAH+y2qaUPpljXohg
	 IK4vXtroznq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628275358.17417.13275176562219203979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97593407c092548ef6f82d0541a78c8a7127ded901524eff925f16e540f4e1b
Date: Tue, 07 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736282753
