Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155901A23A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770339234; cv=none; b=MU/VaEgKxcrzT3MlbY9ooBF3uZK3U0wbxyEtGbJOrsOe/MNCMvJtPhCiS5zVspUOkjacW0e+Hk29NMHd9/ervzigbFe+d3En+0mRX3JjURXXJ5EiswFp9N82MRzUyRHDr8AOOm0mISZfILqkA6kMXESRuyGjmAvqQDvY1oAzP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770339234; c=relaxed/simple;
	bh=MnSZMELmByxQy6mE029RGpAfFrabzPjnkdOt/saWN/k=;
	h=To:Subject:From:Message-Id:Date; b=DHtGPAO68EdYD6Uu+j3b1JO6uk7PDPWp590IWdCmvtlLCZNf+zZ3lmoUhAqU/XWPxnSfkxLX5Ph2XMst1m7NwSDf6a6MrCalU3FaenzazcAvY598Wnx6KESw0aEGyaJWx+D6QusIasHW3J92o8umWD+S+/A1Ns6NImWvjZ95x28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXTV6bVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXTV6bVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770339233;
	bh=MnSZMELmByxQy6mE029RGpAfFrabzPjnkdOt/saWN/k=;
	h=To:Subject:From:Date:From;
	b=lXTV6bViWTw6jjeZsuJRbm1mr2pKM3qM2ObXzi/PZ0GiCO7k779lISzz2YauL10gH
	 d8pmoycB3Y7zN2zWanJ5717gZaXc6mBsPuy/eQEVfsLz3qscIZ9VOZxWjsRf1e1NdA
	 ggRelxeh5SEQHhl2ApFkVmUm0/mFXUS8bRF0QbWTqUeTRgXhd6Nfo2cXtkxCWujW82
	 LCGD8CtjXqDHIF/tFoOin7ehDdtEJMQwyRU7fEkP3CTpgjFy/LJNfgPCPslKcI2c8U
	 sCHGz37iyhmmFcGQ7094ovCtfMMad89hr/d61letI5Gs4UBRQJqR/oHl4XPlgk/tF9
	 BF8RKPX9a1OYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64ECD9B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033923359.16709.1983234066760491300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60ed7f5f474ded6fadbbbc33159515615ab6f206438031b89401c2e75932c0d
Date: Fri, 06 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770339233
