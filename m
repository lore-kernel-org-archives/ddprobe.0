Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0299F2DCF55
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777321054; cv=none; b=pb4KsMKQz+fl5tE6dmpS3m08Mhk19f+Oqv3bl7Sw1e9sYzifCKq6SjH2ipX507Tuwfj7TkK2ezoIx3vm6munBNThzZ/ZW0ZnFamEf6psLiMNyJMpbx+gjRuexPRYCoeKrBEBm8a0lR4EcVeOJaD892GZj7o3Xm4+I4P65TiL9n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777321054; c=relaxed/simple;
	bh=Eg+riXMPsKAcMgu0lw6FRwg1kaG0QP6UkO53HeuBumM=;
	h=To:Subject:From:Message-Id:Date; b=ZX82RgOsBXneY0E9kKVIoJUQqZxH+gDAtR1X3kIBHrLdsMY6SlOnEBF8LHhwB0/MD7sUJgRUytcgfQaL73gDCSm61KYeSAtjjbTg3YalTXuvFTXIHEsbbIdtOM9AY+NhPYeeWZVlk50LdIwgZeM/ZUBAmO6e+CSI+hgIv++TGTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bO/9/HKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bO/9/HKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777321053;
	bh=Eg+riXMPsKAcMgu0lw6FRwg1kaG0QP6UkO53HeuBumM=;
	h=To:Subject:From:Date:From;
	b=bO/9/HKfBBqEZ3TgucZy5DZcuK9mYOFkRylmjKsfx3U1f8cOZ/I5Eiup70nqkXkwD
	 QBm7gl7vGqu0D+GTtmyVoFiQD+t1hv7u0dBI+jAdX8kCrAP9UP7sz7Z8zWLpvTiGzY
	 DaQnjdcDYUN9wMNbMGhvwEaERwiKXmivKxUBWCyzIC0fBXebPv1AI6JqWTbMFd+uJI
	 3gkiSsKicAX7rx4WeO1O0ebKt7RO788Eb3EvaIS86QBsNUj1tDlJVhG1ZlsFCHdUH5
	 5YRYZx84fexYA9ojxSVpvjwszzp8uApLvGhUC6ZF1gUMoDY6D610H1rP4QfSVs/Jl2
	 3GgKp53A3a6Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C0FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732105368.6551.17225258278365001660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e562abfa50c03530f79222f501ad79da57d0502cd4dc3a5257e6ffcccd8af3
Date: Mon, 27 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777321053
