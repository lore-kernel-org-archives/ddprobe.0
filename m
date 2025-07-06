Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC56749C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751842194; cv=none; b=usKvCtEOPC7WZhxcG8YdudCkuwEuZpiGc610ihALeHbI6nNeqS2aZ+xy5wj+wUtm0h+YWFG27/t1pabbrgaAZ4bOIlFYJC3SXPUg7XWXqqUe8ikXxgglK08C87nG4E2Yx9vz99ettm2Xcv6Ubu856Ne3F18arehTebD5apx9tjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751842194; c=relaxed/simple;
	bh=LvEp8nRfNbNvaumH9+YIpmtjULNJULiKIEP0zpd1GUo=;
	h=To:Subject:From:Message-Id:Date; b=FsZokZ0WLO0hiSWN5wFTUbLWbm1M9XuWyCTj7pvzLgzH7mJ8onNGKjPuLxV5/OD7gcpEcyrFsgKhj8GyaWPWRrhh9ZP9ZiI15iQ5jsashwAN3i0G0xjfSpc85m+6DXEfHjREEEid93uBKambh8Z8PCF+nE0469PxlCPL1V+drPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqEmyieT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqEmyieT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751842193;
	bh=LvEp8nRfNbNvaumH9+YIpmtjULNJULiKIEP0zpd1GUo=;
	h=To:Subject:From:Date:From;
	b=bqEmyieThEBeI6dhkvirVOe+wAv5sSygudvAa9HR1eA8TWuuiF/vclJK3cDvgxXcc
	 ppqV9oan8/4zdP8hafKiR34A402V35EN7CyJHIW0tnidBFIpO6AXKVLUMHBQyId38n
	 hOjqIpkPgkfoMBbr8Hfd7so6Tf44OapX61KtqEAoNe9+kZX0hXUnSwO8Xv44qBxtVe
	 niz2d815ZE0N8VcjjBHv7ArO/PTtNndhCe4HgPOK7hjDQeIDubmZeb1bZ9dNUkT1OH
	 oR+xIXBzkbMlbO6whHbwJZjgKWRIDM1UAa+z9FMk+YXRKWO3ihpHu1ydX+faYl9B5+
	 Zrzs6Cmm+Cc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A7C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184219357.18367.348974619540992805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1173e26b931c19f7fb227c9e005092a26909f4d8e451b9f8b4ce9edecf74ed2f
Date: Sun, 06 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751842193
