Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595A1F5821
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741906134; cv=none; b=Bk38AHDiNlv9vecGYcyE3Tw/S8iuUi5i8968rMEPtvoeUyvwxQqw0Gy+sY57XDSufSFTU7A5RWPuiQOURVO1QWXkm/F6YH8tUCqmkQnTi2tsZWKbdP6oLSDUPrti8xqKttA4K15wTq1aHIuSoeCUgU1Oa28Kthg1WWVtAleH8+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741906134; c=relaxed/simple;
	bh=1SV8ynpOwcjvcQ6gXkFpiEWkjQI6XNCpZzpifydOmvo=;
	h=To:Subject:From:Message-Id:Date; b=oxHCAmOPADOdMZguKTMuGgad1A83E7fvtJ/TuJxKdRgE23lvTbxJVtY78I7OteFLXRwEBsBq74iIrEa/LCGFDGQ2FqsePPxS6b4DihGeAQe/3M/WMtdrvKkl/KxOz1uJqb6Dcw5C+SkbEQNX+zgaNmQ7G+bCPABCmg5WLq+LhFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQbhPMCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQbhPMCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D94C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741906133;
	bh=1SV8ynpOwcjvcQ6gXkFpiEWkjQI6XNCpZzpifydOmvo=;
	h=To:Subject:From:Date:From;
	b=gQbhPMCu9tGv+s/th27ULWbdv/qxqcNhqSeJm+lgINC2NgIjdawfhIGLvybdl/lwm
	 gSRQapQbErE58WSyM+adhl9ZNCbpzrt75AofkrtWJ9CW0cKj3QcGAOG/EbwdqNa9RH
	 79bm8GdLEBI965gttdtbhbS1x6v7aSYANmJqI0N15IB2JWuTz1x+UDpgS1IXW+xQmP
	 uplx5VA4YwLkpV+NqKkRHMR1iHcGKrwpvw/950Iap1QEAoMh4Li7eoVhj1x2menuOK
	 VzegLcyBNHyBjpmLMyxV9ClwaKsqZNMu7/kE3lBXht5GcRE+gr7FRbic1l6MARRfiS
	 3ZANud31/inLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE3C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190613360.6689.1840748468234709812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7747fa86af5906dcab237de4c0203e351a10758b6d21a0491e0fc41c04e0b02
Date: Thu, 13 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741906133
