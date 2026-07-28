Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6053191D3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785271834; cv=none; b=siCJtIjaq+Csz2G8FmIhD5MmxTbU61BBGuJxtrH9lOm+q5XzoN0ihEZb+wB2oNZLMgL2k7RZnEnWUW8r34voeQztzZhjABVjO2Opb1B6cnUWlzubqteZJjNTQPfxTs0gzLWURYOOb/ZwQwRrmGAZ8PxHmDOFcbms1ZnnhQjCF94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785271834; c=relaxed/simple;
	bh=Nr2ggeVVIQTLNdJ8cS8I1zvAPF9xcr8HuKzfXIXGUXo=;
	h=To:Subject:From:Message-Id:Date; b=ufFL3YS/TCVjG838j7ZmHawaReA0vM0XMP1gnQCkO4lwL2feoRiofYNeXJSyUlZANe8gEc5/SKwo1Aw+bvMaI5opz7HiBmUO0dZLQBFLAdXcHZu9Zer9665vg8j9vVs5CXQNaTPAYQzb72EZFSKEiQYQflszdwwFtZkZfQMfXec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE52JKAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE52JKAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE028C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785271833;
	bh=Nr2ggeVVIQTLNdJ8cS8I1zvAPF9xcr8HuKzfXIXGUXo=;
	h=To:Subject:From:Date:From;
	b=VE52JKAdKMmeaiCvwCQ0Wr+nEfAzalJyOcqU5gzF0Yy+OEhEuxusemHDZI5aF251S
	 g5JkmIa428DZAOGqhPDigrXjTOUgnQ73pX+xnpjQeyha7OKPr0OLSShpiVEOx7n/Bf
	 ipg1SUOOVnq2Ukw0LeickUvXeU5/gWeaUz7VEJK8WF7VprzxTCr4ytja2ExAW2GFQ/
	 S0WsoB8SbBDBpXv2309e5XduLYxHy8JxQ84VtHr3PgyJowIwO1zaIjiId+MZwufe7Q
	 +HtELTjeErWv3PDSviSNcmBi303RdP0wb6J8nwrrH+14P4WZXC6DABtiUMlgdeYqjp
	 nlKjZwCOwzNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB944C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527183369.30553.11987930637408023773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643243322c68caf4847ca8fbc2a77b13f9513a6796d2d9e6504bdc9ec3a633dd
Date: Tue, 28 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785271833
