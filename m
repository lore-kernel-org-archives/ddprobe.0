Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117BDF9F4
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706729897; cv=none; b=OnzLkQuTrD9M1ZKMloWKPgV6kLvtpuh+qnOMKaKcVbinnuuGcfqe8jXm9fE9r0o/kclRMc2iJOsDRY4ewz8B9h/GFD+oHYRxFN4Z/TMGSvwJILF9kw5jNW5+/AY+cnND93lXVMNfBa8m3kdhb7deSRqa99dxmP37c5pOmiED5pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706729897; c=relaxed/simple;
	bh=gn2RV2xKwsA1tFL5VeUfJZ0egufoPctpKl8DoldCp9s=;
	h=To:Subject:From:Message-Id:Date; b=arMGQbiJO62I0mCR6Lku6ZTlz10JgPNpz3SofkvbRLF/kEM8XPzEcCY0hLVxdTT2dEAcbGOZujLEz5MmSaM3yfeDThK91PfRaxYeP13EMW4ZThHgIf60pXJCOwQCklByiXhIBZhX/s6ZXbaxrqsUs/JiIVdisCxnh10siEa6B14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vpk+8Laq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vpk+8Laq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83FE7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706729896;
	bh=gn2RV2xKwsA1tFL5VeUfJZ0egufoPctpKl8DoldCp9s=;
	h=To:Subject:From:Date:From;
	b=Vpk+8Laqtr3HdQZ964VZePzoHXswn3Y9UyY7FEM39few1nmuzkkbgFq5uos8cV09p
	 WqEqmegHwSNbyaNq262rnw6DGOxlh+bD6G8cZRARde6ColrXNY32IEOz/WsQT+Fglu
	 qYjRCrRLEG/IpQrqrD1ltZPi3f8nteBlwtl1MpcA9W5ya+Kq05VLowCRl/mFVeHpZm
	 SmJmG0qQ9gKNftscW1QmYkO5F0Agoupn4P3qgd0/e6AZc32/SquRJ7YjI/THABuaFU
	 AQ7WUSglhbzxPse/PY5aaiiedrtGJpu83fns3XmNNEK2Cex/RTgJpJA8GUpnmoQDI0
	 m7PerHWkzrzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D375C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170672989641.18101.12109441497087032023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcecb9e660cdf2be0ce5bc8281daf585bc57e1c34af18ca6b4147fdb58b328cc
Date: Wed, 31 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706729896
