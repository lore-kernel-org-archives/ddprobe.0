Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B9D1373
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769220834; cv=none; b=uofCx6cK9tWjucinULEN9AihfdnNL+m/3C5Xa7UMhT7dFVQ4vUa1jXXzxpON42i6AbH5V0IL85IPiHe3teGlO/xBMEfgxm7eq13MoCvMcp4N99TliTSPgyrWQYEFflDzTFhLXO9+qn0duUxzD3515e8C1zIE2JaBLPTkdSjna5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769220834; c=relaxed/simple;
	bh=RXqwIgS64ZcICceVeALU9/If5zgHSEsss9SMFGXb1Sw=;
	h=To:Subject:From:Message-Id:Date; b=nXoZd8q9IXH5UQyNTgRzvYxdO5E3ML1JvTWrP7V1i6A17eEytNLejnd98voAeR5uoUMYRlfF7HHntbL/Um7QNoVi5S+XJl2Mpo6xU4CY5LwvjAnnsgr6XZf8dhgElFy9/1xSY/RMHhi654IhxQxWIO3yD3Lgum6SChTDYoFCir4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHzS9AzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHzS9AzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A780AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769220833;
	bh=RXqwIgS64ZcICceVeALU9/If5zgHSEsss9SMFGXb1Sw=;
	h=To:Subject:From:Date:From;
	b=OHzS9AzCfkaJN3OGRDNtWuQoUswVlb4H2K4savQgpkTdrdHNcka/YHu8F9/mmQ3dX
	 3w0iv8WXi3XuLyO1gRPSxI0X68JaJ45i3qA7Owr2KCIDkUXuyxCuSHgtgeCnb1dR6x
	 BFBf7hjJjIBxA9lOHH9CxNWuAvzufpWlMhVikqw5sCJ0vhxtqf8U8jWUJEDQ+dJpBV
	 +Xy1Edu52RWWgFDdlCfdnVIoK/HVgT4ibeJ809PflFmDKoczhxSQb6rZWjksrWWq/C
	 XxJm/XzHGJPYLmJ3pG1rrbWnP7Q26bydXyxJpb0MClfnug3YO3orDCW3REAgSlzDFf
	 a4CmRGUJMRHUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B84D778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922083359.9911.4239548161344621404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16eb28e5256eaf7a2f077cc4bd64363aa0419c33a2fe389926758f92909f1cb
Date: Sat, 24 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769220833
