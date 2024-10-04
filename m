Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3779D3A28B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728020154; cv=none; b=EG9YjjHutH1B7U2NVZU9bLvuy0TcO0+yZOQTu1vC34wd3qoFgwqzuVrUCtvGXQJ0NIHb8v6sBL0ua7vz0NJnz/3gE/Dx5vFdaEHzUo8IDPOB/wqXHHNH3cYjadNDV74KQ0DohGKxf7Cs/2ipCxbdaVFzT/G72kULQIJweslilak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728020154; c=relaxed/simple;
	bh=mhvY5B0HdrCowIqnWa6/MJvqUKAQr9wsxhqiVgxCvOI=;
	h=To:Subject:From:Message-Id:Date; b=g2ZgM/i+10cMtbWCEQW90l9mNm40KTd9ky262Zd/EIwUp1s53oR2S9KHghOr2QAySLQBlpmaRuOc9O5AXdrYvvkOXnMLHBXpBVqxdlVB3MtnTspOEUOCF/MnXsuzXnMj5s9t3+O8VSemT679GxZY39wMu+fLcScWSWHa6WO8bGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dckm7lSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dckm7lSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F74C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728020153;
	bh=mhvY5B0HdrCowIqnWa6/MJvqUKAQr9wsxhqiVgxCvOI=;
	h=To:Subject:From:Date:From;
	b=Dckm7lSzxXDHWRbQYuStTI3nOpEBiyFvEfMSXTIatYyjvZzzOrSMluub4RScV/xKu
	 wHCfJ4Z0YmYIOKWWDGOBzrPvx6JdtyHdJ53xc+GH1SRolf7UmhCx91X9O/nQkDDSHE
	 LdwCna9u9/PQzp8xbvfLeAjMrPN5xvIGClyrf32v5wYljcWY6CQNqKeNrxnyZOmpML
	 Fv5zVCh80xxocv9MyldzBzKPWvntpeD3kgnRg6VundUix/gPmFANPoaIuDNgLKGnqu
	 eQxnM27VPr7w/327Fsji7ZZ28afNXRdnXe7nG78rYPM/vjiV3Swq09HjWoAYMzvsvW
	 NoqBNPnTCUolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F92ACFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802015364.5626.10348480451909111868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6fa16623b7d2c3fb033360036a3e85e9ac501abce7b1a16ec74b755576483d
Date: Fri, 04 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728020153
