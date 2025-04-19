Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C91C1F94A
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745047794; cv=none; b=XT+bPSqQLtmHGZsOdfUaa35vmNGp3XgbinY2PXLZF7JRM7oZAICjqmgBPjA478b22TtT0Vy3oSkBcBbxQ4bf8JXcOjzr9R+U3rQBNy5IQz4D1+rNwIjbUG8tHDmbrMhYooWnVO7iJuBbT7SRb+DloVrT3z4Jktfjy0Qw63dty2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745047794; c=relaxed/simple;
	bh=85I63xalykeU4jaRwHIv8dCP0hf7KlYk2N6b+9xcbMc=;
	h=To:Subject:From:Message-Id:Date; b=nm51pnrDdhuTm5MMRoVGmm/7iGp8H+dPNc7BaP3j2zCg1rA5gAh5Zlg2PzdmAxyNuXYcj7YK+F0M7Esusov6rKaKjJDE4JZTNwIeyHmVAquPUms5Oua3l7q+r3G2Dd2IFOIbncoElw9MKjrVJb1YWmIqZHJBqpoBg7in2VA6z5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp1dTCRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp1dTCRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADD1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745047793;
	bh=85I63xalykeU4jaRwHIv8dCP0hf7KlYk2N6b+9xcbMc=;
	h=To:Subject:From:Date:From;
	b=Pp1dTCRtOlYyiUU4KvKsjN1TUeEWlYLgUNs0SzZbogQ536vRmnWWuREqffpUrIDhk
	 iXniIBhIvLNFN2oY0zL27zPNg7DZ5WLgJgEfIXAQiglRDHz+s2KjlZYn1c0UC4etko
	 tD5YyqKXAL28XH48OgWwcnwCVgxNibWqNPoffbZuH29T33bI9tt+JNvwsZHULJkI9G
	 +NSR4c5JVEwHPvuE4YRiocfou2KJ4mFtCkYXUmbjgqdgNYqC7Z+9m9ySTcBuZSIaeI
	 6mUZfpa4rwccC7gacXRxoWfHPR29pkc47Z4xeIzCuyZBmWK3fZuqCgHD1sh1r0T79r
	 pFKKig7/fLl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12EC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504779370.300.13731418986000408859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e8f997d8bd42626ea55d820d4d262861391bfc25df709743a3eecef442e013
Date: Sat, 19 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745047793
