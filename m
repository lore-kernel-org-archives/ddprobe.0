Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7582C326D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787803834; cv=none; b=VXF+NEPWZSG3XHgNGi4fMilAfIn26KKDp2IBKpHvHgfmwZJSaLEXoLIqe7OsioLHrB92H1bl7ik5bec0RLD/bQB38nY/wz4Rcc2lLboLVN/Gx5q6mw2VEgHahRibg0UPZ586zh4zVpCwb35tcHaylpTOP+VzSZmrbROJa8foNPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787803834; c=relaxed/simple;
	bh=h1jXoXhqTwvMVaymNwRaQ4KHy8tCL2APd0P56bYADDM=;
	h=To:Subject:From:Message-Id:Date; b=SofHIr4Yn8CC/PrYaulFXkk5NJ4gyTqebUGzOQ5PYG+zdK6mPukf1RAXFquLaIAE6t/7XBmOCiLRO1wNsQ26l6lF+0FyJ07WHA2cg73a9BfX/E734q6Tat3uXvwradODApFig7BKTc2VovT3eh+6DMzy1B9m1IUWO55mhQSQsXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb6CAxky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb6CAxky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB228C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787803833;
	bh=h1jXoXhqTwvMVaymNwRaQ4KHy8tCL2APd0P56bYADDM=;
	h=To:Subject:From:Date:From;
	b=Yb6CAxkyOXyG71kezRgzuBydXonWjBAWWgaYJAH+HP5qT0EynYJHLS8K4KAmAG3BW
	 OPP1WiULGqi23HpJBJXH3qJOi05na3XAYvxU2Dem55C2i8HR8Qy+7WmxILG7AMM8Pm
	 0uI6cyXI4K0CkvlHMSFbvsXaWH9rTDBKpVX+il4hjzf7Vn4wbpVoRb2WtI5NCUVQaN
	 qypEEL8XTTfshTKhMLLEFAkqhA+aVFqTBcST1ke1K62XKokWRz6eWnROtS+3Aa4GJE
	 qZ/ZzYPigBN3w5MyaUOFAjFoxs/ySgR7sc+uWH1+khfZ9DzEd6jjLF8F/RdnsdCol0
	 2psBiDMP4o7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDFC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780383368.30261.10656563039715106697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab1722be84a0c7c1321e087ad64f616f0c19dafb7f5c6a47c50ef6b1d58ab75
Date: Thu, 27 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787803833
