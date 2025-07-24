Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283732066CE
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753382994; cv=none; b=oIvoYdEhZFxNUE+u9fbZfxKs3NMGtU/bG3yyxlFMNWrNWiLH+hTcNmdxdRKaFOPGUoQOaWbyBIQSctGZ8NOq/3UAlwnV/3DmS6lUbE/4lZA8OXt7uh92RaLUL0xf86PZEGsxcue45nlzxgkw+HHPT5YJG95MLTUxwDoIWsKNfsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753382994; c=relaxed/simple;
	bh=wSQnSY3YiCTXD+ojnH+pDB07tAu+LNB1j+AterCQlNM=;
	h=To:Subject:From:Message-Id:Date; b=gcTYIy2AKFLwEF6e01TXkBB/gSvjPRszCG5D1QZzNuSALRVFsGuioW6u6PaNlmzOPB2k8MaWTvQv3fHJSYC7K/cZCKRVR2AgS4YsxqV5HmtOq8leuI9xFY9+h+ozP7pUVE9kjz76+2JEvZqpQ8IYmoLj0v3JUynVV84QYlqCaak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN0+6CuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN0+6CuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6932C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753382993;
	bh=wSQnSY3YiCTXD+ojnH+pDB07tAu+LNB1j+AterCQlNM=;
	h=To:Subject:From:Date:From;
	b=BN0+6CuKqZO+rmDZKKbYoTX2aouhfQuvMdum43SwtKfT+QOUY0HtqDQ9dj/YAcGMX
	 v8MXDXgfpCbvCItYoZYwB4wK6D5egmbcF+yd6tpne+23btfYR69k3yKeSzRVybIAxj
	 6wWrxwBnIIbah/32QZO2aC4frklKls/1LdnZJNV79h+TZ4w5AITuoGVxobkY6WDRt2
	 iDWlWapPB1PDve5MgRC/hSzAygQZe8/vekmul28yivx8YYjer9x7c3CYMc8bT9k0LR
	 C2Ci1LrgqRfUarpB1SM96OWCx/reOi8HMcym3gmj/7c42lTXDfihim1qY9izwfTod9
	 6e98wrcmubMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA0C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338299358.5053.7343375821918217640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2eac2db2f8e4b4ab21fccb7a8acd41a37065e01899209ec82f3a270b04aadf
Date: Thu, 24 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753382993
