Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8020142AA3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714312343; cv=none; b=KzzlKpNjP4ArsaGCM2Zl5ppx3ftbtcg8wGmFXU2hcwgpNiBmEvXq/QGwrebMPSHbaxmkOV+KeJlgvi7mNxMO+IebWIlTJcNmIwiiEJhDIi/4mmMz0Lt4yHYicvY+PcZ7ChPNJKGR8daGTf9hBXeSRhGZr37ZvJ9flqmo68DVE5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714312343; c=relaxed/simple;
	bh=CtB5fHu6Art+dzPP+fOz3Hd5NvsHNX1YYv3GxL7uBy8=;
	h=To:Subject:From:Message-Id:Date; b=Vn8gSZff6btoYahOCzgUIVIuKpzYfc/H2C9tTTaNNla55C4T50suB7m+2MaljQj5726Zn2/OW1lAj58VlOrIFVP2ldZ1w2R6w/JBXTGGA/+YdjW8rV4gBgnfvipJ00OMPjmcz512dxM7B5NRfvh91Vy8/liw36hekuXzFFrXOOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OckkY3lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OckkY3lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9277C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714312342;
	bh=CtB5fHu6Art+dzPP+fOz3Hd5NvsHNX1YYv3GxL7uBy8=;
	h=To:Subject:From:Date:From;
	b=OckkY3lwEVH9K8n/9/TaSW7JnxdBokZ24pLPLCmB8wIEw1U+qcSYMTjQe3czsOJHb
	 ZglBVeKuZs4vPAcrw/qm+pZYhRwUTxzqlwZjGMMCI+I9Zi7Mw4yb6qErU2cAnEz4ex
	 USeF3o5ItrC+6ZOvyBCD894fsmINpBQUZ2USavSwiCQf8bvmt6egXR5oSx/TBF2rIb
	 8RpxQbqbQS9AVG/GVo5YmNTcErgyi8wc2Kp8DvXYI9xxU505KCvEsXVAD7yh+gfDht
	 9GHY4Zkfdvo0tyQf+Jv7XTUCWFN48Dz6y82MheJfWLWC31KRuzZ0oa49Hgn0fbLLFm
	 rrTMVbApeSQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C606CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431234277.27489.3695276646617816141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408e7d7b97644e7150d231428883c353c79640471a11a1075d5b33298859522a
Date: Sun, 28 Apr 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714312342
