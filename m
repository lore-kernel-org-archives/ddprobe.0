Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD29F9C0
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774785294; cv=none; b=MNSwqxUAe5D9qaKGNGQjAGJXiq/3/OfZIyR08WFIr2BOPmHM15LkM1e0T3yBUQkNcQLlAol09v8SVRSGFhP3fuT5FSR7emyVaUgBeJGvtPDFVP9/NusTR+67VMUHmKEG3Sdhotw+E5VK24MB1xCIuGQeEnQnNn0xItPmFy5cYGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774785294; c=relaxed/simple;
	bh=JF+2y3WKih/mxx+jbkkyyMAtKPurS0/XGNSldPbC2yI=;
	h=To:Subject:From:Message-Id:Date; b=nvSNj+uzY0CFJFnS/r1j4zeH0V9V+dhgvWWDtPutHafu23nq1VAttbwr76pEKhOONvnzva9s/iVK/WrJFQ6p8NoaOY2CqZuCZpEGRAz8GhXW/ks01kGuR108ZTrhiJ/HhrCPouCilUaxtfzpEqvt7lXa7yMs+yul/BqvjxS4nDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0US39+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0US39+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F26C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774785293;
	bh=JF+2y3WKih/mxx+jbkkyyMAtKPurS0/XGNSldPbC2yI=;
	h=To:Subject:From:Date:From;
	b=F0US39+Qn6BVy04RowtVSLNA+PO8tJoh8drWVGIIk1UoujNCatqkb1MqBijQXG5Xv
	 7/1w0QxC3Y+VaZVoUP7eT2VdMDs7UYcmOhkzZAikKiXdqHtUdTM43Rc4TTCoZ0xkB+
	 9aRCQsPWtoYf12HIB0sLOVz69EkvXIXu39pa5M8O1tj9WlAd+FT33Nq66oB5LccosU
	 ERJP3crEEnqvrcba6US2QctGR7c4k5uD/Mh/OngTPbsxe/Tbd1OtnPsGPjA5UamM+R
	 /7Z5JcfLLy2D0Gy4Fv1viEPWmEREj59B/ka0T7PQXvzw+176jAdsgS2F843HJi1qQ4
	 17xI3i+4EU7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7EF3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478529358.3092.5651182715787030145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5663b85aba8b65166bce02ec92fe6bb4f0ebfd9d0fac1e3ab491d7fb6714de1c
Date: Sun, 29 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774785293
