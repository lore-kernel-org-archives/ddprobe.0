Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AEE200A0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733563554; cv=none; b=lx3UJ5lONHgurtfje76qlMWT2/iwvoqH/J8166WSXD9dskPh3/iYsDNENGxaK0JnVeWuZF3M97uPDVdRIMDCeUTmZ245Fipx7oxk4XBMGst3KRz88A/DFgiEr/mO3BLM1Tutf0cU+yCDdGrkcuOhGypb83VfrpIEmhY4UppYaAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733563554; c=relaxed/simple;
	bh=9+lppjwr7pURwQgzcjhhE7+Kb3uKBeJ2mLNe/G1Ece0=;
	h=To:Subject:From:Message-Id:Date; b=EhVNUV/90t3uB+5w2Vu2eyU7NY943hlzy6HsSQlJuXrBUdwm7VJM0yZRe7m1tRlRn5G8rutgO9yrDslI49lzMcXOOQTBoO49py5XrtpNgyWDxuYupAKyuZOO2HrFi/cF+ToyOHN1rHzs5J3faUFi6uLv1R1fa6t1nsDbq/rLvDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhUyiJtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhUyiJtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF177C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733563553;
	bh=9+lppjwr7pURwQgzcjhhE7+Kb3uKBeJ2mLNe/G1Ece0=;
	h=To:Subject:From:Date:From;
	b=lhUyiJtRRREKveXwg4B48yysDwwhdkd3xLLM6aibOlNKCYC+KUFjWOzl4wJIFuQs4
	 Hvc99qcPT9AlPljhdIwwktoklxsia++F7jnt1+2a1t2v6Pq3Dc9xGMg5MRc3a1msdm
	 SYF0ZORO724owHC9I+et5q7BPdnsKb1CTCaY0pmAaP2aPary5G0rhvx16iPfRr2o0E
	 9B9tUipZp38XGgTeYrYDHFHqDOA4J6x/kacvJIe6BPOkLic5AOywO3CMKTu3NHq4Cn
	 frB7BAhsi/cviJi3SvXLRUyaqulAWY8URIFYOxAriNS3PQrNA1mv+J1SC7GFdrPBYJ
	 k/XaRfxTso26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F83E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356355358.13829.6514675363466143243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7696bca4b833875d373b82d04ff6ae91c2b26fbbd5786c27ae41e0095d609d44
Date: Sat, 07 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733563553
