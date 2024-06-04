Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740FE12E1C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717512983; cv=none; b=bhTc/tLdQHdKN6wJWT/nvbzgPxYm8Ai1SDKXNJZjTFmLhDg3PZG/fL/d4ln3ICEirvNAvcB3b5UktisRvPCa3v0c3rF01mE4XC2hKGcyU7JHi6aLnduHoypaQJPbsGQB2mYr/F18DbGCDnA8VJiDKL4fYlDLoHDQEczp7JHRXAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717512983; c=relaxed/simple;
	bh=onVOiA+f82IUblCbHf7iiFes8CVsBXRPvFiB6TLbj0A=;
	h=To:Subject:From:Message-Id:Date; b=kCP903TndAWQi5bqoVNY3/CFdTq1wnTvG+WanH3Hi+y9d8qfx1QmUnXkp32ccFBR5wwxe4c0BJd9a8v1TGatBcz0CC/vdX5YF3oLtoFsPyJuceEMZmHrjrrAax/jq2umoL+fmhE5HF2QiDgj+gQKelkvIOA+uM52DtLgrTZXiqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzQnVdTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzQnVdTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F212BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717512983;
	bh=onVOiA+f82IUblCbHf7iiFes8CVsBXRPvFiB6TLbj0A=;
	h=To:Subject:From:Date:From;
	b=hzQnVdToOB4M+wyHggp/tlI2BYN665+WM90rKxKg/7E5AoytjC0cskRvnsSF+/wAD
	 LlE/5dOIKwsebip/V/jTGbxYim8g5sC2TFkaYn8U8dSJS0hi8khoP7JIAyyP9FGCOt
	 8eMgNrLR32jHlLu+8uxJpDv/9zW8jsAPPRxY262hGMB8TWk4hNuix+DvyoZ7H5Z9fI
	 5Kxh0YxxiQrvw8//IYZSwuH8KsNyg7yUDAClpivvJUvzANVVBknnc7wnqGVMWIE5UT
	 v0z2MjDPX2A4g/Jt4tB3ELomlDGDNG+fbC+GvrIu3jRYIndJD1Ljo4KmiLLmokdaFl
	 aatYpF4Ql/zbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0DB5C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751298284.25314.11813346291563825307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c22e830f675e730bd383caba3e7a8f35ae9581c31f63f7b31f487fc492f135e
Date: Tue, 04 Jun 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717512982
