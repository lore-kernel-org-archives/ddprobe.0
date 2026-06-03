Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251FE3D9DA3
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500274; cv=none; b=gKQ9YezCyWYE4nrOVMZxDeSfDl5kt5DApzAgEZi1nxl20mUV2JXs0rIv7xp51KeyP+oqn0RGxOk9ZkaSB24FuGXdOq8Y8PvuBS3c/CYPJhOZq8zyJClVaXvWyvv6V79KR+Dl0WsmT0QHmwWiFJETdsRk2uU6zJDZnewrSSSs5iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500274; c=relaxed/simple;
	bh=zSG9mGWf75+SsyBhrqB4Gci3pA3J62K03Ubjw5pVa5s=;
	h=To:Subject:From:Message-Id:Date; b=Dha7h50/b3htA+U0E5wGhBUPIL+y5F0PwgLwS608kf2n9UWylJuO2REaL5GT5NnCxEey6y6wLZY3oPh45UAHTUgyLSELkOZjCpjFEbH3PczQjqPZiFo5bEhkfrNKo5DqvQWBEAzOOlvIH99lAomeDzZCJ7USZvx9hXrtSqi4ukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDKcJ9hI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDKcJ9hI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7565C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780500273;
	bh=zSG9mGWf75+SsyBhrqB4Gci3pA3J62K03Ubjw5pVa5s=;
	h=To:Subject:From:Date:From;
	b=PDKcJ9hIm0T+0GtoUJhdSlM8r/uUYYULsZnE8vvx5U7wYIutmOIUhOwp0eGAAMBoC
	 T8lMgv9IRhXSdF3jMjJuctWMMzCPEE1P9w+8H/uY618QTD5eZssNoQOJMTEUQBXWIw
	 xg1tT0rFAiU4ncHAxBaW/LGAixCI0Szk4KK7VhJ413bwqY8fCLDdeKXkMgrc3mgZ3a
	 w/LldeOTqIMwl1SpcoLTA5bcft13mvCP73hgx5QSpNCF0dRb4I1ORB/36HYQ9Sjy0i
	 YW0V8nW8zwQkoM1jek1V/Epf7H4e4vEyo89NSB7N/c2G5tvTuOVmx/BcqluV42go9J
	 zxoxwX8SvGyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7002CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050027373.14869.11228825285667769330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7898454de41f1116d734eeb09b46ab2799f7429de3b958bdee83ed622c4b7ade
Date: Wed, 03 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780500273
