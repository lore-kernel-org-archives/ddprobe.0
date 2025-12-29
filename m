Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A67A1ACEDF
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766976234; cv=none; b=sFREPqDQccOtnob4QI+yUI8fcSpAoeL8EIJuNKKLeuWF/UpJLGQoNaANz2zAwyLbycFj4/i/Tj8fInNBpQ5K9ofslDwgj6QbXu44zaaZ5+zvPYZ65CHcO95Xchg1VAFXc6GZ9Gfr8EIAf/Yf2A4VLU6etGPP3toGhip78x79rs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766976234; c=relaxed/simple;
	bh=H3+6ANgGnsZJtpp1MFsc8aUOZ2MXEh7i/sPt1EEuPf8=;
	h=To:Subject:From:Message-Id:Date; b=GDvJYfqhxy6zKLhcJNdYA8qHyAfsyb1a0FnBZqZTW7qfoOb92DT8G/nk6QdyKV1V33hGDcdpq9vOo0D5d37U0vfS6LJw4Kzt57iNnid5EhqLIIDWJzoE+mACYGyvlpXx78qOHYccPxIaLkdt0twEAHbsd+HSIsVZch5nizPgdy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfVRPxZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfVRPxZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B58C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766976233;
	bh=H3+6ANgGnsZJtpp1MFsc8aUOZ2MXEh7i/sPt1EEuPf8=;
	h=To:Subject:From:Date:From;
	b=UfVRPxZGD6Wov5vniazqYS3T3Sbg2Y90YhLgz7hGiRe9n0Bo1lgxbni11yAEeA812
	 1qvLrNJdZdeZRf8ptqZkvejxxMQmodITZuL1k2nblKAdkAduhGwnKilkVMyMQzz5/f
	 WQOa7MQkqH2HtX3IC1zLFkbGl6dFYCeeWQrcDs1AxC9pEFfO14asM9E8SOevoluJom
	 nywcqJiQqbHyar1v1c2V1oLFEkc4CQXW6zQB5ARw53TGpbWDx7ka6IerpTG5Aw2rR4
	 iEguY62zHKki6dFJVVEPeAiapPcBXrvpUMX5lo56rdf/hZ0I/qDnQJttptdA1f3MHD
	 UO0v9XM7Gf2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95194D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697623359.20252.10489755059763254094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a7ad41a298462b809e17fb61cf548446d489e5c0f4b975f9925898d52f544b
Date: Mon, 29 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766976233
