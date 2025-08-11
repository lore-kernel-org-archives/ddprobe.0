Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE6F2C21FC
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754936994; cv=none; b=XPFzzUBTZYOOb0pdabICFiooXR+nsVqSk/31pqIbfUH/8vFCXSrZyYyb3hcu9N3t7DcDie2z38OVgbDQeCRjxq9UUKmHKzVIIBaCWfaHdRbymx+DcaF1sVDpJv/664rk6GwXVxJz4zTMIlAdo0eLKO9J7+28fXJCxzDYFNBFYhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754936994; c=relaxed/simple;
	bh=Jdr4cTTO1ymxyGWuQwqNGclNCpOQTlgFwaXWQ8Bc9mk=;
	h=To:Subject:From:Message-Id:Date; b=iETJDKZaliAsrl/objKMIwo7/f9I6oALVa8aEXJ11ANZ4OnKkxkG0Qbc/o7dKvG5s8c2VayJYU7udEABm8+bXNF0MMMUJ1uOJ2dFV+Naw1Ty9p95me7YPlsBHI/TZdle8stmC1mSQ1Qrs+G6+/Q4GiCC3l//Y2SJ2UGM8/nm4jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7xFnIuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7xFnIuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754936993;
	bh=Jdr4cTTO1ymxyGWuQwqNGclNCpOQTlgFwaXWQ8Bc9mk=;
	h=To:Subject:From:Date:From;
	b=O7xFnIukvp97SCpM7/Jfphtdv8tuMR6A30cLK37cI/8dn/Q8+1O8zG9BO9ADMOISS
	 AItl+A5SUI2Wa3rtGY4IOtE7OMedCXJrxaXHiZXvT6lgtNhl1CZXE7nxVM8WNEISs1
	 uC5vdzCg8D7mTwCb1nVdo76dVXZDr6lSPlqHURIUYAMlAFmZNLC7Gb7QoianbAuuKc
	 bNyCBArtNvsOhDo6G0F/LWrIu9BbgLyhc04zGJmz0bXwHZwnCLdxYx21McNsCoes4T
	 IguyoIfrOFC6siqu/9+rRp1NxI4Z+y+0JUiLkN1XoLMHKqG6AdU6hPufc/h8XVVXyl
	 wpw4kmX9QlBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8FCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493699358.1321.16950615488140886611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e04b311ae3c692fcc2bcf46cd2928307f259997349d90df53f8039707f4276
Date: Mon, 11 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754936993
