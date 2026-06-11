Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A4336DA08
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781163994; cv=none; b=puf6VHedDWTerSdLEjTFtAwLkKMwnjg34TIbtdT89MdZHRjWdcq3t/kwnZl9rHAW9yXRqLBK3RgkNgGPikYQy+cZOAGGRz1h1Ek7IhmvsAs016DXsJxykdSC2L99z0nVp8x75F714EpMnRHBhcTJYjIOEVijtMc4Gzw0E5WmVmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781163994; c=relaxed/simple;
	bh=Z5fFswD/mxbR2bmvcHcNEl1lVo4k4/7E5ajmUCBeb6E=;
	h=To:Subject:From:Message-Id:Date; b=GVia7CUVw/cbxOwIM8yOhD3FceQ0OVULLWuPNPEFeHdeNwqI9mKJsAr/eWhUr0UimSBQIVNFfqpHx+5SCKn9N6jIzayRyh0cWBssA7BGhFKQnUnvS5X6ZCpyxFbVDNyUBe4RDkhu/iuGsGIifBKbecfsI24a6SmSIj4DFeHWasU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQDoHHqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQDoHHqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7067C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781163993;
	bh=Z5fFswD/mxbR2bmvcHcNEl1lVo4k4/7E5ajmUCBeb6E=;
	h=To:Subject:From:Date:From;
	b=bQDoHHqBCU9oz7gAbm6QnZrWiTzxH/BPUUo05+KzaHyANLjmye+rEl4qYMWiH+uIp
	 ITgg3vJxAjiMcfSwnkVUnjZ1VvSeFbxHY5R4QzoWJ2cH+kdLob+56eRt2Zbw+LFZOB
	 BE+Aye7iRnvV1gd3iZiv2OkmRfcpYDn/6vFljAxTq6WVJh9j1NyRhVhR7FUZXo7QjS
	 //Qrj9/O4UX36jkRUy2m6WkykS5/JyPyeyM1G8LO7anXURPuPvFHK50LJEUv2agSXs
	 3zF9djstHEqehiftNE4V4NQxcosjTOg8TI1VL44IB13025KttdG3jtbsRcMEOMAEFB
	 o1OY5g9713EgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24BDCD8CB9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116399372.16570.10450658228880322065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274463c2b6e7d35224fbeecf3444d1605c8148aea60c5c527bf95f846f1ef9a7
Date: Thu, 11 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781163993
