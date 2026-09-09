Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E9D545D83
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788953434; cv=none; b=LdbEXLP9QLZN7eWt/d+Q9HgjxmMpYpnuUKIF9YESvts9sMi/Ao3hmtTCriz6DrCWFVlAAeOUNt7vgLf1h6dE/I9XUhuK4ssgfoT7PkDusLGO7xTQ0dYGNLuMj74ldLIZW3fUK8yW+A0G21BrIPjGooigoY/z1WOXba1Bn8R3Y8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788953434; c=relaxed/simple;
	bh=g5j/wdiBFHduPFQ+8drdeH1AWP9TG728+toCvVx/Vis=;
	h=To:Subject:From:Message-Id:Date; b=WlGfHjAvThFEH+bALK3kMWs+JNBf+u086pViccGtJHa2BIaWsXJPl2zm/TFWWo0z+zz8ND9wDaXsyrAzYEl24KzTxh6dq7Cme5BolpHyK+vSmbCw4ILCsEI3LCo/NnbLt6+rbzrcTEMDuESZDdaXo0UForsRAeVVFrw8fil/TFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tafh94CQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tafh94CQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBC6C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788953433;
	bh=g5j/wdiBFHduPFQ+8drdeH1AWP9TG728+toCvVx/Vis=;
	h=To:Subject:From:Date:From;
	b=tafh94CQiW0JN7ANMidO5vuEZu42tGTHpIyaGOJVB/yAnuFbsIRVigeoW6D7gHl9h
	 VRonTJlSx3Sma4CKxviAi4bjLASrrU4FnPX2P2mRc33eE9L1Pg2gq0ANgXFaXla5SQ
	 9XNsLvQSMhQRwzRC4oElVusGKbYwhFs23vNgmEpHz30T6AeQPUPFQYTt7UGLkMusIO
	 zPqHGy1iHXZMem/6j/YYwLZI9iuk5VJv8e/fgAtCkmwbfwV9R8n/t07VnPNVVSvTrl
	 kQHJ9gfT11dcwdkDaqkx4IOJnkwPlYptsiHsGmaNQPimYfw83ezU2Vv/3F0Dl0GLyj
	 5fpQYHA8Cr8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77EAC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895343374.31158.4194927835674935954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2586ca483aa31088bfc57a8df9c82c5e70021ee194b7cb8388e051a9029365b7
Date: Wed, 09 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788953433
