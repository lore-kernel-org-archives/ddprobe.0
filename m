Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53A21804E
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711413497; cv=none; b=GKsazPJ9O6mY1t9Lc3MIXA302UkQjEguT4PEVWXCx6GPOSFm5grijB+deeIJQRBZKWTY9z9uDwjWqip6/TPM+ufmc86AMjR85ClMeRVkDRKizdhf4QqvmiiVS5p6dLswhGNT/6Cmr5r0wR/s9/2X4r/xQH2cV58X+eWvY+1xNKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711413497; c=relaxed/simple;
	bh=XxDAghkRelTjazq12VK0zYhnAs90qxNlOQwQWFlubNM=;
	h=To:Subject:From:Message-Id:Date; b=TDAY4P+votOZRsJMM38jHgtTz4+UhfydvzdoHMhygx1SakDTVwQ6lqpjL8W/fGs8tMoX/l+/WoWjmwKN8ZdaGHJ06hdNQLN7VVD7CAUPc5D6dS38ifmygUHiM1mNK9RIQEJk1u6NenjRyaTlO8sDQHUnmx5JCQtZE9l4b0yYP88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX6tew4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX6tew4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71986C43390
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711413496;
	bh=XxDAghkRelTjazq12VK0zYhnAs90qxNlOQwQWFlubNM=;
	h=To:Subject:From:Date:From;
	b=XX6tew4vkbGEHEPyGbYZxdzgD5KO9CodBwg1TCHU3Lrm9DkAhRxaCY7uuXKONi5Fa
	 O6jLJpZnnBxJmBI+icNzz7zHBkKx9DshI/7fbcv8GLjYcmkGTD3U0FPEH4vb/KvXgV
	 FCo0yzmsWzm3VC/6xb26z6cUS82GWvjIqkjsH3gfUce3dGuRBYfknh1OndfQpFYncV
	 xxWqoOm5el+bCdieo8qaNF93HFGxYGI9+baWWKtZg4WeY69AkSjMDyYIpmQmMyrEHJ
	 yTyMIddAsE8vWpIsOjetoiTTzefr2Phwes3lq6bqNY1NUj4sYkHyWKZsWRW3jBC0Yf
	 IX2hMUYUd3L2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608B9C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171141349638.10940.10100949973297476062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b623113aefd2b19a2fd9f1175088ed4481f739fb3a4cdac64360d46c95efdda0
Date: Tue, 26 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711413496
