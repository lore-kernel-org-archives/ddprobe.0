Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674BA130491
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580543; cv=none; b=CXjHeYex7z23RIaj31dDj4ZYW2ul8ZeA+x6ydu2D1qwjcQhqjWUokieMfF7USkfW/sVGvsYPWwVDlnEnDYHpJZlA8gpPw+9bXKnDoR8AB7itgoJU/2RuLZwYBzkcFvdicl/XDMjMwdKYExI5RCUAfoTCB9GnBEJ1GUipwNGbwHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580543; c=relaxed/simple;
	bh=LH4Z0DCTcNECvoxDPsBa3MXAebEWNYdQf9QK/eEkMs4=;
	h=To:Subject:From:Message-Id:Date; b=JgIygXZuJKSi4GVi25TlwrfnE/IF2feKk0UzKKqzY+IW5kd/EhbCnDAYX32t/28HJ4TTBIe6G1tYhKbkTnqUitsmW3AMT3tlZfgg6E+hHL7MP76CUmH1xrNDnuQbHbhNL+xRhhAc0XScZb66PwnE3sf+RhtgBbJgoZaqpvNK8/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr1UoOZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr1UoOZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F5C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714580542;
	bh=LH4Z0DCTcNECvoxDPsBa3MXAebEWNYdQf9QK/eEkMs4=;
	h=To:Subject:From:Date:From;
	b=Kr1UoOZBCS3EDy1HikTN3CUd8UQEqrFfoQidBnAJ+5r6z8SIedizaWbbDqfzpjstj
	 UZeTuj6SlP+4+LVqPSn1Rr9CRImEJh+4qYDbXh+w5awiEtvhQ058mvsmuBeOTNcE0u
	 C5FD5VgYd1QtV5SbrGHeRAllgNu2uBFeyUmYvkLzHNqrFf/eBHHuQHrYEun/YpETO4
	 8jU7LR5jcmbJkm7YN+VnjnFuhDdCKvQuUNchF+bYc+aZ7rTlAhnSNypCU3VE8YfHnw
	 dtVsHsz3+Ya4xAJcGR827XDJDIu4klwo3kng9BpOvRE3qOSj9diF+qrbu5n8HkR/iG
	 HzjL/kL3b2bCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83F8C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458054281.31468.7431594295561754076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e0ae005e7526a5ceefb3f91d0a7ec65b69cb836fbf45f6045bec22e5dec30f
Date: Wed, 01 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714580542
