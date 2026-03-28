Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCCD24B28
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774733094; cv=none; b=bj46kHjqA6AN/PyKGUFZdxQYOLkZ0cb3xFZUyksTZdjM06usGTJ5ruvj2Mvk5JZMQCfQVaX2UY1RAVKYQA09Bxh68O1GvUDCtNhDJOZh3DayAhLK2+qEQs+lyxm1ImYs1oon8/7H/DkSOoPBc97RNaU+ufCktCjL97DotPrhmbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774733094; c=relaxed/simple;
	bh=umyosQQjbmJMfDelljZEywZhAdg7bzi0P8gwKUJaXvk=;
	h=To:Subject:From:Message-Id:Date; b=Eq9PbDZcVQlFnAwuHTf6N1eL1NFRolxHFbUXZMEMVX3/9UkNwV0LWZ/MT06HXmchrTX7lkWJqILcaVCelJ2vaINx9Q/DuDX6dQ01ZQuNcwIvuHakaLUepxIVjQR0LlQfKo0/7Gb21/JP6xRqvjST6/YccKgPhV2m/3X751K+vjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvY1tu7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvY1tu7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A6EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774733093;
	bh=umyosQQjbmJMfDelljZEywZhAdg7bzi0P8gwKUJaXvk=;
	h=To:Subject:From:Date:From;
	b=fvY1tu7pUubZdgimtmIu7fIZiu1Yp92+XE2ov6R0tfNDyFa/CNVLc7czdamnI/IBJ
	 ooW0lLc6Kgm3+Gs9NSIiRRfBvNOQH7L977f6xPRV8zxIO4KcuKSGRn+/BOY8ZNfvcT
	 QnjRh6YryIB+Qz2VKNg3Hija2CLL5jqZxQmhhDZnQ+oe80kdBVav9s2R2bat8r7qSF
	 ESxiIKUfrt4pFk1nG9ppWWf+PRA+vGhAA35doW5YkaAArCru8IFHODUQnpr1IR5A8t
	 g6Xcs7mkwrVQU0/wPfWQbYUiJZdnboSCgSTsU3Jkiz6RCxnOR8Ljf4V4ntf6unZgf/
	 FMKObdFxIW7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C710D1486
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473309358.30922.7395137946404490182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba55d81f51358ebe64c4ddb578d3dabc6dd1366e32b288f7ff4e09acdcf00218
Date: Sat, 28 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774733093
