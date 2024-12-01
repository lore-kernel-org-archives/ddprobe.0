Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F67F8C1E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733031354; cv=none; b=X6nHjOWSA6BxHfIrSZZdYm4v0uMCvpJ//taEr45I7AkLzj0WjdjBqYBWvAwgJs/4Cgr2Yt0cm/KjRHMgi8OYPJ6Ywr6vrACqrIOe2nVwrDOeko7SQszqFMJ9rOnOX3+V4/6ldD/lXqUg8D4kV3XcypQ6bjpAm+kye9xstTfqyZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733031354; c=relaxed/simple;
	bh=rKHNXzXrIA1FE+fLEO8MVktgZwhGTwk38hrJyxkNtps=;
	h=To:Subject:From:Message-Id:Date; b=YwFX8UUsj1Gho15uxHB7/yM7u0sKmP+uuf5Mu0tXKMCGYL6TSxZ9EQRKLpz9Ja92jGBVBRiK/FNuZvPjaK3XPfjCE935INzozww7wwW51M/ig1e58lEZxSye0e5YHhjg38n/5EQq0FBTf7njVga5UEk/m38WDzzTx2XdYSv8TKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZPi9K4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZPi9K4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED4EC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733031353;
	bh=rKHNXzXrIA1FE+fLEO8MVktgZwhGTwk38hrJyxkNtps=;
	h=To:Subject:From:Date:From;
	b=SZPi9K4Z3P9yTU+t2/l61gANBklgyB+ICrOi5REmnT073O9vkmuhTVYzE6kfARvaQ
	 8h7mpGjr18F3KH+eyFFB/x9bSSDkjNcq4FNHUT4BzxXAb8dfaxG8Zj5QuLIT5JeymA
	 6N0EHTlhP+DwVP1YCQpuNYnXh4KGbkC+099KMpBlP1IZR0jzroHFdGriNrT9lQtwBN
	 KemoJVJJvcqQAZPChcFS75BnXrqIyFBiS0eWj0s7+ic9mpomUwa0Fas66eF5Y3E8Ux
	 e1mkGXXsf+7lZTklaawcxCLI/puVdmXxAUspojhmWwQSWx3zRi3CUFhcB3nsjVzPTL
	 ZbaXo1z8J2gzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C6D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303135364.24669.714773931431098533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e906de41274bf1860cadcaf8a06c9ace525d7666bc5c954ad78240841693cf6
Date: Sun, 01 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733031353
