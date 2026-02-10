Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330F633F390
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716634; cv=none; b=DEa3sKBDwv3mNH1RB4jEo/CATeIQ+f09pxiU7l1p7R7lEjJYA2lF0xTebY/eHW9ME4O1k5tEdXVwQOMF319Ncq0AszzwbmYM/y4ZkrEGHUXsJOdgqHZNFOIDls3OCxFj2HlCiNwzXgZpJLOfrcpD/y0PkbEuxlrFvipkz9vIaDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716634; c=relaxed/simple;
	bh=mg1iYIUYFDxn+WwQSlO8bSKc/8Oix4aBhcKy6nZBkcM=;
	h=To:Subject:From:Message-Id:Date; b=tagrNWna9b2d4qb4EjqVFwKqHMaPXB2hQ6DtlhJSTgpNdwZojZg6DXjbc/cjc/a/DkFJdWJ7zWhtjNQT+tBeLM6iOPBMc5+omb5G5o7BLeuwipHoFrN25OWR3G1OGZB1K+ILZayxD9k68prQ5NDYTrMJYojXRNDyQmCaWr2KYs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdHzZmdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdHzZmdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E02C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770716633;
	bh=mg1iYIUYFDxn+WwQSlO8bSKc/8Oix4aBhcKy6nZBkcM=;
	h=To:Subject:From:Date:From;
	b=sdHzZmdcLmyfe8VPc+PRFtX9Fim9b9OCUhP7rF3NSELo20BHznDlCWFHG52nYOD8y
	 7mFkrr7wlb7WJmwd2HJTzkOQbGxqcLREVISaLUlX2tFr8QDMSTVXci/dROSYcJAnWb
	 0HZ6Yl0ch5nA5jkdIpTaOZZ8HBHOse3yIp+9vWGJoDhIAf6EBrEeHjkiaQWhX28jKO
	 5jetOuSbvANvmSp8RUIqQzXw8QVyPUN7/AEGNB+6kw9v8aZkMA+TPQsIb6SG7ueBgv
	 lxIHjjgadx7JVfCPchV8VmoE3uYl4fhCJQr9bHUyoENR5U2A8XJuXfATj5iueZiX22
	 Ni5cCqxhej7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE2EEA3F2F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071663364.15848.10624493387436065081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9612a968a33ab67cad85ed5a74311e00dac48b1a18975afc96790e818a744f26
Date: Tue, 10 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770716633
