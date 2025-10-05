Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4E51A26B
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759633794; cv=none; b=EnjNLozG+TZNj3jJe3OKFY3vLj0cQCAGebo/jAn2Mmy3ATgVvGN7VkcHd/7bED3IiEAddIFEaperKnJCqoXLCRWBayU3omB9TPS9q6tVL907PkB3M/5XaCPqXnBfsSmkp7wCqSqhRECbDeJGBbABJsrwW7JVHdgROnaqje7vTpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759633794; c=relaxed/simple;
	bh=rODkSxz5PC+E4kZa9TZUIRjOs9qHBGk14B2kWDLz4D8=;
	h=To:Subject:From:Message-Id:Date; b=gBlTvdTWEIcdRkUgVZud2STwrlT/cQlc71w6/AqzMGq1N+ukrcNJ5wVlUgGz2cQBcDnVbiIg7wj9z1NHH5hMuh4KR7ZiOLf4ATfygmqhYH7tpKUmXHyzmV4vD470kHN6VqPy4eslShkm2+T7TNisIWruSRISgOPSw5SXrZOzdyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et4CYS2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et4CYS2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759633793;
	bh=rODkSxz5PC+E4kZa9TZUIRjOs9qHBGk14B2kWDLz4D8=;
	h=To:Subject:From:Date:From;
	b=Et4CYS2kFUtuPqSdnxuhf5sW9+DDtAdiLb0bop/1nCiKJjL7lbvcQh1Df1Z4fbsdq
	 hs47AMAleC+6FD8Zx6aPb48G4P/EuJvdv9s+uc0gsJMP6jHa8A1kF8L95Ush95kjOj
	 qZ5mYcGfACjwVv9CI4FO2AQ4g+vZr24dICSyiCKmr1VD2J6BUoY7+MZRN9R5N5n/Zo
	 uiEKqriv7BKNqkkaUzfffejnVJWk33dQwzlF1VnFBUcZUFa5Ocg2nZuBJDvxdGIsgq
	 tkWn9XCZqQ4GJteK8UcvpqmhvKvSYmnkYeYU3txcMysmDcqIHEnR0UE+1JlfCwDRGl
	 /Mxm5954+6GWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD0CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963379357.28347.2551981206398084009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5221a8db791ce04e5ca566e7e39a5ac5dde5ab2242c3cfe8eceb56eede5ecaa
Date: Sun, 05 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759633793
