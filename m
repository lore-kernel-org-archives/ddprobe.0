Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5328F48
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755442195; cv=none; b=r5y2xhzzyHIe9Ky0/HEdww8ln99HaaqAFZSgkQGkF4yXmxfJhxX/06paYoVr5jjOJ/EOt4NxQJ1SIxNCjgbaen63ApLNTWdU3bvVP58HG2gtdcxvQOk7KefD3oD1M+l3ObMLVzA7F3EtIlDDn+Z6eoGh9HfMfr5AAQMrAJPxYsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755442195; c=relaxed/simple;
	bh=pQZkXfVWYGi+mwHJ18vHtx0ly8tUN0YD0KspaVAh8+0=;
	h=To:Subject:From:Message-Id:Date; b=NosPJDbfm6MpV4AzE2b1CrowkwSpuLWH/XaSkMSTw8E8aZSl8rUtHvHG148yFuo9uUV7/xaLkDhkaJ5XFvAxUDM4ncDqR42+CytIpfp9nDMesXf74j5JND60suI3mtZu8aHTZ5Yf3QyrwPdWpJlf0Ylzqc9xt3Jezax/HKLp3rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugvFsIBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugvFsIBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755442193;
	bh=pQZkXfVWYGi+mwHJ18vHtx0ly8tUN0YD0KspaVAh8+0=;
	h=To:Subject:From:Date:From;
	b=ugvFsIBf5YQ+qhuHZo8b8TRuTxWdVmZmonV1wpjGnENSsb4f814XdISxJo2Hg5I0J
	 y343D54jEdllgk7DXnChx8h6MqdKpDl2k95easlXgHjr/D113D/ay+HL1YrJVByZKF
	 l8AueueLR0NRGsylsY8v0d3xMl+klqJ9eXKOVTl6yW0P2LGjKjb/xdUU6/NnpYZNgR
	 9HWlsxfW2bolyi2tkV+iwLZXLaCTLtBUjay4XNNqhbUQxfq3O7CjGJ/l0WH0DlKeiB
	 o0Q8pZO1p/GtZrLO+4GFnk0YBbeBbE0WLwzGeZrMOFEEmgeDMyWg6r8triGZlsL4C3
	 GHXw8f8/m19Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDCCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544219357.8286.4448855936990091986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f548e24261c3bb1065f204c7da7bd2e604ee4232fed908529b0c61e4c0fe560
Date: Sun, 17 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755442193
