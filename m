Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D5C10E3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766709234; cv=none; b=NEZQVar2kJ7pSjo7xCfxOVsqjTShFGMvXAkK2anBzWystH4tT3kxugDiMLVTc8UJOa+NEYb+SOvDqsAMtO4r2qbsRfVTXOaSW1PefM67nufadH4ENH990HDLohkVqR9ZahG6gidadKoozX1asr9Vp6zJK9u/CEqxVpcEi7vp65M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766709234; c=relaxed/simple;
	bh=LubVBo0j/2BM+IdUhJVIBHnFOYRd7dukJIyi1VqxyRA=;
	h=To:Subject:From:Message-Id:Date; b=JAprLW6hxLsInybXacqIMPrPASRmdFckNoodZPvrhLn0GJtD8pEsu3cP3FL6W22d9xtI708tlDGpXnblbtb8kAVdtI1sjWhd1jivHBCHSnFXbpTuKf64oNH42PRujHbg92+rwkmSQx80AKV4+94YUR0UyuhhJpfUags3r5+ORHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyEcB20q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyEcB20q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE54C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766709233;
	bh=LubVBo0j/2BM+IdUhJVIBHnFOYRd7dukJIyi1VqxyRA=;
	h=To:Subject:From:Date:From;
	b=YyEcB20q2V2xLyGcCxXvf5pfKFHfG15vxHkuc/226FxnoEPIIVBfOKeokYv9YO5Dn
	 DXx+SyOzt8HeauwsG5DlxhF2yEW1d/hWIXBpUuAvnw6btUcWlPjcGwBcPjhu36PyQ/
	 sSG29pMuQmc+LSs+hVJHl9X7dTRrWII+kqxZeIKC0qv7OYvQxBhxSlOlVfjuId7VRq
	 MOvEYAnJUhX2lpiBwhXTTP/cq6KipNXaBIMEdmhlI0yn+YV0e/WuDJIWTMCoCINjdV
	 Fj3ZNe4V9ARXZPWQGOQ9UGe4+P8p+vD/szbCbf4YAmoPIBb2IPk19GARWmw0EEIDz9
	 QnmAHTQqviuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96356E7AD69
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670923358.26964.431487146398435069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc3631c2079c6044a4ccc87290fdea0c3b91125a0318937fbac2712af6b6e66
Date: Fri, 26 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766709233
