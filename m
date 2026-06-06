Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C883221723
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780746874; cv=none; b=N2XifSlZi/PpaqCrb5721xdDCaXlfruX8K/mTMj79ZzwAN7pmziPVleTTnYbzA46Hlauxe84J0ZSagJSxYd/ZbcstQK1L7DhIFRxkS1mgsT0y5mZGbYKymkPEs8ui/otZ+pEUnoJicOkroilTz/3ykGDjywvo85mXHofuvs7z+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780746874; c=relaxed/simple;
	bh=Bc4JZSNeXNJHLOvavGW2BNqI1/tohhSnggN8I1zs0oU=;
	h=To:Subject:From:Message-Id:Date; b=bvkC497ZGMcm6exd8lasTqyr0eZeYaTeNpv/UPm5nF07UPirj29n5pjqGV+lBe5AStTLh4JrJQpwvLQw4FanDDJONJwJA0/MgedJy2JMtxQlyanEAgHmeONsj62rfanBSfgQ8rWmqtghd7NDoDznIP/Vpp5DTFBFPPYvqs8AfDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekr2znst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekr2znst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC694C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780746873;
	bh=Bc4JZSNeXNJHLOvavGW2BNqI1/tohhSnggN8I1zs0oU=;
	h=To:Subject:From:Date:From;
	b=Ekr2znstcOmOGUTnpaSbYNHp8XyvGZnU6iVhg7QK+ugMhM+4boW7bky3Z9tKVqEWH
	 pKgZsHiCvPAVkz1aAU98z61pJxH1sskPSCI0qiVa/8ED8KiFN95oTIlShoAkEKa+cf
	 akgEdMv57oiwvbHRf5BlwiaGf19jWQFMDxnBxdOSGLBCnfeogT5yKqE4YZ+nRPbZeB
	 MQw/v56TrdzeNkEV6FkSwW1vzrwxCx7OB5djl9nwW9hoNvPIk01yWQamq6hAGYc2IU
	 LRR+KbzY4PNXqnWsye2hYKV35oC85ycNVzdG3AWt0nFQ2wO9WCU1egQ91anM4EfGRh
	 uhl0pRvpLtaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC8CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074687368.27675.4851051347824973362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76247b67a3c9408464e43d19e8c686c2633ffc4f8750bd070fdf453f22a02c8
Date: Sat, 06 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780746873
