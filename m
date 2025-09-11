Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14969274B2B
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757633394; cv=none; b=dc2L1OsQ4pqNEx0z016C3ytQhr4O1/Jo79I9MO0atDCigUUfwC1hZqwUjPttVswsFxinRyZvQf6WkAi+NFWDGlFtl+OOFN1tROYOkJG+Vbeiq6Cl9HfhOFQfKWf03botc6kfMjX3n5Nz377Kcso423EK5x6eS6QP6f6ZnVOtjgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757633394; c=relaxed/simple;
	bh=F4GXPkU3TLS/cN9qNn0bF7H0KC1H4kWLwS16DiQKa1w=;
	h=To:Subject:From:Message-Id:Date; b=LGzU7By3LvklIaxqNmWQAOPzwLxyGDyNS/KpNkrd2+PFu/7tMr1ibMn3ZXqUNyokVTO4vwrKU8zNUINYwoaFJtr3kzWYIsJ3X3xJXgotXcEgpDVLIHnMauFQ8w+ChyYg6dKZi28Ya+jTmb5wMdcBTuO3pSl1M1fME0wPIO9675A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtktlRVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtktlRVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757633393;
	bh=F4GXPkU3TLS/cN9qNn0bF7H0KC1H4kWLwS16DiQKa1w=;
	h=To:Subject:From:Date:From;
	b=QtktlRVYhCZ9cQ6rmW6Zz7hbNK7jEnan0lbquFyENSvoXNyAGiq//DBzjDWfOIcmh
	 18WaQDWQmiGxcL4tqLpOOMBzJAwMxvfTDrNkpezlg3uY+Y3/10BOb09cofMFE0F2pX
	 JCB+ELoAhGDgzBRhwIthsT3okTaf99okf9FN8FEmfmw8V0hdpKc5gAas5Mn1HuNGCl
	 VfCx4iFTS9DJZIOgPqaEGZNxDu2ExB7y47OoQe7qWMTO9QAD5Eh+4hwxOZvD3QYV6f
	 t1zThS5Wg7N3cP7HMTbRFX1+HDSZEuMWaux8MuLbSXvw41ylEWkKdWrqheQkofGjq/
	 zcT76c7D/VGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90415CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763339358.29143.10473853037809645186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4e72fde51d170b6174e701e6533bfc0e1f3c7e41f5fd1b0103d6ea833ff564
Date: Thu, 11 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757633393
