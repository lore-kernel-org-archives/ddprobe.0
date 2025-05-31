Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3661A18E20
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748690394; cv=none; b=mhfru7lfQnFG1pq7LcMskqk4OcPxnDWg9ViBaALmtqNSfTzdq/k3BfHDl73H82+CsSNq52hrV0wE/SWvZtbwAlKh5mbt1fp3puVuEBn4FPIsVIyJRSxcviKAdKQ19pT4aBzLy8gwPSxJSsnmg9A9rtgFrmqJ0tnASgc0P2gYM7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748690394; c=relaxed/simple;
	bh=VxZfK6ZbiIiCkEPmeVJmTgVf2U+su7qk51MblYZK5jI=;
	h=To:Subject:From:Message-Id:Date; b=DQeeMsWwmSLPlKoROYASM42CpC6okkr56Jgm37I4ZucYTsHxwEHyZ9AaCFR1QEWotno6KMLxoD5gaWqChTMM3cQlC8zNTFCU6nkebTA6IjKHOlTFPaeQYm+yjY3Edj8xn+xhvkHRt7obBoMw0lJMx323vIOe8XoDYJEteLtNj4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdWfa22l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdWfa22l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748690393;
	bh=VxZfK6ZbiIiCkEPmeVJmTgVf2U+su7qk51MblYZK5jI=;
	h=To:Subject:From:Date:From;
	b=QdWfa22l3NsVbaDoN9XX9Epm96+7De7lo+2gA/gSky7icx4LJ3m7YAg/VM9psdQBH
	 aRVIt0Er6WoAfzderxAcfDQunGAzqw+vPrqHVwoc5s3zX8ZeaU8dWWkuLtb2BvwxqJ
	 JTwExLcT0s8CZ2wTDZVBKuo0nn65dxxtBslaRPEygqSv+LZfaieMSYLoAdaxRh4lc3
	 cTwfk1hFw0+E/M7/cDZeZ8cWUztN3sFwOiFbt6CZI8gNYMGpj83MbvwdID728K2Pga
	 wd8nMYyGJzKKyz35XcS+FJ5Y9Riuyap9I1fxrWyAKXVqwKUVoWTsDjKnHAVjAFZr2h
	 NLSK4W5KcvJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B83C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869039358.22036.2697947085211257568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5216b0baac0b6b0246b0b6a88ee309cbda33c076e134e1af492251069c097134
Date: Sat, 31 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748690393
