Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CBC32B111
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786744234; cv=none; b=lDWm2MNYwIUhj4XVFigYCHeOQiDCNNNyXI6zPw8eRMRiKxVqeLWEmxnWpPbgCj6aewwRcEquQbiarfz6n5VxVHESWCWrfbZ2MDFCajl3GZstOTdHjd/M6XaxK7h0ksJNXb20KzV8cpy1O6N4C1xM8n/lfWeGOcgRxF4wVizihH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786744234; c=relaxed/simple;
	bh=iLwVEAamzPGP4yUMfnizoz8NHh+lWTsonBazHEmVhPo=;
	h=To:Subject:From:Message-Id:Date; b=eNMs4Hwn8CEP0pX+v0zPcW9avCzf/9lYXk+D69y544SzFq3k8EJzY66j5iE9CS2HjKAu1dSwCCnBlPCtBZfsI3W2vyjCy8894IY6Oslkxatv751heA7oE1r9xB6+Exw2BdDP8D7cMuxcv7iSWQnPreB3q5sC+jnPKVuDDn91Ybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqkajDkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqkajDkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786744233;
	bh=iLwVEAamzPGP4yUMfnizoz8NHh+lWTsonBazHEmVhPo=;
	h=To:Subject:From:Date:From;
	b=XqkajDkhnotngNgehHYGmf56QBaGUuAwzJ3UGESlOcPejWpGwNd2BugpbwsBqdk8s
	 z5Fp8YkrDJYHj6dxTILisKyVVytkD+7RaOHJfQTtUUC4Bx7Y6HdiKVLBJoid6Ye+GZ
	 w5DZIt11HUYZhD3ArFFykrtuThallKZAOaCRcfUGsXwHz6VQyeD4z/G7/dKwp9X5td
	 MlNIF1DtzJyHQlY9pR0tW4DVYNzrjFcrivPXuuHwg2yLAxLsRUDHaEnqu1TXxIG201
	 PzPRsMe5dqvc2KwBhIfVXKsVeYY+A1dN6T6JrgAcW8lMJ12IuSjaISkYtvzR0Eu+oD
	 EU0I9TY8faoLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0028C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674423368.11884.4025036788980465572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19762ff2c69d8ee70a77e7ff6014623b847956f206d8ca8a21b11d9a27398cb4
Date: Fri, 14 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786744233
