Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4799615A86D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787068834; cv=none; b=C6FjBxMfsiNVOcCNpnJp7sxsiZZONHccg2X22nj99AsrxHFdQFN43jljY6MaPuwoexmIctqSJq6aSMgj7PQvfcHlSqfZm/fd2H20WI8vbP9NmgpzJINb6kCYLaK2sZdDgLty153/BLekUTdRkGkSMOxXPrZKXKIcLDcA734ruH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787068834; c=relaxed/simple;
	bh=vc63MekWL635YGncQZqQgT25XRBvNfVgRaNODebc6M0=;
	h=To:Subject:From:Message-Id:Date; b=Xh/gE8UE4bJ3oRjkgbHVDf0WoXVmB5gdG0g8PvE2eDjgZb7mHGSrLfnaLnnC/ep/qCeEVL+6V4V8Do3ZL2kiThbtSj7Rour5Ld0t0tiKUnQyIOsSqPPgZYtM4jAflfFk2DWZmRhBxJ2UsEhu9YhNFjAxa5YMS0KDbkE8MRtl0gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwaI7vGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwaI7vGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF073C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787068833;
	bh=vc63MekWL635YGncQZqQgT25XRBvNfVgRaNODebc6M0=;
	h=To:Subject:From:Date:From;
	b=ZwaI7vGJF4z6qrTCWFRbdDqAAn4iuH34uHDYtvxDPXpQM9Bowj8M0LZzu0+MLocdc
	 dqxMS7lBabFSFqIjiQjcJrS9prCCSJEWeOylAwUFqoVlafEDNjoEqZY4UjpSEs8opp
	 QqKTOwzWlVBvGKMpibRTqO9FwlgypV8b7bsfiWlL/gZjkoMBwlf0nz3kSzHILNa76r
	 M64c8+kvNG5W19Gwdwcq8Jv1W7djGUYI81Ry2dCKoHuK4OiV2a/raQlUhLbgEn1bkr
	 iFEEGq+JAcvpKDcHtPXyPoEmDu67+gyZU1xioI85na7uCRkoKWx+b+JzajaRGCXAhi
	 dnojned6vnqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A3C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706883368.24532.16329121241566538762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c0af602d29c75fe99490e455342eda3af39cc991838e500d55a25cda6493e4
Date: Tue, 18 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787068833
