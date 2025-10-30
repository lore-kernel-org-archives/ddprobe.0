Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1AD20DD48
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761865794; cv=none; b=OWfjroWwXsT2INhl4Wo87qf7C8f1tBZ4orvxq0M6VPdA0743x5EOV85Hh8AH5LJkxpY7qCp0hfRn5MMRU+2nC2lde89HX1uqtrIogMnkPzRFGPuENOiZw/iT4OX/K58Gx1MLo4YY9E/kjJB0mkCC0q1Kftw6paKgPJk927I3mCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761865794; c=relaxed/simple;
	bh=y3saHNQW1sgWkvHEs0gqlYFNCsYCuLdZtvJ9548HyVA=;
	h=To:Subject:From:Message-Id:Date; b=pwNXH2syKCCseQrziBtfpQkMEfINK6VguZt7jxlrRJRlOVIWtdbclYJEu9e+Yjkx30tM8VPZhnrJyMP5pOU9EJzzMmz5GKsNnX/N+8Rob94zAwF1u5WhC5dCMHeZVyIZabhQXWGojWdFIcTM9iBJutKAR+0CQ5SZqLTgOCWCt28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV6BRs6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV6BRs6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761865793;
	bh=y3saHNQW1sgWkvHEs0gqlYFNCsYCuLdZtvJ9548HyVA=;
	h=To:Subject:From:Date:From;
	b=mV6BRs6BDaqHNZBbGEH7kwpKMoEMMK0Nt5fD6OKO/dgK3Q5LygssXtAtN0ObFMvel
	 2Tj4UAxlAQo5Hnnn+pS5ViYqUc+2U+Uqc5ZJ9rICl3rvRwq5vyYhRFk+/SGo7mtxGZ
	 p6/eXfX47BnnHDeAfJ/VbubF1LCKFEV426bdtSkkGRRfnVpfddyZzkRpc229dT41fW
	 qBVlB3kS5Rax7+GGjO6fMadHWHMVm+a9KOqFFeAetIh9J0NBxyqaeCFVg0JxL4W+Lo
	 1YEc/JPa7oCYulIDCfaqScBbPot5C6ObrixrIz3k2FanDqDbEQ+8O+VWxe4ZUOlZl/
	 ZDOGhw+due6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA4CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186579358.21259.3467799192048806099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c042fe62baf8d1bb1213f14c0423bc612eedebf2002a0507b527fe5c9ce499b
Date: Thu, 30 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761865793
