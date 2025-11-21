Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92219E839
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763760114; cv=none; b=KgZ2hhLqWMM+N3Ld2uXC2uc3GbERlhhfqYt/SoSh2FewzBX+xewoMIyGjPkxp8dW2KUiRmIWXRClyZ9of5nk1WO2ut8fg9UdfV/4+zqXirY+T7aerzGhjImew2CTCI5wmDS+WMLExOshnFKf+xqefSU1IdlVgNG2MWiJZv2IHoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763760114; c=relaxed/simple;
	bh=WqG+yYmP80Q5Ri5lYeZNNVONZ8zwUOYdu1h3nZAvSug=;
	h=To:Subject:From:Message-Id:Date; b=ZOPNdkFMfpIwLBlkdXZzs4YcmLiL7OkG/dfYGFAYHI5V0p6OozxizTweJ7Gw3yD0iqq8jHefObkP5Uv7PiUhJ8RVyVaLF5ulcM4J/4iet7zPpENxB7LlGOSJD9NwQ8NgDDctnY9vLZnejmahLx0yc88qKr5GaADzmkPgq80kQrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0jgVMSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0jgVMSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F65C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763760113;
	bh=WqG+yYmP80Q5Ri5lYeZNNVONZ8zwUOYdu1h3nZAvSug=;
	h=To:Subject:From:Date:From;
	b=D0jgVMStRQXmEd7tb5Ecu9XpeWQgelNfzX6QIHNXbGysnzipEgNOlExZ6y4lIxZ5c
	 eQck7cPMEXzl73P8+XmoGJ5PnCmoTkXo80NU05WLj2CK+HUxVDK2JtsjAslafErETu
	 qPCO2mp7XOJMlcIjk33wjnON1MXgcI5Tv0NfK5cIK4v/d1YoTY3jjkHqBiK9JmUwhX
	 CmC9yDXTXr76YUanldLE4xq+ZNcCM0HLdu97SwKZCpqMe+4Z9YDg1Fdj/wjaYY0Rgv
	 kp1F/n11SjSbOxk13vxID8WSiExiGPC277676HoGlsc7uP+FxnvHiKPeK/KGl/5UrF
	 qydLZN58F3nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C631CFC281
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376011359.7319.14617677018595187142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f801c686f552c05715b5628f8db885de70f02aef6f1ca89219120cc59b492a0e
Date: Fri, 21 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763760113
