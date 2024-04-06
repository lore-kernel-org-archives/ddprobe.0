Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C467C381A4
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712417296; cv=none; b=ctg3uDrLlujpXX9SxooELS7c0cVLWVhPE7J/+q/ab4yfAE0wHucnykkBtMDt9qWkCBwsJVyS1dgr0ygnZ+m3rLnZ8oF2DGh0DdNhUmzUMH2EFyH6dubGBglp10QTeG8BOBZMVWuQVqNL4Me+kPH/+M7yi4pY+TDoCEDQh36CDsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712417296; c=relaxed/simple;
	bh=s4Kerx4njVKukhcG+NeMuzKgicBvEy7Z2nvwnvSLod4=;
	h=To:Subject:From:Message-Id:Date; b=Nnqxi+5vSK2PVd0/Oyay0KLLPlr1p3awMa5dmErFFvL6bDQ1YUxGHHL7+prFxpD9XbBSu4NTpFV0K0KHC/5p2lpnaIU9chFt32Suf3znL5l5mjsf73kKl1pxlDj3qL5sOcxD15E22uT0y3uEEtVjSIC1cHZ116yBV68UDmipaU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSJYffRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSJYffRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71397C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712417296;
	bh=s4Kerx4njVKukhcG+NeMuzKgicBvEy7Z2nvwnvSLod4=;
	h=To:Subject:From:Date:From;
	b=XSJYffRwe5lpvpQwyKd4M7VuxqTRnGFog5yfnoAnWa91zekUpMdeXrXy9QgFQGeAR
	 LpodwaM1S78cojlz+YgEiwKF6L1l6LzhaOtlI/uWcrA2272Lca1FPPdkOW9WJY82Q5
	 2R+QKbxA3X0CJLFjG8ogYYC6ST/xnfBbWJb/KUK8vMdxjg3psUXaIUlMagKr1JRlDr
	 o0MCNKCo8EevU+ZxAqvRO4rbJTx51hDYzBFw+eNXXHJZZc1ACFUDLXRgj4fTXcXcC8
	 bQ80SSODCKF/7YqrG5nDuLwCc/qunURUP/EBn+ubVth5dHWCjByCFVgWgudQOlu1ae
	 upIiLGz4EVqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6216FC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241729638.25691.1532311013192079987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc7ef8d6f4fe24bdc1f0588017a724e8409870b0385d48dd6868e0dd65d4515
Date: Sat, 06 Apr 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712417296
