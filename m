Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B991C861E
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759076994; cv=none; b=Selxo4ncDHu455eg4UsTboXkRPwOW6zVm2oUf+X7VlWb+4EBfiYy3UJXch+9a67X7zluSxCb8ph5HbtFZYOJhIUFxdtSxGHYj3gbEM9u5m3mHp92aH9s7LGD8KgH7c0iRjGfdvIF6XqlxZTQQicA6mSyzG8XN5ybazstjgEHM3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759076994; c=relaxed/simple;
	bh=gA9l4HEl8aGG3zLpIuUvYRkcWkXaXSkVWuv3Qo6X614=;
	h=To:Subject:From:Message-Id:Date; b=ewW0tZQo78F1fLk1IJXdajyPvAn6WCezK+5qrjHtgyEzKUKC54s653bo3997tFnItvCZQCcL7Kqbw2tYWdRmlhumrX6sj4e58css+BAHGv6B4aGGoz3pULcUWpSMuDUPxzslbnIUJxY8BawxsZYA8yNiSyyXD16f5dukMajNblM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8CXBNpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8CXBNpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB60DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759076993;
	bh=gA9l4HEl8aGG3zLpIuUvYRkcWkXaXSkVWuv3Qo6X614=;
	h=To:Subject:From:Date:From;
	b=m8CXBNpx58y7z23oxAqrz+aNJoxGcyWUGdSmNus6bchnvBFrt/6K/DtpD+oV9wsTA
	 O+++Fiiv14tBfCPQokLB9IubvrkqdKAz7RDZNQSEFMoP2AQ2leHWjDNy+bPdukkrN/
	 ZagX3lWPJ4kS/tModAdEuBdZO7mYaisa9g+zNJ7Zs2+H2/URqa8ic+edbQvDvfCUr2
	 GepN2jDJvkiw4OvTXeHHBEyiUvX3OvqFc/dLjCEsOHeDbdcHX9vrrg6HDn/P4zm1T9
	 z0VMCGC3KC6oevBrlOQiM/JzXWB0mwlUWB9Nru9t3uJZbaPEdP43TahqwrQw2ME2Wf
	 1Aes+RKntX3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A88CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907699358.7958.6764218137425775780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8d809729f61d078ab74404d0111ac191a3c6014929c898cc945f4e9efefeb7
Date: Sun, 28 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759076993
