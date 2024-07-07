Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A403F51B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720385183; cv=none; b=nvZ3d4+WM+TTBbEQJ3OeCQ4wYrmLoN1l/TEDCOrbpYVRS6Kg+JV/vgVtkmNeYp5gQTb148aNhNiYpsMgqG2vz7pZrhxGiZqxmvovA+ryzWgGXLid1xhgqruKp0DBEWCX5xuYOmnIM2Uajb1ymn7ft/adsoawdF/qng3lsFq2U40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720385183; c=relaxed/simple;
	bh=FEO3ox3Y9ieP6oyVMiK9IVlWjoYgDpQ6z+tN8Z7aV6M=;
	h=To:Subject:From:Message-Id:Date; b=LbOf5V8rD5pMHldsgS+nQV8xCLJqzTOf/Q2jPmHnrtI1rlIdlYvm1fQ0OuPLIE7fFez5zAMaFrzJ1SFj5dPVfdUrQe5lcf7wwG349uFYG1E7WsjjKPJYiluKHJWS75swypZO3ij4jEUKoqUtzrJbUacTlNJwvQ/Swqm9IonWwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iORcRYNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iORcRYNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4AEC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720385182;
	bh=FEO3ox3Y9ieP6oyVMiK9IVlWjoYgDpQ6z+tN8Z7aV6M=;
	h=To:Subject:From:Date:From;
	b=iORcRYNAe9VOccI66KiEJy6XcbynkKNfV3dd787uj/UVi8TjTHT6/n1gj9zeVY5qm
	 tbW/QdfiOOy0GTG2g1SeVvbptaPn4c1ohJVJvNlEWsYpfY9uSoby6a+FUtNezzDzgJ
	 ACXsKNmougSpM3zhVJiolsSY/B8dP3K/ZWyBzaAoztM7hIuyQxZUkRFnsFP3ODt4SJ
	 uM1S5crIYuhdjopZydLilj9WD3w0tW6DbSClG0SPFpFvZBspBqWDUgMSmvqjBpf1tx
	 RS7mI7x1U2SScChCKnCr/+ueuVNBeN7SYfjXpPV9DcKsdzH/6BswkbO1WztE9Qml78
	 QuRXJn7ME+xRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C367EC3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038518277.30636.9877589439915014991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102450ed3147c90b1ce7976817165c6225bfcdde6bbc0d66a6c3d35012a91ae7
Date: Sun, 07 Jul 2024 20:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720385182
