Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F345629B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744003194; cv=none; b=QWhU1FqxNEI7mKbLMyW6zDltdv/kmvOCZbihpTwHbCejjTlVDi6zvZft9nB+3cIW0E0fCSYDbSf+jMad0f4nwoFeZ0hLDfk/gmfROKCv5LEzy8lWLCKrG7iE1ZqcR4rYAkM8nA4r+wNFa9uU4XGuHihuEz5yZ4wwQSh19aXCUO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744003194; c=relaxed/simple;
	bh=clYYFylFrNuS7rRbZBwnRJqdj3m2Mbg34dL2LfOPKiw=;
	h=To:Subject:From:Message-Id:Date; b=fA3aNPh7yrebLWnra9vsCrmKbZp31rAR2xGIMUuDKHrWW7rIXr/F42BGMRjRVrrrD7kVpBCFAeWYRFT/S5YLE2Eb2Y+UUakEjy3eu+w75GIRwNl+quusJ9Hra9LrCsbplGIQIP2M7zWpjbAcdEXEU1AmjiRjltnkE5CUPkrP0Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJsZeqgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJsZeqgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D59C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744003193;
	bh=clYYFylFrNuS7rRbZBwnRJqdj3m2Mbg34dL2LfOPKiw=;
	h=To:Subject:From:Date:From;
	b=rJsZeqgu64CZiaIl0DMd+izGwQWGhv/G5KRAn6f5GJ90mU88/46x5ZVloaIzRrxvo
	 /01K/rnILS3ZWTdqGqUawK8YCdBfmYD4w1BkHH5CkugmuNVRybpmQedUz8GxFg3rPS
	 x+f6d8Nht7A9CC6wiACyWgLDm0g1Pz8YAd3AInadDtA434nEIuZZfzr5BPJ3q65Fpt
	 /2Ld+wNMUGA4A1v2gitze0mkYAjw40ydQPEJhvXD8MasBl1BrTENMZ1BEQuC/gxNll
	 HQdf4TpxIo2sN4SPhCrPovmCEy5+UaiclaC0aZgK4Gspfn+9gPtFGw7FmLOxNHzKEO
	 FmjUBtMShv3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D6FC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400319361.29687.12749578573914765566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899af168ca0ce9127d62c104a91db3b9eb6595487d1e9d3ddc50b0cb09c16d6d
Date: Mon, 07 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744003193
