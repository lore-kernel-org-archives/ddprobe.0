Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576611FB3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741537134; cv=none; b=p0M8qgYKjRUsw94GdtqWPnmj5rreT1hpHPU3MekEKllnS7cW2VlnUSGITZ51sAuEnl/P44CSnvAYdYdURKpOdr8KSD6sXQnX00Inh/r5fSDCweMOmC51JpDd7WyWS+HKyHaPL+o/ThD+xnmPldj2pXfNgvE5jeDUnr2jZpbP4Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741537134; c=relaxed/simple;
	bh=MEH23yhoCBhuedoPfGJIX9/X6H3+Lrqxj6oTcQuLlhc=;
	h=To:Subject:From:Message-Id:Date; b=RESjbEdC16R0VKsW2Eftikfv2YsVSg56v8bEsaODW6lsdZwUOc6uLDW7RwQ7MkIHRVqjsSgyQErXDglLQE76Gwkkx2V8O7Yfp6l58UPJmG5j1nGkBesvUAPqFcdjaP/gIeqa7Rvec2+Ps6dAIXFVe6xIXHZ8b6iMLWr5micUKEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5oo4K1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5oo4K1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9E2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741537133;
	bh=MEH23yhoCBhuedoPfGJIX9/X6H3+Lrqxj6oTcQuLlhc=;
	h=To:Subject:From:Date:From;
	b=a5oo4K1+YSgNomsbtEsJBTfKRRPX4iRf7yVQJAo6ENUxOoxXcXO3wZV2AADGnfF3I
	 uM/mM9MG8jKwfbVuwW6clwWbgsJnu3XFk8qZw0iOC2/5E840EinYoHfhMaVRjCopKp
	 l7/tlzdssxs0paDE61wh7uXPfTe/OaU7D5mkkzLWC93Ok85ItAYCetDEg951SNlN+b
	 NG0XrOEZVP0LYil8xTF1vzbCMsWcF6wMKp9ByzAVmJT1ENNK9Urjq8epPJ/VTJzPVE
	 wgRC5oxl3dLixUPPAbZ0tCuyrPmwU7xCtT+J/6x5///ysExiA1W94BmecbWvwNVBQ4
	 zyCZVqQb+iHEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9738BC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153713358.22257.3317984428238302128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042f476798dcde45b1f876c4d96433dbbcbb84d8497b09c5f84dddd5b2e160a7
Date: Sun, 09 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741537133
