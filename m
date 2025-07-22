Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258824C92
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753165794; cv=none; b=n+OHkFcIT2KHF5AkLZ/W54A8c8sa6Wkk/JyuI9FotL8y8Aagi3PYzbP37QjOk/jwtDzKzywuOyRHPClzNmTnRBhHopWodAPIYriHZL8bEq1WvpVTAQ9VFyiDwjvx7Akb6WIah1YUshIK612UUnN8NLN6AhnTrO90xLX6QrWK5U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753165794; c=relaxed/simple;
	bh=eTcVOdLYrcctrWSZv8wPsDjKyOmVm9lcUOJPeDoeuhU=;
	h=To:Subject:From:Message-Id:Date; b=EAtS0kJmymV8aovX3bO8xhAi7Elh8kdukzD52UitG8itLLdtFi4e90ze7peoyfGMkiGDe1xn9DcJEkC1WcZ1X/Odl4YIbv+C76vELbpWBinHpQWBbQlU74gqC2U7AfAdEPvEVC5/0w2sLbpj1pHlsudI0JzzJvOY+HcLwLpqkA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jybSrLX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jybSrLX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4B1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753165793;
	bh=eTcVOdLYrcctrWSZv8wPsDjKyOmVm9lcUOJPeDoeuhU=;
	h=To:Subject:From:Date:From;
	b=jybSrLX5aYILzXOhHFIkExe8qkuMTPBozko8ZxoU/KWXw0mJjzcTvp1UgtdEfA39E
	 Pa5ByHFZ6CiHYKAgxfzfT1X4Xwk5A7Ck+diuoqTJhNIfKsJktYz9ic9C9xU/T7KaQE
	 3UTg2EcLjS5mAXd8B0ORH3a9+e58WwPoftTWxjO9dnzWMeEhSKtC5Swkpu5digAf/p
	 KR58dDGiCEKytjcrr1tqegjzyHtEcvUhW9ef73ovme96S/flKNfRL9MmHUbBbaBjpm
	 5dJO6H+No6EPKioXVgO95yCqSLZ/Xp6oFaKJqAi8kZ87/WjL7oYnAqmD34GmyArJRp
	 bjBlErzJgPoiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3BC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316579358.18838.785063179950316730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6464ffe1def773ccbbaa830923e8519bfa962509d7d30f01772a1f092318c1c5
Date: Tue, 22 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753165793
