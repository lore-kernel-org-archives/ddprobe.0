Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3B51B85C1
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726526754; cv=none; b=QnoHvzeSVQEAMNrWZXGnFsZMsmQ4q2NHEOe3Drzhvum2vy7miO2ZkEQdpp+NR0XXpmvUdbVueULkULOplmh5elwwFUgv8PyePkl3D1bzniYTuLQXnfTTwveCcdvhV764Uc46jfg7cRQdHBMQqPp8yE4uDvhHMovhUmQb2PM0jvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726526754; c=relaxed/simple;
	bh=1C3V4344eF9FJarBKqdkhau6nZrSCdOOs4KCMJzWbdw=;
	h=To:Subject:From:Message-Id:Date; b=ZyYv/BuOp/oIWHzp91NBC5Zhlfy8D/7Wtp/wgD/E3x6bqfNJ6cahljk8c8fbvOvaI/3N+wBaY8Gs3wpfT077EsKrO+QlZwaUoCUBc1AXNMFBGvMW7Mj6OazYFQyw6ihWX1gwuw1SyxQpF0mDdF2mq5mi62r1RMHZyJHqVxTvRdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZLX8QCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZLX8QCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E9C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726526753;
	bh=1C3V4344eF9FJarBKqdkhau6nZrSCdOOs4KCMJzWbdw=;
	h=To:Subject:From:Date:From;
	b=ZZLX8QCR/+sopR8ZSrK6Lld65fldrkAUJC23FLd5cwleBlv6uPR1Suu0hDgTb7/9G
	 4nwKhcidiqGloTN7Nqw//75H69S97lV0twEozZkciaL3AIm1axfyfnn0M7ZohlaROd
	 D1b2TuCqdT98D62vTqNBltNAAmOmP8FnaOfr9D+KapbkowwxyWhOfrPGlevVSriNPM
	 1E7csTAvt3Xym/Ken/BCpoRmBRssRGInj9/qEtEvduyPJM+tJS2S6/sZCCiJH01ifs
	 OuQJKdXV+joVaKoayc35vEmjGtgeFwHPG/5LMONg/8xfmOXDjyqKpaekXvdKBS6Xdx
	 0doxZxi+esGyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F8C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652675358.27028.17969199445562538174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08e62ad70fc0c54d05d895abb48829c406241c90096876ed45f89206f73ecd0
Date: Mon, 16 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726526753
