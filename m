Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41891DF71
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742087394; cv=none; b=Jo/VwlzzapFCCnqlAuyGJYmjUxZ+ugsTpT7tkYUuKiRsYkKapBFCSnQbN0OWYYSV1AOsgkwaduXvn/mQbV52MiE1AkH6AjsehkXC7EqAGo5qKvL2PuLqoljXDTi715jzhq4YGwaEQ1zXqLltP7mEwGC/WIgvBa4x1hX+noRgTmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742087394; c=relaxed/simple;
	bh=72uJLL1UdIE4baiz4ZT9qaau0VjCWaBJnxv+sLMAOBY=;
	h=To:Subject:From:Message-Id:Date; b=RK9fUtV+RzoMTpnRH3fG++SP9V7lUQ4Du5x2BpGr99zPanEYsfljCBlo9lP0OJFXQ5mjkADTrtCtgO6W2z4wI9Y79lJntIGJhX33QyLbXdBAt6qGox10gQvm0nXWm/L7skkOg4QwYEyfhHddD43w6f4Vl8pzZlCxL29Fe/V3v0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUPXcGF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUPXcGF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E1BC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742087393;
	bh=72uJLL1UdIE4baiz4ZT9qaau0VjCWaBJnxv+sLMAOBY=;
	h=To:Subject:From:Date:From;
	b=bUPXcGF0x+WyLa/XnnWgnMBsd2QQGpQtpFDjf2RpEkEbXoYOICiwJ0p2odcoX9O0M
	 nT87G/FqoFeMaS6MXwhVxNUmKPFum6/SOxkb5L0DOnAyaWJ/98YkX7aBgMtKGaCTyv
	 0ep0i/s9+HdchdbPiSXcMVcFKYdRaP+c/H7kImliDOe0pjQjBcgkNlJLa1E7+JRBoh
	 1JfN9acAr67n7GtYBNqhaBv3GY3pkK0DWssvMuZf1EXNQLIUbY6BnDQBllKw4BxONV
	 N2r20PFiqdnTwKJLWaf8/cDandvscJ+q2FFvrs/ZXRr/rIPN3zTKnu8ir5AkiHnCpT
	 K8+wR4rYTYBDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A316DC28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208739365.18659.12940046256674095124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60d9106a54c138e9c4950d4c713ded8fbee276a6da0bd4c6bf83c71b6f5ee14
Date: Sun, 16 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742087393
