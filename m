Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC926CE0C
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758883194; cv=none; b=jAxqHNMqa7b9og4GRWKqE3MRNluU6M+quT77INpkt5yuvhK4Vt+R5v0rjjOch6s10cKiMFT4yyWJ15N2UPGSTyAXhO70+GcbP6yrk1JWFB0vBEcwR+IEu7HhbQpkx3SRJYxSrQQrYu5u+sN6S9HDXIHDOlqurYrM3hLqSyk9syA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758883194; c=relaxed/simple;
	bh=JtOrc5/yPmr/cdSmynRZw/kW4cD4ARcLuLC6Ia9ZqJo=;
	h=To:Subject:From:Message-Id:Date; b=Kv+Y1c9rQfIuXA1mSRGQ4qUxEIfD3Dyh9oDLGrCVxb8vP8Awan9j2q4zDb7v9RivNPFnnTxeXl4RmC2godnFF4w/sDxYdfn1ycTDCLZVm/DXoX261jcQDu3KSNLfouVMf92/sDi5SIAXW4xCxWOdNNaLXcur79wlTGa3ohfCnyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+BOneOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+BOneOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DEC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758883193;
	bh=JtOrc5/yPmr/cdSmynRZw/kW4cD4ARcLuLC6Ia9ZqJo=;
	h=To:Subject:From:Date:From;
	b=i+BOneOehWYPZKKbVD4OdRcrGLYMIpUCw3jhLjOH6oreqvq5ODm1sfzyRfePC7DQY
	 G/Zd/nCh70XAnxF1ATyqJEKGuvJwFs2kSGde5OWuickrn8TDD0jubRnQRhtIa7g/or
	 5/bD+EGWWOVvUjD7bLedlEpi2N5f1JojVdVxJQr8jcdFp8/huy7XIPYvRh7MSJk6tv
	 Sr+jYMcb99OE+DwcfGCtkbCfAEBJ4BdWrc3S70x4alJozp2PzXNOtjoKzs+KRlYVtg
	 EGVI3nlymcmbS2DyDDIV/xFB0D4DtTk8rt9bFiCgLFEwA4ItDI0SEuDuPNb3LnXtqP
	 KKsL3QhtSYs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003CCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888319358.10878.6827321843293806576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4129ab2454838b72886b1c9eb6a18da7c761df3fa6ca32236f9399f2264899ab
Date: Fri, 26 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758883193
