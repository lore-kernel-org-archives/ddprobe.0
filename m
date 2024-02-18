Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEBF20B3E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708251497; cv=none; b=LFR28Wba1XVGnMNML70T7UflmcdVA8tONAvClMdnUmMUqiE/9g2pWLui4UGOIDeY/vRNfhH4HYEhBf86ay0YiJqhofzcOGz9pMJH6WU2bjzvh9dyGlmZzKJXozopEzCtgI2Q224po0YfNRfaXKH8NY/UlCVYP6ccux9AIXIg5xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708251497; c=relaxed/simple;
	bh=v0oNxsM3SdL/MGNAMBirI3sYIoyqX30GBm9yHeVikkI=;
	h=To:Subject:From:Message-Id:Date; b=JdOXyI1keJ/DNVDILIzpum0epJQrLfGaKeLSYrTe+nOzo4xPbFqUg97O1zl0eEqTelu5AJzB3aV/XsD+adEht4GT88rkNjUQjUzgZozSPM1LWLnamn9nz4MCvd3Wzl0usJEgppw4/GRpy1TmQpKJ70ZoezUdxZbYqBAarHOekQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFCQCoyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFCQCoyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74ACDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708251496;
	bh=v0oNxsM3SdL/MGNAMBirI3sYIoyqX30GBm9yHeVikkI=;
	h=To:Subject:From:Date:From;
	b=OFCQCoyrGbkGVk4wy1qL98o4Dn9xciiKlkU1335JTbOtJTCULDNBK45hRypn1SsGF
	 NeQE6lzU1FVKuzX+uQXJZVXpircf3Tzo4wNeJkhQV3zbbgCNYr9wtLMePmKY4Refjx
	 cYGCa0o3dhybq6uxUGVCHIWbk6mmc7Js+eSUPKeeKvZX4gOJlltiJPTMsWRrBpkuup
	 tvDTFNFixlI0UxT6MEa//Js3JBoJbqBrPmcBS6o/aGOpxbuSvzaSOAGQu3wiaUpy7x
	 a+zJE6gbwyDyEKNzKo9YVjby0c2+DK7lJJN5K3WUju0r4A3fokWpTPqhnP8zbCNrbF
	 yjrHqApTlG3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEF2C5475B
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170825149636.9426.12895488769907270083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f6922e11f1b5fa3c5eb7ce6f4905826e5757d62a0c7f5b49ca44e614cf7b01
Date: Sun, 18 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708251496
