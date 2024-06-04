Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6879D266A7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717527383; cv=none; b=lUnWEImEpm62i/P8q8cZ/nv3LTT4KJRMWLsJLELdYDw28tC/5uSDWyfotku3mrNJEiCDs0O9M76TAADdtTLbM62RIzA+XeH2zYrU78xvE60LcYzaS/tKB5abXRoIMhvjZV/obUbUfWs89m0XDMWKVDXwD2YdE4XRisUw59+X9c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717527383; c=relaxed/simple;
	bh=XMSILa798fGn9r6uTAFZjYm3GzrBNpCvHHElAUQRyZc=;
	h=To:Subject:From:Message-Id:Date; b=dV6jB6mtjPSCgxnk5K2UvX4YSmWceZQyRyIa4D6IJqU+JfSWRW//GXJEw+EsANTT11xWISUlwCPmwvCBQmrY6/gJ68d8IGkYSamND3KWjt0ZDGUU9zdGp8nkWAXz64Sm1A+c9SN3tp/6QIhsvwtlFe8cplSnXjDmUL/Hdm5O7ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI1w68CS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI1w68CS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9377C32782
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717527382;
	bh=XMSILa798fGn9r6uTAFZjYm3GzrBNpCvHHElAUQRyZc=;
	h=To:Subject:From:Date:From;
	b=rI1w68CSj+TsPejyKm7/V1uKECq2rxb+11mHUur/zlgUK6A2cDbOTLReKEhESZ0h5
	 705AATb15Ue08/BeHK5o35NblMvlcc/rHX6NSlCETz3IDOR7QEeeTCZX1TXHiyruPy
	 saFJ0/ZKOw30EVahdiQTtrbEODgh3DKPyik2wzltQwTwD04l1nynepvfBlE8CfMFW2
	 0GJTk34WrFiRfiHuT9gep3pYrhZ4Cnwi7wmLF/OB3vETY5D0cBML0EbJ4cRhwnCMO7
	 PoVQ0pfJVE2TNvHX+O7dkhRXHP/6ltNkzOLnduEvjwDvlAOREBCLP9FzqbqdQj0bGr
	 hXajkWik957Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2AEEC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752738285.21207.2295351582396896890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019085a7fb731145af6c7063548c35cabb2fcd6e75453f2941215f8f5701c143
Date: Tue, 04 Jun 2024 18:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717527382
