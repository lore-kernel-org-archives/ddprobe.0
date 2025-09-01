Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368792135CE
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756710594; cv=none; b=DUDw9Ra7DETUpW3xJzNiT8RCFCBg7SXwHeixqThMvzj4UE+kC/4/c98RvTE5jxNpdEIcaZcNlH31CG9sVsjH0MUa71IDsSeBNGEJvyv+p55b5nmDC07lwUZSSgHEdDSQEC+BSZbTiCB0Z9IAy24xpQMmgy0ZgJkaZgIvdnQwVds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756710594; c=relaxed/simple;
	bh=3b7SribrCeMX1fpcBfkiwPJIg7xwVqJxpv5I/W70w8s=;
	h=To:Subject:From:Message-Id:Date; b=PwchnKU7Eg5EozsECGR8fGCAPyuLsy5jQQ87k3iuzMZLtbu2oN1qBWKlsm9jPuA8qMSuRw7eHgHy5Z4Az3pN5r/Ael+pakMVJIM5mpAe4/mZGPVAh4/4fNQi0LODI888sq8S6M8Bj0j13Pg92HFNUxcr9e+iEbQkb9skNgZ0WHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSvBocn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSvBocn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756710593;
	bh=3b7SribrCeMX1fpcBfkiwPJIg7xwVqJxpv5I/W70w8s=;
	h=To:Subject:From:Date:From;
	b=lSvBocn5iiNt6huvRV6pUUqbybtyw7nHCIY3yTZ+L2UDLAyOSYfvjrWwcKxt9KdAR
	 HV+n1F9DApmjR7vS4Jsuecgr/vGVsQgq/WBIei1Gr6Qlh5af75vNAZwtHzC4/r+4k+
	 cJlqzVYA2stOaJdL5WX1l/Z2hW5nI6pnfE+F20Vs1sjJL0MhovMiKkuvX13QWPFfhH
	 r0msVpFEZMGfxOVGZO6esW6J6nXqxSZQnfRQ01SlppE41Qdcqc7+boehMVuIrDIfIf
	 mfpEd24WwoKDBDmv8XnE2XEjkD3ULpsXFSoRkM9WUAxYHoHk1wvevfK0Wivn1BgQzf
	 X1+wAeKBt0p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E5CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671059357.14748.13824750021274950890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79f56106e9219265ae6c625cb6abf6b3d3993aae8fbc1e2495ad5e137cae4ae
Date: Mon, 01 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756710593
