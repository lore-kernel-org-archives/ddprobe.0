Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931F2737E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770048234; cv=none; b=e+HYLivqiNEXdchXRHA790R4zjZugj4FtUKchWvmnA4dnhvuq5U5RK/foeGOijInLtBWwVzayk3iMeo3OnQflKFNZlhWvFt4Yac7XetWLaL0mH0EKXuKadieocfpkqp7zd/b4bPaHfZHS0o38TAtirRVCcqD/BS0rPRd7zLJVRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770048234; c=relaxed/simple;
	bh=HAFZBEEenFOWTTgqKPxcW5r/86XOgvO9HksugITDvAE=;
	h=To:Subject:From:Message-Id:Date; b=a1WDkYVU64cj9Hv5kZ5sHZRXSQJ6UomyejBnkb8Jz+MkovJuBo/8GMxIyzKqm6+AYtGXzJRcUDNXVe+6aRo3xAGEStBUX673njjFZBceBmS3//aS7KCdrDDM2TBt5S9i7kAd1P8Gl0rocrD/FFqhPqAKuoa2Z5QFEoF5Y02LJTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dexPqOn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dexPqOn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD28CC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770048233;
	bh=HAFZBEEenFOWTTgqKPxcW5r/86XOgvO9HksugITDvAE=;
	h=To:Subject:From:Date:From;
	b=dexPqOn6+fQo1G4RS/eskw/pfKP4JjTfu+khZaCbHp+J7to+0vZ7nNkYGnO1KI8HC
	 Fb8BH2QIfYEMNzE16iNZJS71GYnvmWohn7oBmg7VtFTD0jRqzC09u+Ao7xqlVd5zX1
	 S7rlBrMMCd3T8gfRTkeN10L8BBD4yKpTP0/FHrJctSWId8WjBQDrWo048k7Z9o2KJd
	 7tFMWZruOmz2VZ5P1/76qfOZQGHVEj+Q7fdyUyqPy+79G9tkCA2BWfKinT/Wgru6jv
	 CKH/f0/BlziB/BrzDY+J2/p7e0Spz5JThQpWNqdmz/HjpoolEaMKsVScY9qob57SqE
	 RCpq67pv5dTiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAD0E7DEFB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004823362.29660.5844270746974866937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aafcd64d02445586fc3e4a5bacad22f23853e39f41da2b007ec9f550cdd105e
Date: Mon, 02 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770048233
