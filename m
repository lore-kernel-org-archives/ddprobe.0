Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4B183CA6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750615794; cv=none; b=Gy52ralhHQw0K5vTUMuSOyU8NLC1NW1BM8nbhkyD8NYxe8DRVu44JR47TlNQpdVt/6XBGU3r1V7ZyOC+3jHAuUwVWK92P+hc3et2xGd/NAxPPgzYczgewlYtbTlOR2IdH9qi81XeMcvgUwuwKeCuHufs2fM1LzDkfhcJzyP56yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750615794; c=relaxed/simple;
	bh=pPfZCLpH6wmx+KoKOlZgxRtPRusQl8iZ0MzGtuJUwwQ=;
	h=To:Subject:From:Message-Id:Date; b=h1slcdFlN6o7imgjsaoe0gQjRs7gttvjzTSgAB6dhr56zyp0HiUiCXSgTAVqzrwUi8EI5MK/ebZc24z6RyLlXQaIa6mAaN9aeOXmZ1wbnT3KSBh6/KixvscQqBC5kq+PnRZAC6U+VoGpnz/5eu/c3coqA0G/9O38zWSqpANk+a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdEKSv8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdEKSv8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750615793;
	bh=pPfZCLpH6wmx+KoKOlZgxRtPRusQl8iZ0MzGtuJUwwQ=;
	h=To:Subject:From:Date:From;
	b=HdEKSv8F6/pDMneueYhaeSltFk99OrN3GuXzNkhb6P80TTuT+2WWdm//2ONTFZGjO
	 cRe+gXwHGHS/6L+xXHwDhZvkAqi0dpfSNL5FK8MV2LUizEz8TYuF6hvWhgY6EkSsJX
	 kriUZ2UGVukuwLPIvRz4MFVp2YPG3R/GyalyPWW71dLhYx2QY6YxuKLnJ6pICE0MJm
	 0AuYGOusFwM574+W+WiSxvofK8YY92do4rnA7+2qEYteguNl0jrkFqgb60DWHyL0Qq
	 //B9GoiBK/660WTfJATHDbWG35TQ6k0tvbhJCF7drxmh9RE6/Iic0xYQKWHglMQuEq
	 D2oa071pJQ1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D8C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061579357.16977.17039793273789874365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5615a021f500d58ab38fd524a5ca0a9f27742bd8fd9f5554d6ae6196197be59
Date: Sun, 22 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750615793
