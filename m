Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7A62EC0BC
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757776193; cv=none; b=NyEVMcsbEgBrfDNqEjwtqsxHLYegIEE4LsyH85CRnFNV2r3IX1k007wSOWqKIBMXruksswLtud3RAoMos27MBarAGSJNc5IpMAu25WFyycrtxnWIneFvShLHGyMUNsKo7gjepdpGpAkhCoc55LCpvcO10Yll2Gv8q1xv6+PIsMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757776193; c=relaxed/simple;
	bh=Zr0aVZIyBK+BzHcZCknrDX8IJ3J/pl8UqBnJD9Afauo=;
	h=To:Subject:From:Message-Id:Date; b=snr+oatzrTLteG/6i0wqw5gMy6LZ+96jpm7ufCD4luW8B84FPla5jjD7U29y7/4zp1vZkIZDgTWOFvw6BMDc9akA2XYo8O8bARUsNzBuGNIAQVxJhctMVa839kj50SXWcGnaxlo+NcdipN29F8S17ROt+TIDKF0oINuVAwfd5kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izkx8THz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izkx8THz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D185C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757776193;
	bh=Zr0aVZIyBK+BzHcZCknrDX8IJ3J/pl8UqBnJD9Afauo=;
	h=To:Subject:From:Date:From;
	b=Izkx8THzEnW7iuSJbsmvmnNS1fulP7n4EE3AalEkwadkE+ZMCM4bP7KWJN8oWv92q
	 MqBPN36+ApIqUblqvjAa1bVkNA34SrNJyVpJsEmpxc6qshnPgugtsne42zPeVdm3ZA
	 lq80tZp2wrBal/C80sbRG0/DGV/2KL5TP0dwVVlLVRUCU4iSelvoxfUEquL+bBSHRv
	 wqlAxR4DrzmcD86ygf4Ho5k0BSDQHC/4Vd4I5LhbjRu7STAn3Y9guqUBZ/v80WddrF
	 vEggQ4E8HAvLO663lrftMFiiVFETAp1LI3n8VqUKqOUV1ruQWkmpB40hn7OkaJRi+w
	 bfJWW+2+Bnn5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED67CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777619357.30282.8770057106782097211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285a28e7d9c674d361601963a2c13631186a4c7d9b20a198a5af9ab6dfc77901
Date: Sat, 13 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757776193
