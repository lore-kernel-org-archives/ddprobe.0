Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC382F3E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752361194; cv=none; b=ejoNB4BFzPLdnVqDrPgpNaWoYKdj2YZYKVCqA5zgnHnfGH5xcd33CZ4Cjebe0t4RYgd5w1+C/JCVJlSMACdRR+so2/QqmjEu4eguVYzCkeAHDbJn14nI7jyc1DKHBYbNuxfwxKWRfR8Fb10obLYk+eRVe7YG8ZGwq3HrfeRi0L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752361194; c=relaxed/simple;
	bh=I5et3k55a0LCsYB/lxxkZ+iBZlp6G5hygRESmaetbtM=;
	h=To:Subject:From:Message-Id:Date; b=diOkDEbhMLedJGIX61eKofOfy9vO5pFqvbncIFIQ8i932SGk15WSLPhOl0EYhK9XNwEdrLnD/bMbhEPiSHfxwlxUSO/udLBpHvJPoNW0Ql83cc3Dxdabt4zYf+8Aeioi84SFHvfgwdrpSTacGrCnetq0wsjfiu4mAhY8Q4aJjMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTBMTP1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTBMTP1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752361193;
	bh=I5et3k55a0LCsYB/lxxkZ+iBZlp6G5hygRESmaetbtM=;
	h=To:Subject:From:Date:From;
	b=VTBMTP1IyzmbKwX+GO3QYmOP7wBD+yge3t3r2V2FtERdRq1LE8dGyi3bJkGvQEAji
	 5LrC3+mzwTAmylkz2p6J+JLCXP6Dwc3r1n8I9LLgr1+Zsw+42YK6+4Et0cYCAgA7p1
	 DSc5wGPuKelIBvjkN0IpNs/xT5FnSjBlPtDOraZs3Dt1x1KIiEhMFjqJIcfox/8Xez
	 XRC7Hb2glIjEfW3XZyNL3ZxqhWwJwLBOhbtcoYCjVXCe982iabViPLhM5+clgmpBH3
	 OKdBF7fb8EALWFGkVZpmIeTWiVZ3w9JH160IkJSC2wSsP1NngBOOstJIq3xg63Vj2V
	 tNK9Sk/3ogO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91933C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236119357.1428.8000662664371956593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774de5cacb6640504b55f10da2e07c53b091c313219a8b48817b8c83a85e687c
Date: Sat, 12 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752361193
