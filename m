Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0D477E51
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788254434; cv=none; b=VB1/UT6GgsUFV7/w+kcbiXlJz1UOAEGD8RguthBDWN6oo6OYsv6YW/3956VyWlT7b+OhIkwwEb83Z2hJGZ2QScledZarO+ByYpPJPKFuhsfwasOfGs48sTw/R9ou2E8EOE96NbLXmObGTHkiWfej1zhS+AH6QjpKqQMchTHsgo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788254434; c=relaxed/simple;
	bh=1Kd4Tull8BCp4nuOK7Ub7IwCeTTs4UW138OQg+tmZ2k=;
	h=To:Subject:From:Message-Id:Date; b=Z9b6zKoF7FCOkCCHMmqMMb2byhi1K5CsT75unX3kM8UcWNphIzagLYZhktI6BDBQ6BAuq8d9H2AxzWuSd0W2vqKhsoQV5wsPo8MaeKL9V4bJ4YJe5qi98+i0xYL0lucwiJQLW13oy40VB1QFU2Dx192BEf2PtoafLm6GjPi7TpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhOJBy0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhOJBy0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD8C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788254433;
	bh=1Kd4Tull8BCp4nuOK7Ub7IwCeTTs4UW138OQg+tmZ2k=;
	h=To:Subject:From:Date:From;
	b=WhOJBy0BiPiwGjd+zOMQbHHzH5IbkOlTLRPnNFMf2++gZwt9SLjnzyeH+0TW8oJdE
	 dImGyAUaqpq2MfvydEpF4i4M/x+M6H9VTzIPP+HToZJ/UrL25sBHe46oeopP5VWXRZ
	 bVDdCs/CZowGhyzsAfNb7qqi2KLlk2v2swQXpF8TkfLY0rCVHjoJcNSsnJCIObic9i
	 Fadv+Sc/12Qtf5Pg6sAlSu9u4KCDEeEqp27VC1GBD5OfnwwkL8HybzkyyZYzIwfPRQ
	 MfLltfKGcrjHqu0kNO+gWeR+H5bnRF9hIDwZfhhNA/oK1bRXYg7ms+Gzm5fPlsyLs3
	 VO9neyT8BQdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB13EC624C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825443369.15159.4427751052695788392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0f8155a82e6db43642665fc98017313735c8ff73745fe0078d940a6f5dd2f7
Date: Tue, 01 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788254433
