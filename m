Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E009EEB3
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723257954; cv=none; b=qZE6o+CEwg2+3ZaTvDvIFopStaZ7ztFlj2ohH6f6uHATs/tRAmTBI2feL+3kxXW+9R1PDo9tmsOt7EBfHbhjM3TUPIoDOfQ5UPGHUw/qfN7vxrPoeza7TJR5T8yZF0cqAfo7Fvhtd4tOBu3TEoAHHlULoRiPNfe7TMtpHsFYYJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723257954; c=relaxed/simple;
	bh=hpyiXIu3emj0CWL2mDVqAamKw2Z9ZYo1BSF0Zo5CgdI=;
	h=To:Subject:From:Message-Id:Date; b=G63KPqxkjK5nUEfGkvTGSGtCYNqmlYAwzDqfLrvsR422ERecSRDxyUKHMpTIY3DEx4C4TlQ4MIXFr/3X414jRdVvEe8Y6Fk7n9A93nIzpK0DW6ERv/a6io5KUBDxAWCH/USzxs8mwNS1t0qNo8IATG25xCm7XWiRR3bPx/sZlWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr5sFMV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr5sFMV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32F7C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723257953;
	bh=hpyiXIu3emj0CWL2mDVqAamKw2Z9ZYo1BSF0Zo5CgdI=;
	h=To:Subject:From:Date:From;
	b=Nr5sFMV0XTmBO9tya07q4oLzwlLaI1QNFv/1J9mcaHvoe6b2rpETDdUePVPWKRYcP
	 4LvNHprzwJl36lg8yWDBZBlyYjT+3p7/BoXOr67XkuIXxGBil10u2/8E8Y1atkVF5n
	 t/PQLNlkqfs3T2HvfYzDezcjeNk1gwidLfJXTGaGwRAlipYf8D3L/GwOWdapl0HsCT
	 IpIty0B+Y60rU1rnR5ZWakIBeCGSsiIINE9SVWLBAm+E4Mi4TCSbYnVz1N01KnQB4u
	 YJ6nDJ4aNcrLvx4LLaJdnilTiqhRtMxHn7p68GKIdwhAwpYCdDHvOBGVPT/98pP19j
	 J534Th6nDW7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0A3C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325795361.30835.10158488222025071617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465b843145559456e568a4c92bf54a29506a165b0bb463dc8436bef7f937c5cd
Date: Sat, 10 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723257953
