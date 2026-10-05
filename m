Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA5C4503B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791177634; cv=none; b=UNvwqCYA1zU0bGLLMqnraJwwU+bq19G9sI8afhoMeGWpNH4mOcwW8hrMRGLbvCzPHNC5ZciBQ7ZyCJKwQijOIEBvR5sPKJ1lbe9pLUYKbnVOUt24Pdc1HmRHDLZhiT3gywKfWO2CoJdJqdO0sSwtQ3yy6ngVj4Ze6ZqnPBFiI/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791177634; c=relaxed/simple;
	bh=ije7Gm/1K51joZxCiS35MbYNBNqmf1A3b3ZJH2Q9FVc=;
	h=To:Subject:From:Message-Id:Date; b=pPDUSuCKbsNYeY/wbhuN4k4i00GTi+C3f62zOsZS6OEVBBXVDAylssDb9wh7xxjK+SVUF0Keixu2N5/9UEnOSJi9OajB7aMKNTxQ49Hliswr5VFIM1yeq2UcbKK8595sJ4GKtwRbcCV9m+Qn9ffRMYpyffkQ9MkkjS33ApvwjAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj3YBJg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj3YBJg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2405C4AF60
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791177633;
	bh=ije7Gm/1K51joZxCiS35MbYNBNqmf1A3b3ZJH2Q9FVc=;
	h=To:Subject:From:Date:From;
	b=nj3YBJg7V1d7a2n08gHBQEiY+eHKHFlcfgQt3ZsZKl38r1Y1Q2K5EhpHK4ZHNQx+K
	 YFD6BEbNlQJA8QuIabP/okpVjaJNzQYnMFbSZ87nyE/7sH6qXD12nTIhg9wotnaTvY
	 ffTufj4PVkxgcKEM7vIdAXvBEQKkBwiglRunCcFxwT5jxtJSSp5f8RHFayuJ9CCO+6
	 awXahz68YbdJ5RhgB+iPK7cVWuIpg9sm5BIfKST5yRVtYGOg5nXMjDIp6WpHkX3Ju4
	 8DYtb2Fo08/UPxiO1KVD/Cl/MloHAg2bSlZIzyF1U3UQ+FyBShcR822bGGCxz97bSk
	 5jkL/nufxXVDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70ECA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117763368.19633.13755154445040904404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016d3f9c45772caa603d28a35d8d49a1b6721dcdbad0197d3294c6ef5b787d17
Date: Mon, 05 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791177633
