Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C965B353EEF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769517233; cv=none; b=prCbgCNPSQDwBsffu+DW1DkjlHcPGdkmHxPmb1qO+bSRzt/rL/C+u11ZtCQGcxvk3og9Cr/SgOlUcTJhIjScNyXkewNnyJAYoXvmmKv35rtJ6qgDABwPCbOKYQOKY28/v+7DL9aKFiITrQy3Ok/X8wtSujwOFAygO3p8AjX0vWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769517233; c=relaxed/simple;
	bh=+3M6FU2K/o5FQlLo2Rku+s3Ks8cSbgyPFbe0hkkPqk4=;
	h=To:Subject:From:Message-Id:Date; b=CXI2zIbs+lX7O0iDn3/p2ey0720NDO1QhlOsSRL4MJJUGE3bSs0z81KzOP2Gtvrd0S71e6unHb6BwBbdNs6qoE6ZHkt1kc7YqugYyQ01bjhbVWLy416YpkuDTxbniEjZjrh2nqmxP5i7/G4IVyluc/emQrTLiOzTnXDRGAHsUbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5BB8lDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5BB8lDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769517233;
	bh=+3M6FU2K/o5FQlLo2Rku+s3Ks8cSbgyPFbe0hkkPqk4=;
	h=To:Subject:From:Date:From;
	b=F5BB8lDcPzkKIEoP3bKuAtzPCof5CRv/xvHtTC8MPJZwu+A4FNmbmrCBdZlaqqEUp
	 bezCS4MpEjT8/St3gs1kTIFOTtpHnIZ2SqWjXLoRekA/nr2SH4AYEYYVf+Yc8HQDE4
	 Nn1kiRLl835JEJYOCA5UHm32laCCGaQxz2jHiBCOIkynz8aAaBQSt3wBQVc9y4n0Ee
	 pwkn4TRMFifWpnpXvCEOcZJ6bU4IAsHiG/w0x0xhyp+52S/gtgF6+KcigxOAUkasIQ
	 xTQWJ/185ap0qlAsXaDY4ABpUz3gn34+oecjz4hrPyDSk2iq7MOmGVsmUeSxHABqfT
	 +RL878UX2fGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBED2F000
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951723359.8993.8632304496148501502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c223116c4b657888dd5cf8ba7ab567658bfde80710164ba56656d5980e518664
Date: Tue, 27 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769517233
