Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B30319992C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769202234; cv=none; b=B5LrQNz/7Vf0ZhYPC6Rr9GaANXXAX9a/Umbn1QWkgC5/nsr87KOHeiwHF4o3AxG22WYmRiUQ/xeK6+sHHwtDT0m3aPe9Co6xA+//Z76i+km6tLBefGI61C/cMWl7Wr1beuEX5Bh2y+zgt/SW8sLrEaCtUlDP1ESwXt4uF56Vy98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769202234; c=relaxed/simple;
	bh=8qOU22W6244sIBBmDiBytIwUiIkzWFcl0lA+5sDc8Lk=;
	h=To:Subject:From:Message-Id:Date; b=ex2cN6dOrT4E2+xr4WLv1qx3UtSafWyO+S2VTie/arGxY+lGqYriR4gy1dK1QKr7i8tnd8EQZZI3IavdSm956aQ2kgqCkL+YDBClC+CZ8qgWpINEosJf65nqIuGY9jExIJVVrIDXez4eH7ZD7NJ36z4FO2GZeERfdSuRprt8Zzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o88Yf0uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o88Yf0uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769202233;
	bh=8qOU22W6244sIBBmDiBytIwUiIkzWFcl0lA+5sDc8Lk=;
	h=To:Subject:From:Date:From;
	b=o88Yf0uz5DOzdCMaKDTX7HMcPF+oHHSj1S2iYaaL5mSPQ8dKVIHfzT7cltAKWfjfW
	 SIlPH6xEHy+b3uNxPr9nEJDuN4kdf/g0OKX5Z0W2Pe+cwV1uVvsHD22b9gH7o/8Ble
	 jqNE05lHpjxQJkdK7IQUeBxYznoMNnTyJoNNYgcu0qUMNmocO1kuR18/31O1NT7224
	 gQ/txVPBe6tXeGCfuVojLSXxXgmnBRkrYIT9J39RqZy+HbF+FcOf3IkmHaC/7gFO0W
	 lff7aCnC3PFs5kq2S7UzWNaZiB5PQ7OU6SH6yGGGYiE17Px/Ajf8ONSL9HzcfzAfTR
	 0DtgE1MoMbQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C4D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920223360.23420.2060170893517558127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b293cdf093e97081523582aff8e8a1b7241f83df87f51484e87e7da7cb64e091
Date: Fri, 23 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769202233
