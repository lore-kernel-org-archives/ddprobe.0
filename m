Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666653F9D5
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717954643; cv=none; b=V2MoY6MKx2M84fzsVUJx8px8ZC/RX6Oh+ffBlBpW1nclgdsIkrrA4N7+MUMSdapKZUkgKGN7PWX9nUBP7uFk1JNscKYZyJuU3fSYScqNWBu3jNLnGUX/zgaGhXKrv2q5/2Otpcy4ciMR66omZ5wSW670B4YfCN3EW2np8YsFxwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717954643; c=relaxed/simple;
	bh=y+mDj3eVWymx/H7hxhFTrw/PqSJebUpymd3tR6sSmuY=;
	h=To:Subject:From:Message-Id:Date; b=YGjPfykMmJ6w0IVsOnKJiZ2S/IPOmzlpyHbp1WWYtrSb6urRNIsuMFqKJ786wvfbRq/E2BJo9lUd93/M2ahWTkAbJ5eG3QUKvcok28tZeGlmdWYl/Wvl57TTwQPQTtjA6ie5LOpkQ4EZQicPDeaIagUtnwDNBEfhMc3pTUrb6MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJWg2lC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJWg2lC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C26C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717954642;
	bh=y+mDj3eVWymx/H7hxhFTrw/PqSJebUpymd3tR6sSmuY=;
	h=To:Subject:From:Date:From;
	b=hJWg2lC/xC+fF9kxvwR2pjMrvcbGpqkxZykms1iojGOj7URH2VZEFDTACOcznc60R
	 nqUA8PlBs5wUTKYBeX0qn1zg0ZwboMV5tegIKZiflZvuFSJmmGjyPmswnwm7ZSDdW0
	 +e2Q39eLOy9A7rU3ev4T8RoWQeOw4eeB0Le/2ZKcukXiG7gLEzvLkBPbp9TQRhYivP
	 NbqWLGs+cHDqR/ZNmhM5rJb4M6ouAxwstLMLrqScEx8yT9nwR+XkcuJa8QkrsL1ha+
	 U7z6I1u8FWvujBm52zfWqBuhZAEVgZAjIlLiitFLiQkOxWrMp9npkRbc8WYIRvl9fb
	 lAU/bIUlLM1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFEEC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795464275.18954.235021122255124553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cae179b9c21fdbf31478911db297cd20060122c11d701eb3d8132fb2584552
Date: Sun, 09 Jun 2024 17:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717954642
