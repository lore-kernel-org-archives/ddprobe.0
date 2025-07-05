Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B64689
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751676594; cv=none; b=LWTxMEKwYLtEoe89PvC+v9eq9dJmC+00JGBfwloNUyYL8qdy0USQE70qzTeDfJSf/RkGWVJ11EwIXA7oIOcodkCcPlxn+qE7b64GY/r1CKbi1ZVnXZLPQSKI46BjQ/aNwig3vhb7T3Rm2IxjFiw3WuShIJq0UHjs28qbswl3l5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751676594; c=relaxed/simple;
	bh=edonTJAAe3wdT46T9bzvvMGeQawF6Wfftbs+ZHVJv0k=;
	h=To:Subject:From:Message-Id:Date; b=pFLcKhm91dBse+blxyE5x5hhjowEHg1vH9ar4NWSPqJOa1s84dk7LApfbUNvh9dcBzMUSVl2+nOn37YJkyiXYTMz7xJmxdPiTaSEZrP/RWgZOzeNAqTsYqI+5fXewSEk492mY9JL+LYeIY6I5L9JpXlpimjTS3BBkos4Oi1KW6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCHDfafL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCHDfafL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751676593;
	bh=edonTJAAe3wdT46T9bzvvMGeQawF6Wfftbs+ZHVJv0k=;
	h=To:Subject:From:Date:From;
	b=hCHDfafLTqbaggKIcF7hkIK+4suz36yPVtWMydLyzpJB6K1eG9qh9odIzLxEm6yo9
	 tyM1ixfggh/jwhV+DasY5BZyr0CA5k0q/JfzOEA2bH0ATCgHZS2OPRBeFGvIUlh8sc
	 +CfzDhZ0JZB6zGO75vkFRPlbpkjtiZmijHarSjy5W+sOtcrG6NJAjWab7ZN0yyMHar
	 3JrpheiWkztwgSF/Rl28jM74axp8DPXhqihyvWzToIj5aAJG0aaSzBnQKGPZu9bhM8
	 lnvzNTbZ8ywyyhbGlUtqJXpqZzNsA97taznaAeh5luyO6XWc8mSHcysStM6KGoaIAe
	 4t2DsxvlC4SeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FACC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167659357.12910.14817700929269352905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947b5431d5cd430347559613636e64bbabe510f7388bdc6d237becf0d386435b
Date: Sat, 05 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751676593
