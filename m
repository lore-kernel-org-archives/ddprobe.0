Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B34131771E
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758578394; cv=none; b=XsvmQR/3ZLRZXpFd0DXl2JJUSowL8MgUNZsZXioGNYrXgKboXAyRVujnxzhDu66KIUSFhiSzC94LAQayU0xEE37snYLnneTlBbF4fdhn8gPJ3X39Xen0ZzTexoank02VXP1ZhEMS0XBZAovya24Hz/fWjovKho2dZ9HckRM0S0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758578394; c=relaxed/simple;
	bh=ZK9Hu5SgK2efIDzeVZVFJD9nIe0NpLLJqu1WnRTC2vY=;
	h=To:Subject:From:Message-Id:Date; b=OrmniWqG7B7M+cDgoPbKOJUIa6WdPYjrVu32p26POll76SzQEP39MajWCjGRwkxI5II7pY+ChDRYA8WwW0YHNuE8eG1kE7zPNkxixLWWX1AHz1yAZ4UBaphmfnEbE8I+rLJimqE4oVk54neVNjd2bhig3QWGYIb8DvlN7AkoxBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpSBYYAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpSBYYAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758578393;
	bh=ZK9Hu5SgK2efIDzeVZVFJD9nIe0NpLLJqu1WnRTC2vY=;
	h=To:Subject:From:Date:From;
	b=FpSBYYAq842tM6UddyKrPy8OSHNZtasRY4XcE64rX73QO9wBznrEP/7I8QZ8lt3Jd
	 6EkrKww4R/10SzOfQZyU8R1ykCM+GJa9wKI4NnmimL4LPCExfypRftvqn9D9uhBOab
	 txHymkRJWTpVSO9c3M8q4W83wsSExhBtu5nC5WB5z+h4/YmP8jJvyQ0KvVM5f217Sp
	 cSi0uifpcu4q12PW0WJJxXc8w5Q0HVAdsuiR/nbF0ZDcEv8zcK0dtUbYECbfyA2KNs
	 Oc6/sPpXSpQGU5ZKzGgHyMqURp19Fs6tVxpA8GJWBvojdNtJkZZ+TDeRj6JuyHkaJi
	 wyp/xXDnujKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAECA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857839358.16899.294799204457147588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b55dffcac156b4e671c5cf0256fe15a8010205082e3aea7143461f5ba56f46b
Date: Mon, 22 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758578393
