Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E9518C0C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736259954; cv=none; b=CTe1XriVqRyzc4k6OZZnTz5FARR8J9fhp29Pn0knJJSqS+M/SzHjbrddekbZ7JK1Qh82MA3pT1r7W8v8GyU31Zd0P0MVfPaiwvkqRU8MAUGSXDo071NddOJa7x3pB741yTQOlzctJH1RwZ7wBlHBZMbSUHRF2Hu4cA0H0soZMIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736259954; c=relaxed/simple;
	bh=mGeNrGR2kmfpemGoE9RTRX6yE7BZ65NhagFA8/dYAQE=;
	h=To:Subject:From:Message-Id:Date; b=DpwAq1ZB/0VPzW4bjTk2LSIACesS18kDNaFgU0694OuPQdWOy44e1HRbvpM+X1Jn5WhwP/ekKr9Y283P92F1Ij9YtQMAEa67pw8OUCGuuTgYTDZdgD0DAlJ44mtDlOPmvmacw0eZ/QDIj0mmxHvzanpC2jQDcSQU9xzBMoLip9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNDyKYel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNDyKYel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736259953;
	bh=mGeNrGR2kmfpemGoE9RTRX6yE7BZ65NhagFA8/dYAQE=;
	h=To:Subject:From:Date:From;
	b=YNDyKYel3VkRkMsekDBQMg4+GDGeEpayKFdG06PFg5f8RcJ0y8zwQXPwd3K/Mb6Hu
	 KaL7DJBeJP0RVchJ6WsxcpfGfih6XSLKqbY1kd6oWAMfGzzTfnhgE2s82Dn2NdUkVb
	 SlGzd3FGuK2OPkgcGAGq2VGFgN7ikomnZSMVL8hLNFx/rBOmQzjlzagumCKsB5IE5m
	 FUVZQdn/RZAG52rhTK6gSu6sWfAS+Jkp9Nau/uZ8X77CN/ksvW7Nj16YxcTqncLIN0
	 F5riW3vNd9VgjQmbkd6ujpb2Q0G4LAv6fDwC7mfTo6H5rAq4hXqr9k6xu95Svb05rG
	 tns/p5MrHnAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AAEE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625995358.31330.15279288897615304568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f3fdfc0958bb54060c2efdf3086ec5edfda6f7d3b150371f3e7754f07cc2e3
Date: Tue, 07 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736259953
