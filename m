Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411382F7455
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756980594; cv=none; b=YFCYUxHTwgpYqvcx2/UJIOGuYfuPpovmjmT7M6u6uPBGQsQgr1psXYn/H1oE2O2QMojD4hq+bQZTf40U5tLyLoIaju+epjXQKlmQW7sxJwG/VCTApKsVHP0uPs3cz1zNZgOlUvTwhqhDafr/zi4aMNQFodLXmIX3IZYju+dq8hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756980594; c=relaxed/simple;
	bh=Sw/L3L0NOdtf8tAknLm656wjiEU2j83nKLwlzUWv3EI=;
	h=To:Subject:From:Message-Id:Date; b=Jkh3YaDyyTIF5lkAqCN9lmcvPdk62culFePDRM24queml0+s26DRMpoCyCC4P9bXHr1e/pMvtmKMueqlCkSsFfmF7p9Y9hdemR7jEJ7lU3DvMLwxD+ByZkb6tm46cc1IU+Fa607rTFpyYH7W/m9F1UWzW+AmP2E9uqan7q0h9EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFgJDuAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFgJDuAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3001C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756980593;
	bh=Sw/L3L0NOdtf8tAknLm656wjiEU2j83nKLwlzUWv3EI=;
	h=To:Subject:From:Date:From;
	b=MFgJDuAkRXzHTmfr9KUG1bAzN4CIkFMPCEKkpmTrGSaU2l5m47EjGGrLnj5QMiVi2
	 khE8W6s+6R7SW1Yz1FdolgYpNYPAQJjSsWxxGgzyrIu1CGZ9kPD6SNKchXoGgLqYSQ
	 3PnCp6l14Y852kqM5y75FsYvrsIGIG+iinJs2zURcZ6oXjTfr5VqYovVfnx6nofd6G
	 isN6yE6Obmuz0YHdEX6Fa2znbOONhnFRqM5XmR5K/DN1TgXKWqK7koMOJg6YDvOCOv
	 tcIoycSozZH0lK4e2s9t0dWuNBRvsVwuClssOoFA32wIUBYViSMXnErbBbAam29Nyg
	 j88EuWZVJuMrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42BCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698059357.18025.4290112512608575871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e36611f3a71de494cb901ad1b8a11f3ec43a76119525207ca08753c2ed29c1
Date: Thu, 04 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756980593
