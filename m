Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590201DA22
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718463503; cv=none; b=LNOkAsYWlW6U1ruNY0NECxFT88721MusY/de0eBmgMvFUHz7hidiDi32+G0xANdH9v72eB3o25Q6/rP+I0cGe1LCxMfO6RCsn94k5x1bleK+OK+Wg2lvR5PtIdjJwYyg2azswp3xwpirBmXpTmYNrQERsSfwu0iDDQt2ThSxme4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718463503; c=relaxed/simple;
	bh=KUYcV1UbMz3xXtM5gyCRhXz0ApmOw2GRHaP/nRX7ncw=;
	h=To:Subject:From:Message-Id:Date; b=WGe1GrtIiVWQZCLoKrZp7ZnMYt3MaHukTwqXBUMBw3gY/aS3u3gox3GRva9jMqwXX65b3Nj70PstpeIjuaYrvpUfNM7AJcWckBsNvJP9ec7k0oFEeNpdfcd1bwlOjqGIguMjRabiM0iZKxCbhTrzMiPnaYXBqi8XLcc/YE5M0CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHhV3cIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHhV3cIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA853C4AF1A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718463502;
	bh=KUYcV1UbMz3xXtM5gyCRhXz0ApmOw2GRHaP/nRX7ncw=;
	h=To:Subject:From:Date:From;
	b=XHhV3cIPQ000oB8WzohgfkeZnM/q8nwv33VcMMuPZQyYZNOI5sUBzBre5mwFNTFTV
	 vqTT8e6kCuXdUPYsixWCK+3AsTQQchpcr8wW5aAWuDNqd3JATJxYoy2yGA9QSdhdgg
	 iMtdoiq37O03H7AVWLZ9vQ8s3QF+TG03RFAx9A585/524Pow2xy5ZmYAQUoV4iWGUR
	 w0Xu4sphgWY4bqChysRhd/P/wvd76Ugt3BY4y/oCoM4K0cdSA+d+OkSC5YFpG7aeVE
	 ZyUmUYKkjFaZZhtJF57RpzUpumU608cy5xWpd7wXj/FsBvZ94mQF+9UVCYZRIJ0Mpc
	 3+R30TA33K8ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33CEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846350277.2572.2766443984595733022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2342bfa52c5df74f6b7fb38b5f9f12bb98e559f0b8db7597a11ddad71762e7
Date: Sat, 15 Jun 2024 14:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718463502
