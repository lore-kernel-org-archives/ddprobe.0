Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A725EFBF
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744074594; cv=none; b=SGOA33TvIiLQZnnL5FS+k70zEjI0ah/NR8yUpg2IDs2jHeasIDVSDQK1jADch0V08bJqh6nEwJWdETTacKMm9FAfS/U/JCP7GkKd4xIDRNuOanlYgrdCWHZAbTcPgpx4X9maz2VMDFS+3FS5SpHfuxZH7dZMgd27NT9eoDnz9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744074594; c=relaxed/simple;
	bh=s0piT/6FMA6RmXMy52k3E5ChUkHzzrLxwzSweTr6Zkc=;
	h=To:Subject:From:Message-Id:Date; b=jHUNT47EdE4Yo4uwchXlFDUbaOuWA9AqI29X61ic2Hu5zbJDOKXXKdkCBh+3lp5nfVBN6CsgsVjO2gpyJEetC9Tm/Zo98PnXWKUt2Yi0uJ+w3CQHQG2x4bnxXkcwgtFi0McEZNXc7v5EJgqqU15eKrZxo4EKhzEF5qYMmF9l4wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXDB6FB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXDB6FB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF005C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744074593;
	bh=s0piT/6FMA6RmXMy52k3E5ChUkHzzrLxwzSweTr6Zkc=;
	h=To:Subject:From:Date:From;
	b=fXDB6FB6bEmxqkFKEkGoV+FiaRZOtAP2GYrR9pBH9HPhckhIqWLEibEl3gS1wn1kU
	 osV5XXj4JCuBWtSunrO/j4cuwHwD3CwxBZJCIaC+flllREERoR5LWNSZr8qQhFbyND
	 29tAqybdLWM8MFAXr4/MK58vC2V3yV3koWqyvq/X4IRFjxXzHvbacef9uHfYOR5owT
	 4OeJdYQ4JKSsVxjKevM6EW6rAuFMPzQzYx84KoXARUT2kKjyA0ZxpeNLGlfEXwz7Dy
	 TiH2M6ODgceJN7sgxjq8lxY8jrcPP9sqlmApVCMMIfWni37O074AHsJ3yi24nepnEK
	 TtaM/4m/c/asA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9E4C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407459361.6910.4340274161954476007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcf9341bfa43bf61b404b49a86fbee56bbef7b90b370f6c306333d7e33d1a8b
Date: Tue, 08 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744074593
