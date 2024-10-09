Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0795336D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728506754; cv=none; b=mE4IRVeUMmWU/YQCSxgEpCUOzyEEzqO1eabt8E/nmcAW2fYW/U0BhwusCUV22CCcMwIdL2H/15Y1j1WXdryk2s0q6HaXVwp238hcfS+nMBEkdYG6LsmXWMYKIZGY+pvbb8qK1CH1B09rI00GKaQ5wbPrVsHVS8y/5mfbrNh+CD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728506754; c=relaxed/simple;
	bh=2CDKxLS50nNu2imufN1VHi0Xea0LEn65dXZB20dgMac=;
	h=To:Subject:From:Message-Id:Date; b=cAIRIMcI3RCuaAFKFJmPXg2rBMOYFhwo1yjY5eac/gyDETU0Boj9Dbm3U+yqHBMhWvrq9xFq4Idwq156k6mkH0hZi4VMyr/+FPpqrXpxM4HKDREceIJ2nBZ9fTA1d2/IooIw5knkJ1zkXdEG0oLUw6emZJoEupKQVOA+7XQiYG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izzGTpXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izzGTpXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9597C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728506753;
	bh=2CDKxLS50nNu2imufN1VHi0Xea0LEn65dXZB20dgMac=;
	h=To:Subject:From:Date:From;
	b=izzGTpXccUdfvynw0xyPn0vgGmxhM8vexeFJ0KTgrRdbf4Po9YLGgp3T6+VGgIax3
	 dPCb3mD8RLyaLWNonJVWsh4+sT3Pjyugi3LRQMAeM7XXS5klDBlL1fwiJYrfVKahWJ
	 rnGBd6ZREPrM/8Iac0ndccufqwD6qrNEp+WDmdwjFXvx7ORiBafz762WiZScRjR9kn
	 TDYzKfE/DHwFf1mkiTSVMo8yv+ixoqmr8zgsKWqDqMsexOy2KyKVeW+4wtXoD4M8ck
	 O9vZLg+Zf85NB6xXBWC7TiGq7k79L811HjQiGAJh54eOBz2J4+u+gmOUOKe062tedk
	 D82UEC59xQ+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12B4CEE34A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850675362.21943.15025310959279652185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcce176884f12b148726b72070e4cfc89529d97a04262f2d2dcee0295a258ae
Date: Wed, 09 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728506753
