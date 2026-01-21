Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D854494A13
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769006634; cv=none; b=g+F3QRf3RWJzyT1QrcLDS5N6aOGWnxLfrqYm+Oj7tw2/JSciBZPJ77RUx9D6KxFTmWtVu359MvxKtrvshpHBYdgngsV5HqhvZLCURPz7/MwoW7+b6WGlG7BWCUtXaUH4/kKhtmGyT/AfslgZ5Pg3RgYfDVSXTjPKDeOsr1NG7HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769006634; c=relaxed/simple;
	bh=yiuYBK1iCEquFcJYWN0wJK1WMzP5pjQVjP0ezpjUIM8=;
	h=To:Subject:From:Message-Id:Date; b=lp5Lmqx/rHFLyapziNht/jvG1aWTYzj5KlmPCuboI4/EQH/GV8w50Dm+oz1lkQf8yEQLLaK+P88HuKYuDOAD3fENWSKtkLRUmhKvPLGojggaQYzH4yWiQvmqyMY2I/584SItEFkEkTTRnEmj/yRzPOcSMboe6hSVfEPyUK3EGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/Q7hxcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/Q7hxcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB00FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769006633;
	bh=yiuYBK1iCEquFcJYWN0wJK1WMzP5pjQVjP0ezpjUIM8=;
	h=To:Subject:From:Date:From;
	b=o/Q7hxclVDWnQ21k9i9IGlvuItWl7n6xdUYW1An8zOqwbM0meoNuuy6k0WftxigeZ
	 iUUlqfjQYV8FLOPfw5UWBEOCWRz5G6TqBQ/myFG9h8TA3i9IiClyghrZikLjxCkr5w
	 8W2IHztMap7Q85tW7GZnocLQv6SKmxTnTUxs6Y0ii1oC+qCAgINidtn54mTP1ZDFR2
	 EF6cxSzy9ZXyQ63OF5rWjduhA9f0g30IYl7bjiHOvlX24SopObLPNorUkYtc29uPar
	 UVYLIO9P3PrY1lux7JlTWpQFnBMRBbCG2Q6FgFtVCQD+lAloNWIVyfeDRZELKRW0gb
	 7Eib8q70bwkdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F7FD2ED0C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900663360.6162.14189128322384318614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c126e79d4a3fe9bc85387ca2cc16beaa358f4ba5ef81e854a1a5d9c13bcf85fa
Date: Wed, 21 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769006633
