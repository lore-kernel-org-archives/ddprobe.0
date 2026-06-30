Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D324209F43
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782833314; cv=none; b=JAKP3oEzJA2S8xRJ6Uh08Yngez2iANFJ/rOMUYkOiXEfKhuu0CeFrroeBozF3XaKrE9rkbbYmRXQr25pFaTPy6Z1QKwkae6VwDGbrnEso91f2QQvlJMOKSlH7LVSUSylkbfOMHU+dzVgCnMHXQAJVi7TIWqaCxdqRNuh4k5aEPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782833314; c=relaxed/simple;
	bh=Rb08FxHdkQfkPiXMpeaz0I3ZgpRG6TdJ58aImIsB2lI=;
	h=To:Subject:From:Message-Id:Date; b=Fq+m2v+bFMGyg7W4F1jgtmGNRe0Cc1g9xQf7mNAAHPQjgN91ONbO/kea1HpWCoCOMAx0IfdrlwujW6v54Ajiw9vPSElGlQL0mu1VlANJ29qx63mExRrNvrK43nhDPtsOd9A4jfBDVjE/dP4azf7tIogscukb2DFub25St/ElcSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZWXHngx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZWXHngx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A79C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782833313;
	bh=Rb08FxHdkQfkPiXMpeaz0I3ZgpRG6TdJ58aImIsB2lI=;
	h=To:Subject:From:Date:From;
	b=TZWXHngxCb3qQvFliNj28aL8e74nTBy7iIgAK9rncP/Iprq+J2zcv3GbKVJDNc/qp
	 Fr+wot565t7d8kjdp5jT7T+C4E/LgxQjHhB7/nk35S/gSELKxVEKUCsvjqxiHjVl6I
	 YP3KEGlVuNehE7dLzRda3lEy3qmZoCIvOP113Bu8OIoZLjNxEUiaC+0gb5EPN7aciM
	 cAp3kQ6FBK5k/tyYQ0kvoBGj2157YB+PXZWiGyyZZ9VnAEb5AzQxNtKOk0kWqlFupI
	 C129Lmhz+RqYYWRxFOzOuJHeqCphwIEocdnEA1xx5jFg7woWjC7rIfC7kc+h/YB4aB
	 CE8eeBcGLaQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A989FC43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283331368.12683.3644973468714203332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9860cd16d9e5d424371cdc446ff76737263e64ccf81c79b4a00d9e29712d69a
Date: Tue, 30 Jun 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782833313
