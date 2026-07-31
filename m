Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DAA14A60F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785474634; cv=none; b=PmfpLnjqs00+C65pGdZZEhADY8VuivqdJS/NNKTn27p527VAkjVyioBi+Xxv3FZlgurGMx+GUf1CTdFndaAYBXOr0pnOqJt9vNFpk93oCZAz4oZBf+W/gKGnrP62rHKxVxYnimKPDmXhnkBGcOl4V6tgaJ80ja66/TjMkW5g7aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785474634; c=relaxed/simple;
	bh=K1Db1iKFuoyzCfNjpVvk2GugTsyMEe371q1tSTHRLZs=;
	h=To:Subject:From:Message-Id:Date; b=J48GBHU4CDiisznY7Nazr17t/HTZGO/sOHQ+BmYCBFZ/Hu/6FNoa3fnq5kOfTaGyNNmLvZWRusHktZxiRcysA6RQ+GdxsgMqWooK6ik6PBmJBTk3WkkFOGm4h6LEp9VzMNZaO2vbzruBagFaMo0GCI4EsWygazrxhcqvhm0KqFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfQ47x1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfQ47x1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE220C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785474633;
	bh=K1Db1iKFuoyzCfNjpVvk2GugTsyMEe371q1tSTHRLZs=;
	h=To:Subject:From:Date:From;
	b=EfQ47x1V7/dXeuYyBiLMqvXGqLrI8RVp8MBnW+oGlEVGXxxCiOds3L97PfpSvJVkh
	 nusGBw/5dQcWIjMax2uWu7p14Ju1Et3S3mg+JymdERCDnalVG6uOrNs4zipK9Vstl5
	 36avLZ4gPQ3CqjQH3JsMw4sgxmd3bpp5kPmtCGdRv5yI1N61HhdNHu3bCeinyyNT/U
	 LEACR4O0cdl0FRBKF7rjaMBfluBJ9B/uRyRmGac1dM3IB8HOMW5+NBJOyf6ZvX0fpw
	 fS46TbB7+mqz+aBbu8+lYN+I1MKSrvXFX3C7YMj8nnp3D8W4hMz1ahUWgMycuyxrdj
	 9Yr/dpM/UUd6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA52DC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547463368.8300.1442581633402947328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5230d8c9cbed025bfee4f40f15fdecf65f171f113ba3251847766a07dc0ed006
Date: Fri, 31 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785474633
