Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4905014B965
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718318303; cv=none; b=HKqd5M8eVahQMxojFUi49HVX1zNSdslok9LgWNDviH2Jo5S7bgEmi7LgdS4JYrwSbGURWAPGy1TmQ0Jpr1hOiYqM/6qYoAoq5FdILISOIgIa4CxHNr86VIjvpVIhkIx0Kw9M/2+Nd2VndPA1PpVbQFYHF77Z6OZ4ipf3sniO6to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718318303; c=relaxed/simple;
	bh=7JBYsQeDMCPbSEKLLD9jGElM65j5XY0GBiy6OJ5frWo=;
	h=To:Subject:From:Message-Id:Date; b=T55AFQ0HPLRyCS9ew3WkLcCSkm42BY/Dix/u3Go2kwUwbvCOUHGinuB3KQpayebhY12RFrSiraKcpJrTkm25eBQ9MicDv6dXd44l33XtdN4skseTLSfXAcWED+4/qIXQ8pw/Ib6kb+oSuDnYhf2xCj1c5tu9ep6UntPqomnlqQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpARm66n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpARm66n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F52C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718318302;
	bh=7JBYsQeDMCPbSEKLLD9jGElM65j5XY0GBiy6OJ5frWo=;
	h=To:Subject:From:Date:From;
	b=kpARm66nFdcgUYmjfNKhQbIEzb7LB8NdvsmPhqNXlwMn2eyf/Bafwr4MAo5bAtPoN
	 RTZeMG2W+P3oF851W1N9l5F7bkTZx4esXYVB0p/A5YQuV1YJO+bEaWvEfOKW5qu4pX
	 ixPsvZj/Rr8QqmUB8sK8EZo4qD51GpKNhPJyt4Ddh50VhbE7RejdRhlJXpRh9fsdzK
	 05i5qXF6HOaTU98+sL6oRnp/MvWcUcvUqlavCl8jqH8p62FxUyGYlJ1UFCtXuSnPmo
	 LY5K802iqqtNCJUDebd/qlwavdeSVbFOk6wd4kue1Qj96gP29FcXfYZAnR16X+poje
	 hXH9i3NW65qJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29C8C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831830284.16403.5733642261909653658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19d27fd6c88fe0398136e506da01ad382580bc2090dfa9b9c8631a72dd960bc
Date: Thu, 13 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718318302
