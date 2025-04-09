Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC9215A85E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744183794; cv=none; b=FhC317T6bEbq0KITS93xKnAsh+XV9oc/epOTo3KS7VVesBd0yem/xIM6Rf6k6ufv3DA/hNqC8RACx0yU2HGQYDfMIvHwDI52WCgIUoazi+I9gORI3y5t3L6RAuzvAKGUMuk3YLUudjBmPdHonEku2usmORTolrwybrWOQLwEkfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744183794; c=relaxed/simple;
	bh=HAMXdGf3txCfMrs8psnxCjlIre8xMdHMtJrOr14cmsI=;
	h=To:Subject:From:Message-Id:Date; b=QvVLsp60qLlinVI+fF2XaRZ7G7QEe4Y+gat3jU81+xNdA4rVMlabGi/2Gef2vlvviae0Dn+gE2KxEawGuUPa+aun28Y8b3lXgYHO9jg9g5THiKtIJDO5Cn1eTVAAZ4EQC2vzfrz65qOZcGIDDR4g1gkz1cGLXYoh6HT3uYdU/EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOqLonQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOqLonQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744183793;
	bh=HAMXdGf3txCfMrs8psnxCjlIre8xMdHMtJrOr14cmsI=;
	h=To:Subject:From:Date:From;
	b=KOqLonQAWBuFSWAFRXuJ7H8f5sHBD8nJQd+cDLGfr8TgUTIw0pe2k6PmixyhgdddV
	 T9jHdk+gQBtOHNsY15zKeVrWt7zgjNzZglbeR95w45Di51zI7hoWi+OvICTRT0Hnuf
	 2kIp6hBX/f5Zo1nqYdB64cG56PRDu6D+/s2LWujr2xZNg6jlS7k8ZFBjYduANsoOYI
	 jgKaY+eK2xLN5F+a/GpANfrPXMdXEMeJ8KlQPSWkeu3BM1JhqEFx9MVHO+pBDyz+kl
	 UVGcA7hJ5o8v6TMGVY9mCX62QqFVUsUFrAA5sRI082bH4wKbDBM2jADrPvpGe6BZ7e
	 72YMdqYt+UE7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94029C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418379359.7792.17563074281619559604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b8f604a5a52f490b6d635257a1468c78bebbd5481c5833e07643b1a59c47f8
Date: Wed, 09 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744183793
