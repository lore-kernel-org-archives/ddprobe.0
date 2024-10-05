Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161ED15C14D
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728153354; cv=none; b=dzj5VJv0SYKqsS/Lkn1LugnqEKf7AxxfFMaToJarZWB0YBIEJ64vsSeVmigqDKsaGlVRQjyjkCy5hpvggzydJNDmZX4PGIXUMMyb2e0NN9rPsvPm4pmLqynxqasXMxdKljyV9yrafNajRktXakkLnsc2lNHoUKoNaG1ylOatD0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728153354; c=relaxed/simple;
	bh=6RMfVpK2bPoCTlWaWcRReSI4sRkO73cG08k5mriRFSg=;
	h=To:Subject:From:Message-Id:Date; b=Me4jyTMGbEdZH10RlqNyhxGQ6ybxZIGEXqO6ab4Tg/ltmXnsjm3iOdKq9Gfn6XS0pzT0CdUkN3TUz1YdeiiJaxmSFy3ZtPddfp0dL+npY3D9Zgq8Oyx1XCNIfnxzB9MA9mTTyPd8ayLkDqzMUYK8VNWZETl3m+mx8buuc9fXRGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB5zcIFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB5zcIFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BD1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728153353;
	bh=6RMfVpK2bPoCTlWaWcRReSI4sRkO73cG08k5mriRFSg=;
	h=To:Subject:From:Date:From;
	b=JB5zcIFmuCQVI2puwAjRGI09eBD0+h4H81NyFzV69QJ1Z2DjVgsRqStcNrL0Lt6fR
	 yUB73AAN7S9fHecn9q8OvZA1OHQyZsUxlDZx1RS1uuzOF6M+h8HBno7zaBTQEqpk0D
	 NtPaLo7SqWqjnsUG0ijfFYucUwwLm0UvRBHDKWLDmNwcsNflBhsVCM+VmiqA9jMAdM
	 VbcNPVScAYCT6GUx3hGC9Y6QbSun38d0DYn5krmMRCYZusTkX3cc79UEbjAtOq+t1K
	 Z7JtY7ERnQbjRM82yelxJyxHCkXxCgBJk1Fa0P3myHCmhs19KLSkM/HZaqhhwL5T1k
	 lk/2BPOW/HwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A258ECFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815335363.31624.5461970907131288214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac47a2ff3572c86f8662f3d0e6c9436c391a6e06717117f7dd0c15785f97b20
Date: Sat, 05 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728153353
