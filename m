Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017CF131BD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711642697; cv=none; b=GVabGT2Mi+yR6/T/dOOPtc3nB2edsZa6JWV2/2Jhc7litPtVJf192BKwSnMxdLsfUHz8l791h+6tF2k+lwgu328owUJ/JdGNzsbxvM/WcdhCecrg8YNU77ZukPqyWVNBH84+tCkv2Yhpq0Niof8cQ7Icn9nx8zsUZjTPoIvtVJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711642697; c=relaxed/simple;
	bh=ggIVfRJ0SWDBMclGUdUjyc2VYQ52FkqoVfxm7JjjHT0=;
	h=To:Subject:From:Message-Id:Date; b=L17dRj2MhlIctN1ulSBHC/TQjPT6I1X7z1Wpw0LAtfd/+UcgRCvKepF+3JYB6qpQTvUIw47S4FzRfOc5ck9v5K6G7pFKkO1fszdcUw/vImU5ELDPHOsWgac3O2bCFraKk1UY9YWRQSrdPbIvfQpM7HI3qYFP+g0SMThYV9cFOyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjZkcVrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjZkcVrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F360C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711642696;
	bh=ggIVfRJ0SWDBMclGUdUjyc2VYQ52FkqoVfxm7JjjHT0=;
	h=To:Subject:From:Date:From;
	b=FjZkcVrgh1hstAYKzNYLuP8o5B0fqJC6P9j/awwvCvKFpBrEzMwg5A6Re6R4hxvyQ
	 5oLw6WgfA2h1zHrUUGhcs7npcDaHUfOzRyCHqBSUCJqkfKZuEMRoSOJj0JXfFKD7jQ
	 in6QkgRLujfmFGL2+MRZbvDwNWcx4Q58f20XViIFeAtQ07zEkUwIPkAR6B2G59/j+P
	 klYU/fsy+GuLaB6NNnuZ9mRHulBUdOf9b3w1cxj1Dpl9HlXq+SoiUjIGA/HWI5FQsd
	 tAXegmJ3ok+KhMkC8q3GlsrEW4V1joXsIrCFCsxdR/NTDJpQeYWgHC1wqG0x8/5QHw
	 vZMaXCVgipAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767DBCD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164269647.22491.16359869585321733258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bfb941daa0b4d2f340b9878854d83619967c6c6cb7811305f8d61ec654f7e8
Date: Thu, 28 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711642696
