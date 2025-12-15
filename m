Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A032E756
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765783974; cv=none; b=L5znOL3Xl9vyDRKZe8U/3+C4snpiSAZsrZXcc4IHERAtBWmopWvGg6VCfHtSfva7YcwCdJyBJiLM2bqmPKfmfCd7rW5ZqOz3bjW37QeGOLiREJGqxxnfW82houJHKjm+80CT64ubCbTLDxbZOKUbydDIcjVQcEPkYD2MW0lM/A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765783974; c=relaxed/simple;
	bh=HuyQ0nYkQCIv8NtPMjPtAmwSx0UUByk0XIqW30SBkik=;
	h=To:Subject:From:Message-Id:Date; b=X4CmjUjT7w4DJjQBnpmIBa+joMunX+5bkh2zz7V+VfwKzHpVQ9vgAvzr2c5sm8VDyr3qLOOBNoEMXqLNu3itBe4k8ouPrCnJOSY/NbjBVyCZvuZYtKpc7GqqmaP7StCzHrRJm+46XsUSvU+zMbY2dl8rCWGh0yI6dMsoEcrbELg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fl+ycbtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl+ycbtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765783973;
	bh=HuyQ0nYkQCIv8NtPMjPtAmwSx0UUByk0XIqW30SBkik=;
	h=To:Subject:From:Date:From;
	b=fl+ycbtKgDbqUSEpu6Ij6S99bW8OmFOEVs+uT/w8d19Pv2Q/lOFItmwWxAPb95z0B
	 60xlzOZH4sOIU4DlLazrxfcLBmhAPzQJyeKwsePkEKY6z66GZu1jQVFcTUw91d9vIe
	 mX5UCmjYXFtU9zamGSs71k7FFDAQPO1xJBuOOUg7TpqbUV793yGUt1Ud/OhrvhW7ja
	 amDIRwJ9P412wzXNOfnocJsqSQn4JhPGylBZdYRKxLUmaezpdvczfIpX2mJY8PiMuc
	 AqkLevYQFIcs+Oti6Bh85IIGk2jiiO8FbeyiWPhTfgjm1NGSPkXWzMhp/gSpf/pjE6
	 ifYQxphcUoSmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524DD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578397360.1337.9284098690822928012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc31f37fbb32e1c81fae827ebbdb4218e87fb7e668f5ad5c4cecc2a54a75b07
Date: Mon, 15 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765783973
