Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3770F2F6189
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761803994; cv=none; b=dhKsGafE05ZRAohYEhKqlikHalgYTirbWujJO6Kg/G0D3De7JNceKEnoiId11TsO0NS0HTT559koCzFBG0sOPFAV9d/v6mj1h1s5tA8+V3nAujw44ece4NpJmDv9pWYWStLfn7q3QCsSsJ4mZB2RpsfW10N3c8nmreGIyPhad2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761803994; c=relaxed/simple;
	bh=6DbkNf49/7JFdpcw6VzqnQraFU2lbvLhcRQj+h5Rvc4=;
	h=To:Subject:From:Message-Id:Date; b=g156y9vU4v9pYdtOzJfvFGJYsFUUqK3EQLs3s/piq0g551EiEOYT7wwbdDYQBs+yLcQ0/gs+N0aFaSAPHEd4/8O95j07BnJ4UXojakWFflx5QrXk0TUiMiAt8JEX9bBanuEzz5HELjUYlEsSKG85HWDu3Z2KMtZQVx28aLU74Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMWa+C3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMWa+C3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A25C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761803993;
	bh=6DbkNf49/7JFdpcw6VzqnQraFU2lbvLhcRQj+h5Rvc4=;
	h=To:Subject:From:Date:From;
	b=MMWa+C3Fd1R6hVXyaiHv+saME+KK/ZwkWbD3KLHYncgm+WQutTayOa8y04vQcZvPs
	 UEjacr7txDeEtBZXwM8LwU6hK+BuM4McYgVOLAzgrlyvJFdt023DAW8FjIqZT09hjc
	 puPcOalC0rYHphw5zHQ8gQg2xQIRK2bqbcbNpB7MVGfeZaO4KlC1b+iCJnHnxMj6GY
	 ExjhebiAGNchgnWee+5+8iLKRbBF2gzE4FBhxJldYLFRmem3YFBX11fZ32pKdOIbxR
	 ZW3cr2gaZDFoYtRUaGhWf6L61bxY/EKuVfT2MDLc1ieBP+D0vyNz9B/TBtdmLzpyUn
	 GTCdKKs/26qDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D78CCF9F6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180399359.29520.13575157064092637540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2b07e02b467989cee17c8335c3b1eb2c97e4522f08b2a1b00dd0dfaa05c13b
Date: Thu, 30 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761803993
