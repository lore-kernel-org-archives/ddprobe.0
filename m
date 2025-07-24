Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BA02797B1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753370394; cv=none; b=msa3hzD784c324svF+BzYFjy85CCgxAtMECTOHRIZA1pVmAU35OV2vApSdKfEKrJCgpS3VVWZdQHigC+5gBfEV/DEr4KCB1DViRCgCarV7FboVPRKHiEtgr4Y5q/8YEtllPQcYdTqPslJTqZQ50/cBXSkqWPPRZJRF0iPXImHC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753370394; c=relaxed/simple;
	bh=/tFuwtcgoHKhyDnYsOycZoCFBQTYqXWqvuDZwXHRj8c=;
	h=To:Subject:From:Message-Id:Date; b=lxn9vxvwJnTptJzsHE9ERMJquNO/wXtORAtQAjTNt43nvSceGhLxqPJQgwqAjVPFEMIE2yDMi5yXLYRYJmbihJiG0k5fkJTQCxaLWlubcmXgQxwNsX00nwu+oiWhCWZOjHyhbo4bVkXi2SdLmGyn6EUbnk0iYiXJpZOtcRJP2Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdjCWG0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdjCWG0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9A1C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753370393;
	bh=/tFuwtcgoHKhyDnYsOycZoCFBQTYqXWqvuDZwXHRj8c=;
	h=To:Subject:From:Date:From;
	b=cdjCWG0d86kfoRcPqzvUEYHtLq9SQo4/+FZ+XRbXIDZifCL9nWeAyhDSbn5VlLiXD
	 mL9iCKFHzLBe8V2BnuBPR1xdkY21I9sEkgYjILn3U6n1SQMXKzwLD3nQASAk7HchiY
	 T4MFVYrinbEU1m+HOe0mpU73lYx9sLFiy1LE4jzXK0eUnG65U5gZRFJ9yz1Iejw8DY
	 nhU/mOHI9yEnWBcsN+GJP+4WyBn/Q6Wru/HvQq5HOutCFNMqbNTupjQpzP9/IIMEtW
	 o0TKHthG0i9YNjKZxeqAzplu6v1CfZasF6wIs6ntR9/bsDP17wN2Dfx8CER8d8GtmQ
	 B45vqElfXcLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90187C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337039358.23551.16634749264012877235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53dff46c4ab2a08df8803b15a7cb8961394a155250406bfadfbd53513df698a
Date: Thu, 24 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753370393
