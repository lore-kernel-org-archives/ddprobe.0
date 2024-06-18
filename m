Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53888179BD
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718685563; cv=none; b=ZKuEyvCe1B1e6TScle19hxN1JbG8jTVPd0TM0613doBwWWxNRU8nzfiZIOe94e1wMNJksaZn+1XPn7wnUCBRoCtipX0zYOU63Se+1XjTw3DxHInWnQ6giV3RjNGMQkY5tXB6xXgiKdhjvtKkLM2H7QY6JKe4IPnHXMubAsd0eno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718685563; c=relaxed/simple;
	bh=7XCucOmiJG+KpAcQUHJMqe9RgRyNFhWyfXi3VjydqWk=;
	h=To:Subject:From:Message-Id:Date; b=n8h4zTH0HSOC9B+xCiYRhGCnkYK6OLTA+oV9kk/15O6mVjRdpA36PXkxwocdoHqKE7ERycwHSlZGB06F2K0AfhBLcEPDOMiSJC8BaoldBtces8ahgabzLkZ8p08t4kIvFFtD87meuqpaQlOJ4WOWaPBBy3lkFl/5NEBfI/YPrpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTRMGvG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTRMGvG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E2FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718685562;
	bh=7XCucOmiJG+KpAcQUHJMqe9RgRyNFhWyfXi3VjydqWk=;
	h=To:Subject:From:Date:From;
	b=KTRMGvG5CSmmOmRtyhZek0Kpug+20XkxDprE0/u7kdycLyGZqBmtJR+9VKeWQxt2O
	 PMKyR0tzKRpsCVrfx3OyWKWj82+s7chZCGb1N3+3oInvbM402ckxjesYuEzDJ3TeWG
	 Jpl1sUl3tQt1JnLf1xxh6qg3+w1slEKSPEDxBeYylqVw/JYra7vDv/sS92ZIo3Mu9s
	 wmdu1WiGVzi48nWUuXQPb8zj9QYGPqsbJcSBtqWskrVPPzEYzqotbyBLfyWlIRpXvr
	 pcLr9kLae2aqFcmruQeTGoPDYEus6qgiv4m2G9Gnx2+x5KiVrItlkKsC9tS02eKlEb
	 O2uHfJMk+siBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2C3C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868556276.4127.8683855544834671764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bbdf904e02e491c4947c3bb831670f9c3f39fd0efc7d4b2f296085ae35e40c
Date: Tue, 18 Jun 2024 04:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718685562
