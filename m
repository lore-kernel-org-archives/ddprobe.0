Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FBE2B9BF
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732565754; cv=none; b=HJzjwFPVCRLr6bmKj6LG7gSRwZXdxlj0AeRqOUs2N1AqtAv2IrefGxoWuB4cjEacWoOk5QPF33ZiTt9DVCMvRNAYuslgcTZ84upFk26l1n7/RIHdtLw6OqnS6O1skPLwlYPWVBzHHYsV37dilx01cTPHKRWm/RrJgaAsbjg5e1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732565754; c=relaxed/simple;
	bh=p3hCfGRoYjGoPy/XVz+zOuiOw3tExtmSTFVIty5xYR0=;
	h=To:Subject:From:Message-Id:Date; b=njbki4aUOuNU+S62nnzT/0mHckq1F8chpP1jtS+kdB/1g8ijESsEq8icc6gMvNglJczT9vY2phSl2OmFwwqYz5NZ/s9U5yXlcB4+5rjW/3AiuvFtvlxBqUK85HdstA27T8kSHTVKZqDz9bnH7ChJvHNUhBVodjQCiG0DMEbE4OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFw4Dcus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFw4Dcus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD38AC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732565753;
	bh=p3hCfGRoYjGoPy/XVz+zOuiOw3tExtmSTFVIty5xYR0=;
	h=To:Subject:From:Date:From;
	b=kFw4DcusMrG06/Sq4SwsBYFfgvNb+bziJoprNth4nTw/7ZSFI38apL6GffRnxxhtt
	 Ife1fRkKs1c6Xw50dTmjc7xvOy1KkqDoO/2rnL0S1My2SMP/CsPXGVfq+yunqOzZeq
	 Z+m5ms3Eu8teYw+zma535BrL54Rw8zPHbd8A953Ut9PD0JS0nMbNCcoBw7HdYfp+oc
	 Vmjh9TlTOA925HD663sK17pqh/fwTlTcaSIYsPHI3QHmcgoPzbJaZbtE9bRxlgomte
	 tl9joq0b+1/sH4urKZscI8gPHZjDqR8XEAFFHZVP3+ocuclfxdi2oS2m6JEDyelJTz
	 Ggotn41hQZyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E20D59D6A
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256575362.24571.14979526419732750353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455b29505e8f1ea15f0e996eeeb925d038b96863bb280c36a8a976cbd7a3ebd6
Date: Mon, 25 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732565753
