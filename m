Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125B0192B66
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756621794; cv=none; b=RTWNo42v1orN7PS4CRWak32JsKX4Y39cthEIFW2yGam38lDPY1ssfpJNea94wSrCR8QDALRxkBtHyspGRmxcsl/madzeGrtmL+SmRoCAVjmfMcXrEaVcfomqbB+66iBHmS9sH+qCHYaXdr9NeXwu+aawUH9PWHAwCnixKB/wGHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756621794; c=relaxed/simple;
	bh=0b5uqyzrXU/ENTQRzNay5UkKdySgnopWL/YIQWJTjiA=;
	h=To:Subject:From:Message-Id:Date; b=tm+nwu+bH2uX1fMyKu5Uhc/hzANcqlrGDJt7SPvyCFllb/e7LvQnMvnOvcJKkIdMCFadhgm6zC0y8at7fMSwI12KW6lsGhXX6FriEiySXet7g3Sqbl0B945VHnRZuAfElyy1o4xK18uDKzBO3tE8Sliq78U5dFxvnIvrX4PIPJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQ473JTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQ473JTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDBC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756621793;
	bh=0b5uqyzrXU/ENTQRzNay5UkKdySgnopWL/YIQWJTjiA=;
	h=To:Subject:From:Date:From;
	b=XQ473JTZWE55j50vLmpvzugYVdQKQt4CA3Pnhfr5IWL4Ac91il9xlq5TbCCIofZNw
	 DS0MPL9rPPEh9+X8n/TjqLBV+ZfVEAVQ0OsesledWyCvP8KGWpMwle+OZK7Sn8o+vo
	 22kyhm3VVZsSDdoIfULHri/c/VEQT5R3Ri02cSKHVrKhfiOsUw7Iq5XUkClm5V8d+b
	 8CLksfMToQ3su8b58T9BondhHlgMUNvRfGFnUXGoBW42jp9Xwqzh/ng3JiDFGRTMa0
	 LevkmYeAxBY1z4a3D5RuWj+iXschK6KZB/fnLbQ34oi+dt42SeOC9hf+GDyfXdILU2
	 ZIQZRqo9e7fWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153ECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662179357.22864.2283952668159047996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffb6ccf48860aab745077b4f73c0d36b9dd35ef6f4eaec72abac921df28d82f
Date: Sun, 31 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756621793
