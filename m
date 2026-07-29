Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0113AAF6B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785342034; cv=none; b=pQqLM/400gMuPzW9+LejkroCAcZoo5GTU8+zABPmU0oVIQ09XP8DZLQJ53jW9SrRkyKixnHqlfilaUj7muImdZEaCwEUnq9HoozYTiFcyMQrcST83BaQ0BBGVYnenxDUfbZCohIpCmJMMUyULwMOPIklMu80zcnKiv/i+vZSU9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785342034; c=relaxed/simple;
	bh=4PFMveJ7EPrLpxpcnEaOOYeRg2jmLHAKKXp4TGiP+N0=;
	h=To:Subject:From:Message-Id:Date; b=dt+PMq6ase+nQeXrTviuWzZQA7VabKi17BqIl8d052LI4Qb3xrP0/ShR5oCsnku0yjZI5xYuryMZRyjaNeOGRo7P9I3YZukNSqKrU8FS9U8G7dnWvELrsbW2nnNMeXA6eSF7bjWWhCSexNeC1ifJ2wjiY8IVYGPeUUS2TdvENiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIJNgv30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIJNgv30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D971DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785342033;
	bh=4PFMveJ7EPrLpxpcnEaOOYeRg2jmLHAKKXp4TGiP+N0=;
	h=To:Subject:From:Date:From;
	b=WIJNgv30+VaTCROsHkhn4scl/g+/DvfgjTkhC0zXmSOvL4lDaQBNGEVRmvNj+vS3n
	 sMDLi3Vt4dvhBrdSF+KpTdAsYVzmF7Ho3+Asf84BhBIvLcx+5/rmTyajlUigHsjO5x
	 10ijGe65WquinnaNuGWnffVa7iUkXC4YmcnaVdfsCz4KFimnAS9/KR+eJwMaNaRy7x
	 kG3gHBqYCn/ym3YlARAuZXMHzmIa90A2fxotC17O2B/Pv8tTuSMYTVHdYcueHkUMWg
	 Ld4G0vkFhtWFcUqMkleXsrDRGqXBsbUwU069mISCAYKBA4OH32MAQK0VSIiyA/ZJY9
	 LKxlRuRfgbxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF0C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534203368.8251.4826708173581920942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fddb74542f1c83ca0e08cc5857b050239d4716fae2ffa1666bf923f6b1722fd
Date: Wed, 29 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785342033
