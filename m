Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E5813774D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756588794; cv=none; b=BreW+561/7sjgfKZ32T8tA8p9CrDajAxJAq0X8wvrHLx+t4dK0lXY5Pz2PAmpa1k7xl0y37iNNk5VDP5f5vO8HjhX2W8giv8xmaSlQ4Mqdjqty53SqSiE4zeKmN0BZf2XCho84iwHUCzNhyI6P9pq+yJEzyRqTAqykUSCufd+/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756588794; c=relaxed/simple;
	bh=0JKl6MFnoMeJrmFYqMv/07dlW6QteBPIZTvnuiy/1w0=;
	h=To:Subject:From:Message-Id:Date; b=H+E+evIzcIs+7k6OAH+HViyF3ieyy54a1tUVvzEVpVQNKgIaZOmFLHlQHP1WTr4zwvF62BseyUnsKIJCofPNsChfP/IbzR84+j3PTPCYMdc6fg4RB8ZmToRDIMKpehemm28GbCoHsvEDnbvH9JforcXlMCzVxVn8bfVuB+Uzo0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDWc97XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDWc97XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756588793;
	bh=0JKl6MFnoMeJrmFYqMv/07dlW6QteBPIZTvnuiy/1w0=;
	h=To:Subject:From:Date:From;
	b=rDWc97XL0tHYhNgxRwCx7NCa1tXQpipH1LStPWoLa/t+Uflf8FyUsRtVNLE8DDwBJ
	 JL82hCYLkkXi+AwNXBU/9OgjOP2p9ASzlpwaSH8X6pRt42ffTokxoib9sZ0OqZZolB
	 mcdAuA0V8G7ScDXT8t3XphFmrEeO0qiG8T6/GJ2t4UbRsDNhPThFDqUQsTJ3mvlCM7
	 HxHKXvATirSKCb0Jf3+ZIRMRs/LZHWCaxnk7QI8m2wxWcqK5+n7lzPI4KfI2NXk0/4
	 HeD83jEV5BxPvIVIs5bDzlIXZx7rcZN5HGgWnP3lKiOD43WREJ9z+7skIRO/xNGue1
	 q56FZjPedC7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94326CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658879358.16973.2708524674926986922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809cf8a8580c63b29d8e28799cc00c48fb671a971c730b772c71aa81a0c29422
Date: Sat, 30 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756588793
