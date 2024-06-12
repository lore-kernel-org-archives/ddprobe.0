Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA9B16D4C0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718190503; cv=none; b=XfOsE1culYb9ZF3o249QIOJQkaotJ361kNQNSCPMcicYzc0vkG7YUEA7i5pcmFeTvjid2kjex0Qf6wb6MX/WDSvu/0oMHFURBOGu3t2dxhL9gmikJFoW6OwsajDjCb4D2xG0M/RTjGyL9mOfdYfB450nMMxmlJMgCThotUZoxpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718190503; c=relaxed/simple;
	bh=86qoKlCYwnX3ZF4fAhrLO82joDe6ejcAVkYcxuTvoeI=;
	h=To:Subject:From:Message-Id:Date; b=TyCMvhpUj+xc8tM+JsaSZv352YR9MzGUQgB9L0SCvjCAdLdtGhhsCPmbD7sUj5kFQiqzfi/HMMZm1y3zBUTtbk3cyDNMw8AoDMZphCwYRMyrLih6jEwpbIUn61uH9LTrMaVuws08weZ9nHHozbo7WIAKGmviI6j1eb8ALkvqnH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYvp3U7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYvp3U7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FECC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718190502;
	bh=86qoKlCYwnX3ZF4fAhrLO82joDe6ejcAVkYcxuTvoeI=;
	h=To:Subject:From:Date:From;
	b=mYvp3U7QdT2roonnRmG7vOK5qWZtQv03KEIGhqAKu4AUBQAazCuucOlcnzEe8j0hC
	 d0nzRT4ci1OF4+pivmVSjRvYvju+zQ3ZbG6ZIGul/h5e2Y+qlkPeI3Sn6xs15we0ke
	 9k0f54TFUgHR6VAs4mbsVhmQX+jDZHKLEDhN5MJeLvHmknCufDhnw9TXE9rd2/bFS7
	 dOdyb94BLeLkiE1c2+wy/TkZhltGbUKXK5tf6UQ97zinwRRFIQKsTsSjDBtlt+0vD7
	 VVUH5ExmAZwvw9cIQJG6IvcAKqTQWHVheLukkGpkE1/Ok9V5SDFQRcssivXXKbpcyF
	 udWp3Ju+8uyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9027C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819050281.32763.16423199611938587721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea754ee9172b13a4747dca8b4db9e1d96b0306b776a2832ab4cf564e88d2877
Date: Wed, 12 Jun 2024 11:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718190502
