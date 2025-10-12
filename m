Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C72D6E43
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760294994; cv=none; b=AW91jgos+LLFhS5/dVwxZxPYjtL+vZgtT5Jk/62Ha6zMXCWUWgjSzkw09V3GmSEG07zPOT+0Fidn3As3mp6VKezWx7y5bqHflTDjKtHtBcnm4SFozVC1AGeabYSEEQ/kjK3Tv2KdLBQWuzx/oxZixr1Q4DM4bsZJ5jCST3Jf6Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760294994; c=relaxed/simple;
	bh=2jqmJvuhRw9W99D4O9Awjx+osuBtdkbmJ2q+0fR14vs=;
	h=To:Subject:From:Message-Id:Date; b=e5Bl1764IUlwQzCrIzGaE9cPnlGKjgCOpBjB96I8L2iOVX+xuHG3jjgf7GJDGVuc38DnauPWpY49tEFVNLTQ6vFGjCBcLNODHn+stbFqSPAqI+ILfQ4L/etG9tI5TUpY1Z4tb4EOFI6/CVOtbESnfV+rDOEBZ81XU9JAKZrITto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNoQv+zJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNoQv+zJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760294993;
	bh=2jqmJvuhRw9W99D4O9Awjx+osuBtdkbmJ2q+0fR14vs=;
	h=To:Subject:From:Date:From;
	b=RNoQv+zJcZPFyVXinGQwuf3b5JN6fxrbP65xAAXNUoGPkYlwVZh/xJJLbIOi52dDs
	 yqelkOEdytGnY6u5TYtEZSJhfWY4BxL5n15z0AzdhbueT1G9DEnAr/A25NSM83/Apd
	 P3hnrKoCw4Tq9psgdrdeReEp2GWw9ZPrmlS7MNS88bdN+ocSLFTVZwhdVtt3DAHOqZ
	 B+aBxL+tuizeNtvAJWPLj+hn6wMhsl19e1ZulgBqHkAUPpykO/GCeSHyW4SBy+rwRX
	 1NmcEgh5ecy+W8uSvkas4vmayr7DW7Z2uohiIhKMPm3qad2iSGbyBfRhK2j/Vc3U5e
	 jJDy4KAqSjF4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90346CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029499358.29494.6720281831875540522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739f9c37b5029e2f99b98f361a6b3b35e3878295616f2c5be558f14371880d9f
Date: Sun, 12 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760294993
