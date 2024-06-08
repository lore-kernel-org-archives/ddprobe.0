Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C974D520
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717886843; cv=none; b=BICF5FsxMeVeN33CcRqU0kO/7x9KZndvV9OFl4a/2O8NA+juKOLxhgkuXi3BomOGFnsRqiqlvqa77vPhR4069VOF40DoahfNTjxYAEEj1ANQZPWx7Xfl/hRKCj0jvU7K0YZlGVCyBQZR6r6HiKggCpDE7SwHbwDJI9PHMr1Y58c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717886843; c=relaxed/simple;
	bh=jweX/Li5uXWsUiyaVGXiXKw6ECs/bsSQlIn7IMNYlIc=;
	h=To:Subject:From:Message-Id:Date; b=JWD2NCQEk5Eur22TRBI4KBFT92uLv6Bz8vTKA9+56p8i8mzCV46fWw9q54GnMTLGj0V5YT2qE6oazKqyuYVOPCc/wzwl9DpsaM7EJds/y6D8TguXAcOSggJEe/wcVEUnx6gaCt4jF9vceGCyJ1xa10pqBwYrEKG5/k2WDCKTpqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrpjZVEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrpjZVEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A46C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717886842;
	bh=jweX/Li5uXWsUiyaVGXiXKw6ECs/bsSQlIn7IMNYlIc=;
	h=To:Subject:From:Date:From;
	b=HrpjZVEkMi7KCnoCe30CGmkc1MyXyZRpSkgqi3OHnyI3Xb3cN0LREZt73SeXyi9ir
	 YssqRLLjghdKCFy9mHu1AYOlLbIA6TZCJFdF1/+bfCmGhv05RxeLn3pyVAH1ggTdkr
	 5+57a6r025aGrgco9hGEE1yrUS1BWWmPmwJDhqGgFPphDbmjy6HETngb4iPDJwHDrt
	 mkMEgMtXDe2Uz+AtFrdGME1pPwFu/p6114DRBotdzaS8Z78UlpOUR0aRXtk2wQRUVL
	 MffvOfvRHaHuVgTDgeKZ/auTirkFWfYXPuJ8iXVFJfu+xXYy2UrWvVxlvEOGGRg5Rl
	 0dhG4epX9TVmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D1FC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788684277.8483.5548215730731507599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c374e65be55eb849c9a5432c8439b3d971d713efd07bbac1bdb8755e666d34e2
Date: Sat, 08 Jun 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717886842
