Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383451EEF9
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748962194; cv=none; b=H93GFiIKTSqlxd1RyO3i5H3KxE1dsNyJ1j1LGYMmNDQEuHDqYgQfu7s5GqBItVnn7nxIHg4im9xBFWxLoQ7PzJC680/7DYuM8hWt75aqE0w1hG3XeyUgzaWaQPz2ugukpFCwid6uUmx5CEOmySwdv5iMA9jfU3viJwF9lq5RPRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748962194; c=relaxed/simple;
	bh=feAgDey/wvl46lp16qaWSwCjyYWDG5DHaZDN3xjOw5k=;
	h=To:Subject:From:Message-Id:Date; b=fmyBWkHHnoDUV4zYHFf0wUquHme/NXUPsIfHbJ5t6SDITL0T55hn83mNiW8LNqAKX4agDQ+raeFyYaaAuCL20UfRmvopiXgZScwxXzGX5m/T158H9v0N5wzn9ZzpHB47WnNT5N5OJFa1HhC/mhRJ/0qOXrsCcES/Us6dS/S/Kb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/RxrsU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/RxrsU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D3C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748962193;
	bh=feAgDey/wvl46lp16qaWSwCjyYWDG5DHaZDN3xjOw5k=;
	h=To:Subject:From:Date:From;
	b=O/RxrsU+F+phP6+OHgqCOE4ZgfwTQBkSyR0iPY8iX1fqmSHPf4IPeThcV+1Z2JzkA
	 lj1xy9/0wePC2mv11TDoW4/0buENFX9PR5LOZS2XXbEX6bMBDF8Cjiti/kcw2LGofa
	 gkqc9ITGz0xEH5a8ULKGR7cmq0LsyDNs3ditzP3xk+AylPf9kZIG7kuug7qrRsmcth
	 Y/5AekBOUPVL2fzoMWx4M5CedVBORhUQJzOGzAU0pHOacUb6Nw/15bOjYRt3hM+oEI
	 512Zlmb1iyEusRA5sL3SfMoq/IAZ2tttIwCUXfyeMqNfkAe8FGzWcKxiGVZNJu5Wem
	 uioyyxIzz/R2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DDC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896219357.19946.9561515233053837929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b451e585d4be26dda6275781fbc70098c5c645049b8c87a5e7d9b0fe719318
Date: Tue, 03 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748962193
