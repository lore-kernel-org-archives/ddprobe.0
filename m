Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3DA231C91
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789690834; cv=none; b=u/C6JN/1bVZvVHFGJ06UB9o4S9PkNV+hltouSQGSzJnq6ySWxeRGAo0P9yS0DsISAIEL3w/SbR/ijSIKLLeClaNj84fgYnabCQkikt6fHpX9+Q415Te/vANg0Vlp4LQQmkDDCc5BoUAwAmo6ITsbOwChNeLMM1cemAHH0W+3ArM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789690834; c=relaxed/simple;
	bh=giFhhLjAFONFfFoYM0FfDhixJv/y8vTdGmprWpCD1mA=;
	h=To:Subject:From:Message-Id:Date; b=W65C0j2/eUrNoUEutzmjXbnvdCxzfqWno2pX05XBRDngd5cDL7CuBmPbcziR/HQCrtxbX1pljGy5Lubl83sVn0cuDr/+0dZcDNaz2Tf2UMcWew3uLPC1LteaE3Uwjfc35WLiSifOd07emsAjNJUjLKjN4sltTU/Rej3y973rHaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEOsz2/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEOsz2/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25445C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789690834;
	bh=giFhhLjAFONFfFoYM0FfDhixJv/y8vTdGmprWpCD1mA=;
	h=To:Subject:From:Date:From;
	b=YEOsz2/HTnAIHrsgOxuwo154TMBk1pq/F5xCmGdfx/6Ya0p9Mjrwr45i71N1wsAfz
	 CJqEXEGlxzm17rl/BpysM9wkAGnORkitN6176Amac3jzdJA2zfd6j+E2mJ6FFXeHp2
	 L8mnPmF6ZwPAe68uZFhvbiPl1VyDP60DvS29+ImJWg+YrxDiDViJ95bsO85mGhfPSC
	 hp0B+nQCS7YO99moXAzyF+mR/RbXUBlEhJjwLNPN52kAp8u5AQTTD9waG3wnCV5Ues
	 i5f8cbh3i7mxqEsyft+PJ4SZlYeLRpri+DTARfiB7VRxMpaJ0WraQWIM7gFqhPot+R
	 O3RqpWlYW8izw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD51C982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969083382.14575.2917900207251773447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c76a8c2a418eadf7f3c10b5ddab45f2b54b66710a6aa65833f13a46f90d83c
Date: Fri, 18 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789690833
