Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358EF265CDD
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766922234; cv=none; b=ZGM0FDIpwIBiC2uvdf5O+QSDUN/kaIoYwDnxywhv2WcIEkYCaAt0uEyTlRy/MwWbU8VnGDBWRUYt3sXxTM1X5XxoXLnb4GEj5H3vq2DtCA2pJhPZRAKiHimsYyCPPWANXs4EnetD/6/MAAGg2hz8dDnfIt4rKx6rurbp/9BHmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766922234; c=relaxed/simple;
	bh=DGrkNlXwxRVuF0iln2fs+azPpDgS2xuodOzZPrSQhNk=;
	h=To:Subject:From:Message-Id:Date; b=QRuOp8ZeuycoOGdU7lTOp1z2q64cnpQPqu1itvZpgv6sUKYrAW/Y1wX4vNntHmpct3JSNcXL850dvs2W/UnKIA70Md+O/PP3o1diPDN8UtKPuQ/bMPWyBhew1n/WxtmrfGEk/cTujpYfryssp5oeyjiHQ9hVih10LqWoOGFeYes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amQx7A1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amQx7A1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772DC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766922233;
	bh=DGrkNlXwxRVuF0iln2fs+azPpDgS2xuodOzZPrSQhNk=;
	h=To:Subject:From:Date:From;
	b=amQx7A1bNyKqKJdE1eXPPZjAZXN+VOBPjt4oiOGvoWCA6Yax0OcXcjjA93uHwpa8L
	 RFowCkHgOeeHdj0G86WdjcAlzNHwEYnWgWJJSaZ1OvjoxUmeAGgcDX2LEICEc+lujG
	 JBNQrpnl/Xk7/3ZPg3d3iiSQHJRFuuCANq1lEHWdAyEho7SpCypxceftobw1UO+56P
	 3JZyS5TCmftBheQbds96mpwy7SRMVAl1exuySpIkParEl1GaoDE1MfGpGR95YS6tLp
	 gKL2QIm9hgQVtSiR9ajDPrcgdbzuEoe3U0aYjMV/vczoHhJEGFUlnrwBgOi0CNOHry
	 i092aDDN9sy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C1E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692223358.1870.815627137494994010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d72e74b87c59df450c252b0f7380f4bfe82631b0a23b74438c4a85d75b259c3
Date: Sun, 28 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766922233
