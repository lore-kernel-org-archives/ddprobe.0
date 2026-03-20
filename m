Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128DF351C05
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774035294; cv=none; b=Ufsgu2B097+1VKytPM6zI19miyxCvvSeWdW9WVevxQcY+QoZZpEP9oOuWWG2+ELnVSQmFEDrH+NJE0ep/NchKh64kSEv7Cnq5YmK3pNlH2PQ9C3ISp9nRBE9ZS4RhAGHmNKviI7f760orb//eN5rM2oFEgmbKxzhSCCLDgBhlg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774035294; c=relaxed/simple;
	bh=Bn9eGJwkthgWCgDu61aoGaKAJ6bW2/JnTeWGlggxEHY=;
	h=To:Subject:From:Message-Id:Date; b=cMuDLYxNe/qy9UGmupuKC6Q7ic1DIrGXJlGcuT8qWmTXv3WRQm+AmqmqpRE6TuuT/mkTuEE2kB8Exxhv6UwBleEOk8UWxP7t73ZPtZqbtqAutPn28gMgNhudMjPqmM6r90UqSeccSQyHzuHnHsr0t7emXbaYG94+oWoPlb92ZY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkKVpqeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkKVpqeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFEC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774035293;
	bh=Bn9eGJwkthgWCgDu61aoGaKAJ6bW2/JnTeWGlggxEHY=;
	h=To:Subject:From:Date:From;
	b=ZkKVpqeEuPqveCTOG0plBbkCJRokJHokX/VvWSdSe+PJS3PXcj1NGKiYaOhdTgLo7
	 rmJwBSzlYI1u4cHTNxBNgAHEmSTwUlfQ5oyyPeYj5pmh2hSW+i8BYbRpZXsmyyFo7B
	 wMY4XvdbWQtjhY8UiU4wBMPrbU+Wh+KJpmpmn2i/o5y2cXYr/fd80t8w7Yhf03NCcR
	 l3/OY/M3c+4sea4guVVXZLc89BbSpjkttChMTrveA7e1FK/1NNl8xKm7hZJ4U/LB+d
	 dOUM8hFcvoB6QqTIPvv9hBwf9xJO9sdEACtwd3twqlPKzC4h3hIEOEKRypHKpYJ2Ka
	 igpRBe6q9pu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA091099B35
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403529357.15764.7600950586522871404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e4e036412e75c0d4c821996acbd92cee6e55c4ae076fa46d5c668cc71b0b06
Date: Fri, 20 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774035293
