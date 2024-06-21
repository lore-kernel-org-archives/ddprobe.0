Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA2B12F365
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718950343; cv=none; b=m7LCGelTlv8w7PpgYmaKJToqIip0f3T6aorm2baUo6HvUVPJ8P+T4U57zGr3LixtjKqNzeeedYM/Rt2B9Mk70OxVQkGSbfyvPaVT2loOvDgaIpyTlqhBe3AV+cxtw+SU+9B1OpREgMVwEZyph5mlONHJKjPau5uDzaEmct06dxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718950343; c=relaxed/simple;
	bh=ARU4DVBRqzitEOoT0511juK5+FP3XjHDP8+zzvff4KE=;
	h=To:Subject:From:Message-Id:Date; b=b+PKdwShktwGtoa0s+ieVDqKO7L3TFp7kU+SLhn/x/zrP1RRbWLOaJLjdh4vUHqQaaOCv3BCLwPp/FUCTpqAlh5XwXxa8e7MtTogPmBVqST53DPy9xWY+9LlHDHRqFndJt6B9PJsNaiGpZgm/TROoFBMLt7xmQnl8LgvfIFhNk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBRtTX2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBRtTX2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE2FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718950342;
	bh=ARU4DVBRqzitEOoT0511juK5+FP3XjHDP8+zzvff4KE=;
	h=To:Subject:From:Date:From;
	b=FBRtTX2FZQ9APOxdCrweaio7cs7sSIEBwNnY+EgIizNQJbglwQYvD1KkYU3LiFs9/
	 zHeUrDmQG1M/CWr5vCwvo4EC0hFShDBEZcrwaQUa6oiHdCCwzabFp392iKFvDPmN0I
	 3RpebcK4lo5daVrpfLNt/vvkoqGOoNlmKK1dj1kdK9SYnPMAAmcP1tpOaeCYaa13Ig
	 u0ZfX5+LdrKdodJOQMhM/eFFPqAdcSd8c+ShGzdJ36b124BR1f+L5k8jhL6Qz6WBYo
	 xdRJAAQvfgFWKUyiQEMwdWCud7IkVPhORrDoxKKBcyBcv3/vYCH4spyhAEr3tv9jK6
	 mF4qiTZnqHTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8236C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895034280.8948.3934729464549189610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fb6453318219d814a73b12f85bde7c9a9a99ebdf836c699b5f9a9b463f9d00
Date: Fri, 21 Jun 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718950342
