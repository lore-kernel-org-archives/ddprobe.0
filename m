Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2669D29B8D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759922394; cv=none; b=UbWCtu3A9AR+5avFEW1hPb7f1MKiU36fToeOl7lFKBg2nVzOHYQWbYBu6GT+S97ja6kG9iMGScYYsb71owqjO1lnnWoFz/w4dl7EgAafSS62Y3YmzAOYtWyMb4kJWqHiOblHruk7/r0rQGtf+88fteCMUGr3OVL5zguZQrn2LxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759922394; c=relaxed/simple;
	bh=tVmEA9wMw7SiwFvoiTxN2uPy2IK04XpTu9PHDCpFl2c=;
	h=To:Subject:From:Message-Id:Date; b=TXFXRlF4kASf0BDqwFrzDV48ZPpJp1C15mFmK5FxBZdmZsVRoizX31sTUf+2zF2Ztgq0KzF+t6h4uw92qqszNrVIK10SCXQNrDtZHQYNTD9VWH/A/M1ac61LEt41qSwHwy+W0iPRGf42xQJHi3Fc4FJWS0MzyMk8XOU2iyMOvck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC1yma9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC1yma9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759922393;
	bh=tVmEA9wMw7SiwFvoiTxN2uPy2IK04XpTu9PHDCpFl2c=;
	h=To:Subject:From:Date:From;
	b=tC1yma9nnlL8+Ai7wBg/Y0VUEAnwjt+eVFaEY2ph8YdHc7f0KBIvXlDu08WJTJ7Lu
	 6TyfSn0Dd+GSFfRp06A0edglsqBnAO9mykWI01mtzbRymnziWjV/LS9tnAZQEv4V5e
	 aMXS80jreTqTMIAaelgtGLDtQW5c04KgLrv23HjURBFkiuniMt0Wwwy1LzNOWcJj1z
	 eTpcd6pou8QRrkW75JdrkEA4w7rPAmscvNDfT+vmbItqFX4HCYs5tSRvMGJWXmuzU1
	 BxCr6mCnFNrt4Xzx02OKIa170+OB7cr1gOhkgEZnwb6NgyPmsXh7Zdu6+BR0DD7fAd
	 q6iqnMg+66ggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FBCCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992239359.19908.16841931590777194789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed30ce4396c1d0ec69dacc32fdc9699a2fe00a8969059e1ef9d404c1a2f52edf
Date: Wed, 08 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759922393
